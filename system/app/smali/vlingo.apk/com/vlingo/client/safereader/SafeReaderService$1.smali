.class Lcom/vlingo/client/safereader/SafeReaderService$1;
.super Lcom/vlingo/client/safereader/ISafeReaderService$Stub;
.source "SafeReaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/SafeReaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderService;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    invoke-direct {p0}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V
    .registers 5
    .parameter "listener"
    .parameter "id"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 380
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/vlingo/client/safereader/SafeReaderService$1$16;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Lcom/vlingo/client/core/tts/ITTSListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    :cond_12
    return-void
.end method

.method public cancelReadback(Z)V
    .registers 4
    .parameter "clearQueued"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 229
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$10;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$10;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    :cond_12
    return-void
.end method

.method public getCurrentMessageContext()Lcom/vlingo/client/safereader/MessageContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getCurrentMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v0

    return-object v0
.end method

.method public isSafeReaderEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v0

    return v0
.end method

.method public pause(I)V
    .registers 4
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 146
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$5;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$5;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :cond_12
    return-void
.end method

.method public reloadOnboardTTS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$9;

    invoke-direct {v1, p0}, Lcom/vlingo/client/safereader/SafeReaderService$1$9;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_12
    return-void
.end method

.method public removeNotificationWithID(I)V
    .registers 2
    .parameter "notificationID"

    .prologue
    .line 371
    invoke-static {p1}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->removeNotificationWithID(I)V

    .line 372
    return-void
.end method

.method public removeTTSListener(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 390
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$17;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$17;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_12
    return-void
.end method

.method public resume(I)V
    .registers 4
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 159
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$6;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$6;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_12
    return-void
.end method

.method public setBluetoothConnected(Z)V
    .registers 4
    .parameter "isConnected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 358
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$15;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$15;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :cond_12
    return-void
.end method

.method public setFeature(IZ)V
    .registers 5
    .parameter "feature"
    .parameter "onOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 241
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/vlingo/client/safereader/SafeReaderService$1$11;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_12
    return-void
.end method

.method public setIntFeature(II)V
    .registers 5
    .parameter "feature"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 285
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/vlingo/client/safereader/SafeReaderService$1$12;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :cond_12
    return-void
.end method

.method public setLanguage(I)V
    .registers 4
    .parameter "lang"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 298
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$13;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$13;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_12
    return-void
.end method

.method public setVoice(I)V
    .registers 4
    .parameter "voice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 342
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$14;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$14;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    :cond_12
    return-void
.end method

.method public skipCurrentlyPlayingItem()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 136
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/safereader/SafeReaderService$1$4;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_12
    return-void
.end method

.method public speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "demand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 204
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$8;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$8;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :cond_12
    return-void
.end method

.method public speakCompoundRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "demands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$7;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$7;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;[Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_12
    return-void
.end method

.method public start(Z)V
    .registers 4
    .parameter "speakAnnouncement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$1;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_12
    return-void
.end method

.method public stop(Z)V
    .registers 4
    .parameter "speakAnnouncement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 109
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$2;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/safereader/SafeReaderService$1$2;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_12
    return-void
.end method

.method public stopPlayback()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 126
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderService$1$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/safereader/SafeReaderService$1$3;-><init>(Lcom/vlingo/client/safereader/SafeReaderService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_12
    return-void
.end method
