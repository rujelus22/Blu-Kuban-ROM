.class Lcom/syncmldstmo/DSService$1;
.super Landroid/os/Handler;
.source "DSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/DSService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/DSService;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/DSService;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/syncmldstmo/DSService$1;->this$0:Lcom/syncmldstmo/DSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_88

    .line 166
    :goto_a
    sget-object v1, Lcom/syncmldstmo/DSService;->smldsApnHandler:Landroid/os/Handler;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    :goto_11
    return-void

    .line 127
    :pswitch_12
    const-string v1, "EVENT_DATA_STATE_CHANGED"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 128
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    if-nez v1, :cond_21

    .line 130
    const-string v1, "mConnectivityListener is null"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 134
    :cond_21
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 135
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_2f

    .line 137
    const-string v1, "info is null"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 141
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.getType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_56

    .line 144
    const-string v1, "info.getType() is not TYPE_MOBILE_HIPRI!!"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 148
    :cond_56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 150
    :cond_6c
    const-string v1, "info is not connected"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 154
    :cond_72
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/DSService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v1, v2, v3}, Lcom/syncmldstmo/DSService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 158
    .end local v0           #info:Landroid/net/NetworkInfo;
    :pswitch_7d
    const-string v1, "EVENT_CONTINUE_DS_CONNECTIVITY"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 159
    const/16 v1, 0x23

    invoke-static {v1, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 124
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_12
        :pswitch_7d
    .end packed-switch
.end method
