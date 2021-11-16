# joinquant
## doc
- [API](https://www.joinquant.com/help/api/help#name:api)
- [常用API笔记](https://blog.csdn.net/ILYPL/article/details/73518793?spm=1001.2101.3001.6650.14&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-14.no_search_link&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-14.no_search_link)

## video
- [官方视频](https://www.joinquant.com/view/community/detail/18ea26ad5b40a63a750bb299269e10df)

## 本地环境搭建
- [本地环境搭建](https://blog.csdn.net/mmsam0901/article/details/104364810)

## 网格交易
- [网格交易详解](https://blog.csdn.net/weixin_39609770/article/details/111017578?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_utm_term~default-4.no_search_link&spm=1001.2101.3001.4242.3)

## 基本概念
```
#总持仓数量
g.amount = context.portfolio.positions[security].total_amount

#起始资金
g.cash =context.portfolio.starting_cash


#基准价格
bottom_price = g.price

#持仓平均成本
g.cost = context.portfolio.positions[security].avg_cost

#可使用的现金
cash = context.portfolio.available_cash

#获取当前价格
current_price = get_current_tick(security, dt=None, df=False).current

#总持仓数量
amount = g.amount

#目前持仓金额
current_value = current_price*amount

#资金分成20份
unit_value = g.cash/20

#如果持仓下跌10%止损
if g.cost >0 and (g.cost-current_price)/g.cost >=0.10:
    order_target(security, 0)
    return
```

## 常用API



## demo
- [网格交易策略-年化30%+](https://www.joinquant.com/view/community/detail/27cb1befd3e68d197410da65825e3449)
- [单股票的网格交易1.0](https://www.joinquant.com/post/28547)

- 单股票的网格交易1.0
- 初始化 https://www.joinquant.com/post/28547

```
import numpy as np
import pandas as pd
from pandas import Series
from jqdata import *
import time

def initialize(context):
    # 设定沪深300作为基准(同股票为基准）
    set_benchmark('000300.XSHG')
    #set_benchmark('300145.XSHE')
    # 开启动态复权模式(真实价格)
    set_option('use_real_price', True)
    # 输出内容到日志 log.info()
    log.info('初始函数开始运行且全局只运行一次')
    # 过滤掉order系列API产生的比error级别低的log
    # log.set_level('order', 'error')

    ### 股票相关设定 ###
    # 股票类每笔交易时的手续费是：买入时佣金万分之三，卖出时佣金万分之三加千分之一印花税, 每笔交易佣金最低扣5块钱
    set_order_cost(OrderCost(close_tax=0.001, open_commission=0.0003, close_commission=0.0003, min_commission=5), type='stock')
    ## 运行函数（reference_security为运行时间的参考标的；传入的标的只做种类区分，因此传入'000300.XSHG'或'510300.XSHG'是一样的）
    # 开盘前运行
    run_daily(before_market_open, time='before_open', reference_security='000300.XSHG')
    # 开盘时运行
    run_daily(market_open, time='every_bar', reference_security='000300.XSHG')
    # 收盘后运行
    run_daily(after_market_close, time='after_close', reference_security='000300.XSHG')
    #初始化，第一次交易的标志
    g.first = 0
```

- before_market_open

```
def before_market_open(context):
    # 输出运行时间
    log.info('函数运行时间(before_market_open)：'+str(context.current_dt.time()))

    # 要操作的股票：（g.为全局变量）
    g.security = '002918.XSHE.'
    g.initial = '2015-01-05'
    #每天交易一次的标志
    g.count = 0
```

- setup_position
```
def setup_position(context,security,bench,status):
    #基准价格
    bottom_price = g.price

    if bottom_price == 0:
        return

    #持仓平均成本
    g.cost = context.portfolio.positions[security].avg_cost
    print("g.cost%s"%g.cost)
    #可使用的现金
    cash = context.portfolio.available_cash

    print("cash:%s"%cash,"g_price:%s"%g.price)
    #获取当前价格
    current_price = get_current_tick(security, dt=None, df=False).current
    #总持仓数量
    amount = g.amount
    #目前持仓金额
    current_value = current_price*amount
    #资金分成20份
    unit_value = g.cash/20
    #如果持仓下跌10%止损
    if g.cost >0 and (g.cost-current_price)/g.cost >=0.06:
        order_target(security, 0)
        return

    print("unit_value:%s" % unit_value)
    #计算目前价格差
    returns = (current_price-bottom_price)/bottom_price

    #打印需要的数据
    if g.count == 0:
        print("b_P:%s"%bottom_price)
        print("c_p:%s"%current_price,"current_value:%s"%current_value,"amount:%s"%amount)
        print(".........")

    g.count = 0
    #print(type(returns),type(bottom_price))

    #卖出
    if (status == 'short') and (g.count == 0):
        # 价格差大于5%
        if returns > bench and current_value > 6*unit_value:
            order_target_value(security,6*unit_value)
        # 价格差大于10%
        if returns > 2*bench and current_value > 3*unit_value:
            order_target_value(security,3*unit_value)
        # 价格差大于15%
        if returns > 3*bench and current_value >1*unit_value :
            order_target_value(security,1*unit_value)
        # 价格差大于20%
        if returns > 4*bench and current_value >0:
            order_target_value(security,0)
        #结束本日交易标志
        g.count=1

        if g.count==0:
            print("returns:%s"%returns,bench,amount,status)
            print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")

    # 买入
    if (status == 'long') and (cash >0) and (g.count ==0):

        # 价格差小于-4%,仓位小于20%
        if returns < bench and current_value < 4*unit_value:
            order_target_value(security,4*unit_value)
        # 价格差小于-8%,仓位小于35%
        if returns < 2* bench and current_value < 7*unit_value:
            order_target_value(security,7*unit_value)
        # 价格差小于-12%,仓位小于45%
        if returns < 3* bench and current_value <9*unit_value :
            order_target_value(security,9*unit_value)
        # 价格差小于-16%,仓位小于50%
        if returns < 4* bench and current_value < 10*unit_value:
            order_target_value(security,10*unit_value)
                g.count = 1

        if g.count==0:
            print("returns:%s"%returns,bench,amount,status)
            print("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
        print("____________________________________")

    return True
```

- market_open

```
def market_open(context):
    log.info('函数运行时间(market_open):'+str(context.current_dt.time()))
    security = g.security
    #第一次交易数量
    g.num = 1100
    #总持仓数量
    g.amount = context.portfolio.positions[security].total_amount
    #起始资金
    g.cash =context.portfolio.starting_cash

    #第一次买入
    if g.first ==0 :
        g.orders=order(security,g.num-100)
        g.price = g.orders.price
        g.first = 1
        print("g.price:%s"%g.price)

    #全部卖出后，突破5日均线后买入
    if g.amount == 0:
        close_data = attribute_history(security, 5, '1d', ['close'])
        # 取得过去五天的平均价格
        MA5 = close_data['close'].mean()
        # 取得上一时间点价格
        now_price = close_data['close'][-1]

        # 如果上一时间点价格高出五天平均价5%, 则全仓买入
        if now_price > 1.05*MA5 :
            # 用所有 cash 买入股票
            g.orders=order(security, g.num)
            g.price = g.orders.price
            # 记录这次买入
            log.info("Buying %s" % (security))

    #网格运算
    y=setup_position(context,security,0.05,'short')
    x=setup_position(context,security,-0.04,'long')
    #空仓步长：5%，10%，15%，20%

    #print("x=%s" %(x))
    #print("y=%s" %(y))

```

- after_market_close

```
def after_market_close(context):
    log.info(str('函数运行时间(after_market_close):'+str(context.current_dt.time())))
    #得到当天所有成交记录
    trades = get_trades()
    for _trade in trades.values():
        log.info('成交记录：'+str(_trade))
        log.info('一天结束')
        log.info('##############################################################')
```
