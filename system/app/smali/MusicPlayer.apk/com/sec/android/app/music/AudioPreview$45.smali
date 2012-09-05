.class Lcom/sec/android/app/music/AudioPreview$45;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 3
    .parameter

    .prologue
    .line 6275
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6276
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x14

    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 6280
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mMediaplayerHandler:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6281
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_be

    .line 6318
    :goto_24
    return-void

    .line 6283
    :sswitch_25
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 6284
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    .line 6285
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 6286
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    .line 6287
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_24

    .line 6289
    :cond_49
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$2000(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    .line 6290
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_75

    .line 6291
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6296
    :goto_69
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    goto :goto_24

    .line 6293
    :cond_75
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1900(Lcom/sec/android/app/music/AudioPreview;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    .line 6294
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mStartFromFadeIn:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/music/AudioPreview;->access$6002(Lcom/sec/android/app/music/AudioPreview;Z)Z

    goto :goto_69

    .line 6300
    :sswitch_83
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview$45;->mCurrentVolume:F

    .line 6301
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_24

    .line 6305
    :sswitch_91
    invoke-static {}, Lcom/sec/android/app/music/AudioPreview;->access$6104()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_b7

    .line 6306
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 6307
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6309
    :cond_ad
    invoke-static {v4}, Lcom/sec/android/app/music/AudioPreview;->access$6102(I)I

    .line 6310
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto/16 :goto_24

    .line 6312
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$45;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto/16 :goto_24

    .line 6281
    :sswitch_data_be
    .sparse-switch
        0x4 -> :sswitch_25
        0xe -> :sswitch_83
        0x3e8 -> :sswitch_91
    .end sparse-switch
.end method
