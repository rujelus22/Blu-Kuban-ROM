.class Lcom/sec/android/widgetapp/service/YstockRemoteService$4;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestIndexInfo(Ljava/lang/String;)V
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
    .line 382
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "methodName"
    .parameter "resultCode"
    .parameter "param"
    .parameter "result"

    .prologue
    .line 386
    if-nez p2, :cond_33

    move-object v0, p4

    .line 388
    check-cast v0, Ljava/util/ArrayList;

    .line 389
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    .line 391
    :cond_d
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1f

    .line 393
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$1;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_1f
    :goto_1f
    return-void

    .line 413
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_20
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1f

    .line 415
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$2;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$4;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    .line 439
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_33
    const/4 v1, 0x1

    if-ne p2, v1, :cond_49

    .line 441
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1f

    .line 443
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$3;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    .line 463
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1f

    .line 465
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$4;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$4$4;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f
.end method
