.class Lcom/sec/android/widgetapp/service/YstockRemoteService$5;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestStockChart(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/YstockRemoteService;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter "methodName"
    .parameter "resultCode"
    .parameter "param"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 517
    if-nez p2, :cond_37

    .line 519
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    move-object v1, p3

    check-cast v1, [Ljava/lang/Object;

    .local v1, params:[Ljava/lang/Object;
    move-object v0, p4

    .line 520
    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 521
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/String;

    .line 523
    .local v2, period:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v3

    if-nez v3, :cond_24

    .line 525
    :cond_17
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$1;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$5;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .end local v1           #params:[Ljava/lang/Object;
    .end local v2           #period:Ljava/lang/String;
    :cond_23
    :goto_23
    return-void

    .line 545
    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .restart local v1       #params:[Ljava/lang/Object;
    .restart local v2       #period:Ljava/lang/String;
    :cond_24
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 547
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$2;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$5;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 570
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .end local v1           #params:[Ljava/lang/Object;
    .end local v2           #period:Ljava/lang/String;
    .restart local p3
    :cond_37
    if-ne p2, v3, :cond_4c

    .line 572
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 574
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$3;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$5;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 594
    :cond_4c
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 596
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$5;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$5$4;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$5;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23
.end method