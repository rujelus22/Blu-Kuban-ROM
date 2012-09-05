.class Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Lcom/lifevibes/trimapp/widget/DoubleSeekBar$OnDoubleSeekBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleSeekBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method private constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    return-void
.end method


# virtual methods
.method public onHandleChanged(IIZ)V
    .registers 6
    .parameter "handleCode"
    .parameter "timeMillis"
    .parameter "makeThumbnail"

    .prologue
    const/4 v1, 0x2

    .line 929
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #setter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailOffset:I
    invoke-static {v0, p2}, Lcom/lifevibes/trimapp/Trim;->access$1302(Lcom/lifevibes/trimapp/Trim;I)I

    .line 931
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1400(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare;->getTrimmingStatus()I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 938
    :cond_12
    :goto_12
    return-void

    .line 935
    :cond_13
    if-eqz p3, :cond_12

    .line 936
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/Trim;->startThumbnailTask(I)V

    goto :goto_12
.end method

.method public onLongPressed(I)V
    .registers 5
    .parameter "handleCode"

    .prologue
    .line 899
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->clearAllImageViewFromLinear()V

    .line 900
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$700(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 901
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIvThumbnailsZoom:[Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$800(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addImageViewToLinear(Landroid/view/View;)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 903
    :cond_26
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$900(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_41

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$900(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_41

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$900(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_47

    .line 906
    :cond_41
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v2, 0x3

    #setter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$902(Lcom/lifevibes/trimapp/Trim;I)I

    .line 908
    :cond_47
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/Trim;->startThumbnailTask(I)V

    .line 909
    return-void
.end method

.method public onLongReleased(I)V
    .registers 5
    .parameter "handleCode"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->clearAllImageViewFromLinear()V

    .line 914
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$700(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 915
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIvThumbnails:[Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1000(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->addImageViewToLinear(Landroid/view/View;)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 918
    :cond_26
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1100(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1100(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    move-result-object v1

    iget v1, v1, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_43

    .line 919
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1100(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    .line 921
    :cond_43
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/16 v2, -0x9

    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$1272(Lcom/lifevibes/trimapp/Trim;I)I

    .line 922
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$900(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_59

    .line 923
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v2, 0x4

    #setter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$902(Lcom/lifevibes/trimapp/Trim;I)I

    .line 925
    :cond_59
    return-void
.end method

.method public onProgressChanged(IZ)V
    .registers 4
    .parameter "timeMillis"
    .parameter "fromUser"

    .prologue
    .line 948
    if-nez p2, :cond_3

    .line 955
    :goto_2
    return-void

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_2
.end method

.method public onStartTrackingTouch()V
    .registers 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, 0x1

    #setter for: Lcom/lifevibes/trimapp/Trim;->mDragging:Z
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$1502(Lcom/lifevibes/trimapp/Trim;Z)Z

    .line 943
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    return-void
.end method

.method public onStopTrackingTouch()V
    .registers 3

    .prologue
    .line 959
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, 0x0

    #setter for: Lcom/lifevibes/trimapp/Trim;->mDragging:Z
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$1502(Lcom/lifevibes/trimapp/Trim;Z)Z

    .line 960
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->setVideoProgress()I
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1700(Lcom/lifevibes/trimapp/Trim;)I

    .line 961
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$DoubleSeekBarListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 962
    return-void
.end method
