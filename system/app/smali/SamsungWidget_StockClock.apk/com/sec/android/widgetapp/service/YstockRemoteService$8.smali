.class Lcom/sec/android/widgetapp/service/YstockRemoteService$8;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService;->requestCurrency(Ljava/lang/String;)V
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
    .line 871
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

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
    .line 874
    if-nez p2, :cond_2d

    move-object v0, p4

    .line 877
    check-cast v0, Ljava/util/ArrayList;

    .line 878
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1a

    .line 880
    :cond_d
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$1;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_19
    :goto_19
    return-void

    .line 900
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_19

    .line 902
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$2;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$8;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 925
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_2d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_43

    .line 927
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_19

    .line 929
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$3;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 949
    :cond_43
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_19

    .line 951
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$8;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteService$8$4;-><init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19
.end method
