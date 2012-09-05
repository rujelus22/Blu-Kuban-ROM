.class Lcom/sec/android/app/music/CorePlayerService$10;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 8
    .parameter "focusChange"

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1334
    packed-switch p1, :pswitch_data_b2

    .line 1369
    :pswitch_8
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_20
    :goto_20
    return-void

    .line 1336
    :pswitch_21
    const-string v0, "CorePlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$2202(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    goto :goto_20

    .line 1344
    :pswitch_3b
    const-string v0, "CorePlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2202(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 1350
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2202(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 1355
    :cond_76
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2202(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    goto :goto_20

    .line 1361
    :pswitch_89
    const-string v0, "CorePlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$2200(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$2202(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->startAndFadeIn()V
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$2300(Lcom/sec/android/app/music/CorePlayerService;)V

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$10;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setEq()V
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$1700(Lcom/sec/android/app/music/CorePlayerService;)V

    goto/16 :goto_20

    .line 1334
    nop

    :pswitch_data_b2
    .packed-switch -0x3
        :pswitch_3b
        :pswitch_3b
        :pswitch_21
        :pswitch_8
        :pswitch_89
    .end packed-switch
.end method
