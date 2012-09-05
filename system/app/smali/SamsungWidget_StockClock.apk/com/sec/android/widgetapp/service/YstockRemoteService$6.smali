.class Lcom/sec/android/widgetapp/service/YstockRemoteService$6;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestCurrencyChart(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 623
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

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

    .line 627
    if-nez p2, :cond_37

    .line 629
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    move-object v1, p3

    check-cast v1, [Ljava/lang/Object;

    .local v1, params:[Ljava/lang/Object;
    move-object v0, p4

    .line 630
    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 631
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/String;

    .line 633
    .local v2, period:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v3

    if-nez v3, :cond_24

    .line 635
    :cond_17
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$1;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$6;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .end local v1           #params:[Ljava/lang/Object;
    .end local v2           #period:Ljava/lang/String;
    :cond_23
    :goto_23
    return-void

    .line 655
    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .restart local v1       #params:[Ljava/lang/Object;
    .restart local v2       #period:Ljava/lang/String;
    :cond_24
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 657
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$2;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$6;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 680
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .end local v1           #params:[Ljava/lang/Object;
    .end local v2           #period:Ljava/lang/String;
    .restart local p3
    :cond_37
    if-ne p2, v3, :cond_4c

    .line 682
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 684
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$3;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$6;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 704
    :cond_4c
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 706
    iget-object v3, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v3, v3, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$4;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$6;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23
.end method
