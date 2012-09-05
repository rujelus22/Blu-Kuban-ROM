.class Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

.field final synthetic val$graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

.field final synthetic val$period:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$5;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

    iput-object p2, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->val$graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    iput-object p3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->val$period:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 551
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 552
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_37

    .line 556
    :try_start_d
    const-string v3, ""

    const-string v4, "StockChartArrived"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    iget-object v4, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v5, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->val$graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    iget-object v6, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->val$period:Ljava/lang/String;

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->graphData2Map(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$1000(Lcom/sec/android/widgetapp/service/YstockRemoteService;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;->StockChartArrived(Ljava/util/Map;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2f} :catch_32

    .line 552
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 559
    :catch_32
    move-exception v1

    .line 561
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f

    .line 564
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_37
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$5;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 565
    return-void
.end method
