.class Lcom/sec/android/widgetapp/service/YstockRemoteService$2$4;
.super Ljava/lang/Object;
.source "YstockRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteService$2;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/YstockRemoteService$2;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$2$4;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 238
    :try_start_0
    const-string v1, ""

    const-string v2, "RETURN_UNEXPECTED_ERROR_OCCURED"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/sec/android/widgetapp/service/YstockRemoteService$2$4;->this$1:Lcom/sec/android/widgetapp/service/YstockRemoteService$2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/service/YstockRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/YstockRemoteService;

    const/4 v2, -0x3

    #calls: Lcom/sec/android/widgetapp/service/YstockRemoteService;->broadcastErrorReport(I)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/service/YstockRemoteService;->access$700(Lcom/sec/android/widgetapp/service/YstockRemoteService;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 246
    :goto_f
    return-void

    .line 241
    :catch_10
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method
