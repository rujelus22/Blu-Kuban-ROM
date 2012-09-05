.class Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;
.super Ljava/lang/Object;
.source "VideoSubTitleSyncCtrl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

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
    .line 190
    if-eqz p3, :cond_a

    .line 191
    const-wide/16 v0, 0x1f4

    add-int/lit8 v2, p2, -0x3c

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    .line 195
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .parameter "seekBar"

    .prologue
    .line 182
    const-string v0, "VideoSubTitleSyncCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSyncProgressBar onStartTrackingTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    .line 184
    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    const/4 v3, 0x3

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateSubtitleSync(J)V

    .line 178
    return-void
.end method
