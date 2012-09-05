.class public Lcom/sec/android/widgetapp/service/YstockRemoteService;
.super Landroid/app/Service;
.source "YstockRemoteService.java"


# instance fields
.field final METHOD_INDEXINFO:I

.field final RETURN_NETWORK_CONNECTION_ERROR:I

.field final RETURN_NOT_FOUND:I

.field final RETURN_UNEXPECTED_ERROR_OCCURED:I

.field private final mBinder:Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field mHandler:Landroid/os/Handler;

.field mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field final mPeriodArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x6

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 36
    iput v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->METHOD_INDEXINFO:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->RETURN_NOT_FOUND:I

    .line 38
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->RETURN_NETWORK_CONNECTION_ERROR:I

    .line 39
    const/4 v0, -0x3

    iput v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->RETURN_UNEXPECTED_ERROR_OCCURED:I

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "5d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3m"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "6m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mPeriodArray:[Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$1;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mBinder:Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;

    return-void
.end method

.method private SerchList2Map(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v4, map:Ljava/util/Map;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, lStockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4a

    .line 260
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 261
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 264
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    :cond_4a
    const-string v5, "lStockList"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-object v4
.end method

.method private StockInfo2Map(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v1, map:Ljava/util/Map;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 493
    .local v0, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    const-string v2, "strName"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v2, "strVolume"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v2, "strPrice"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v2, "strChange"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v2, "strChg_Per"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v2, "strDayHigh"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v2, "strDayLow"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v2, "strExchange"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v2, "strPrev_Close"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v2, "strOpen"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v2, "strYear_High"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v2, "strYear_Low"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-object v1
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestStockInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/service/YstockRemoteService;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->graphData2Map(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->currency2Map(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestStockChart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestCurrency(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestCurrencyChart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestIndexInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestIndexChart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/service/YstockRemoteService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->broadcastErrorReport(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->SerchList2Map(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/service/YstockRemoteService;Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->StockInfo2Map(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private broadcastErrorReport(I)V
    .registers 5
    .parameter "nErrorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 139
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 141
    iget-object v2, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    invoke-interface {v2, p1}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;->errorReport(I)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 143
    :cond_17
    iget-object v2, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 144
    return-void
.end method

.method private currency2Map(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 975
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 976
    .local v1, map:Ljava/util/Map;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 978
    .local v0, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    const-string v2, "strName"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v2, "strPrice"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v2, "strChange"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string v2, "strChg_Per"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v2, "strDayHigh"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string v2, "strDayLow"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string v2, "strPrev_Close"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v2, "strOpen"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v2, "strYear_High"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v2, "strYear_Low"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    return-object v1
.end method

.method private graphData2Map(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .parameter "graphData"
    .parameter "period"

    .prologue
    .line 841
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 842
    .local v4, map:Ljava/util/Map;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v3, lStockChart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v5

    if-ge v2, v5, :cond_d8

    .line 847
    invoke-virtual {p1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v1

    .line 848
    .local v1, gData:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    iget-object v5, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mPeriodArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mPeriodArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 850
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetClose()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, data:Ljava/lang/String;
    :goto_7e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 854
    .end local v0           #data:Ljava/lang/String;
    :cond_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetClose()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #data:Ljava/lang/String;
    goto :goto_7e

    .line 859
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #gData:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    :cond_d8
    const-string v5, "lStockChart"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    return-object v4
.end method

.method private requestCurrency(Ljava/lang/String;)V
    .registers 9
    .parameter "strCurrency"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 866
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCurrency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 868
    .local v1, strSymbols:[Ljava/lang/String;
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, defSymbol:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v2, v1, v0, v3, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    .line 971
    return-void
.end method

.method private requestCurrencyChart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "strSymbol"
    .parameter "strRange"

    .prologue
    .line 621
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCurrencyChart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v1, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 727
    return-void
.end method

.method private requestIndexChart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "strSymbol"
    .parameter "strRange"

    .prologue
    .line 731
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestIndexChart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v1, Lcom/sec/android/widgetapp/service/YstockRemoteService$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$7;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 837
    return-void
.end method

.method private requestIndexInfo(Ljava/lang/String;)V
    .registers 6
    .parameter "strSymbol"

    .prologue
    const/4 v3, 0x0

    .line 380
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 381
    .local v0, strSymbolList:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    .line 486
    return-void
.end method

.method private requestSearch(Ljava/lang/String;)V
    .registers 4
    .parameter "strStock"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v1, Lcom/sec/android/widgetapp/service/YstockRemoteService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$2;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 252
    return-void
.end method

.method private requestStockChart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "strSymbol"
    .parameter "strRange"

    .prologue
    .line 511
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStockChart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v1, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 617
    return-void
.end method

.method private requestStockInfo(Ljava/lang/String;)V
    .registers 6
    .parameter "strSymbol"

    .prologue
    const/4 v3, 0x0

    .line 270
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 271
    .local v0, strSymbolList:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$3;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    .line 376
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 64
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 65
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 69
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 71
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 73
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 77
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mBinder:Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 46
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 54
    iget-object v0, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 55
    iput-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 56
    iput-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->RemoveAllThread()V

    .line 58
    return-void
.end method
