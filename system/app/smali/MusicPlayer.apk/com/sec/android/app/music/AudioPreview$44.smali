.class Lcom/sec/android/app/music/AudioPreview$44;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 6215
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

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

    .line 6220
    packed-switch p1, :pswitch_data_b4

    .line 6254
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

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

    .line 6256
    :cond_22
    :goto_22
    return-void

    .line 6222
    :pswitch_23
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6224
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$5802(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 6225
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto :goto_22

    .line 6230
    :pswitch_3f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6232
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 6233
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6234
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/music/AudioPreview;->access$5802(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 6236
    :cond_62
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 6237
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 6238
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/music/AudioPreview;->access$5802(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 6241
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6242
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/music/AudioPreview;->access$5802(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 6243
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto :goto_22

    .line 6247
    :pswitch_8f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$5800(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6249
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$5802(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 6250
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$44;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->startAndFadeIn()V
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$5900(Lcom/sec/android/app/music/AudioPreview;)V

    goto/16 :goto_22

    .line 6220
    :pswitch_data_b4
    .packed-switch -0x3
        :pswitch_3f
        :pswitch_3f
        :pswitch_23
        :pswitch_8
        :pswitch_8f
    .end packed-switch
.end method
