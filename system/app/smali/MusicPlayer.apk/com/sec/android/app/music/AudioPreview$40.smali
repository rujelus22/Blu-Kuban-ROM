.class Lcom/sec/android/app/music/AudioPreview$40;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 5481
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 7
    .parameter "mp"

    .prologue
    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    .line 5484
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mLibraryMediaPlayerCompletionListener:onCompletion() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5487
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestLayout()V

    .line 5488
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 5489
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v1, 0x11080

    iput v1, v0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5491
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 5492
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5494
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 5495
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 5498
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5499
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 5501
    :cond_62
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 5502
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5504
    :cond_73
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v0, v0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_86

    .line 5505
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5516
    :goto_85
    return-void

    .line 5507
    :cond_86
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$40;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_85
.end method
