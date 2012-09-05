.class Lcom/sec/android/widgetapp/service/YstockRemoteService$6$1;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$6;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$6;)V
    .registers 2
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$1;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$6$1;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$6;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService$6;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    const/4 v2, -0x1

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->broadcastErrorReport(I)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$700(Lcom/sec/android/widgetapp/service/YstockRemoteService;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 649
    :goto_8
    return-void

    .line 644
    :catch_9
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8
.end method
