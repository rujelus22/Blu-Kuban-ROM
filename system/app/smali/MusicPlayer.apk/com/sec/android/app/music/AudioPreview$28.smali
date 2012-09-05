.class Lcom/sec/android/app/music/AudioPreview$28;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newposition:D

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4360
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 4371
    if-eqz p3, :cond_27

    .line 4377
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4378
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v0, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->newposition:D

    .line 4380
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-wide v1, p0, Lcom/sec/android/app/music/AudioPreview$28;->newposition:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->setPosition(I)Z

    .line 4381
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-wide v1, p0, Lcom/sec/android/app/music/AudioPreview$28;->newposition:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayedTime(I)V

    .line 4385
    :cond_27
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v0, v0, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-nez v0, :cond_7

    .line 4397
    :goto_6
    return-void

    .line 4394
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsStartTrackingProgressBar:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->access$2702(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4395
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsStartTrackingProgressBar:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->access$2702(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4403
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$28;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4413
    return-void
.end method
