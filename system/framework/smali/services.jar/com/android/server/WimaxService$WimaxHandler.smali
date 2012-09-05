.class Lcom/android/server/WimaxService$WimaxHandler;
.super Landroid/os/Handler;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WimaxHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method public constructor <init>(Lcom/android/server/WimaxService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    .line 1256
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1257
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1261
    const-string v2, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+ Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_78

    .line 1282
    :goto_1f
    return-void

    .line 1264
    :pswitch_20
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    iget-object v3, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->getEnableLog()Z
    invoke-static {v3}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;)Z

    move-result v3

    #setter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v2, v3}, Lcom/android/server/WimaxService;->access$402(Lcom/android/server/WimaxService;Z)Z

    .line 1265
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v3}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->setEnableLog(Z)V

    .line 1266
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$400(Lcom/android/server/WimaxService;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "WimaxService"

    const-string v3, "MESSAGE_ENABLE_WIMAX >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_49
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_50

    move v0, v1

    :cond_50
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z
    invoke-static {v2, v1, v0, v3}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;ZZI)Z

    goto :goto_1f

    .line 1272
    :pswitch_56
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_6b

    :goto_5c
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;ZZI)Z

    .line 1273
    iget-object v0, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    goto :goto_1f

    :cond_6b
    move v1, v0

    .line 1272
    goto :goto_5c

    .line 1276
    :pswitch_6d
    iget-object v0, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto :goto_1f

    .line 1262
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_20
        :pswitch_56
        :pswitch_6d
    .end packed-switch
.end method
