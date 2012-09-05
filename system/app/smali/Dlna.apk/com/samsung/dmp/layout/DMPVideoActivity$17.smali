.class Lcom/samsung/dmp/layout/DMPVideoActivity$17;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHideBubble:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1870
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$17$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$17$1;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity$17;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->mHideBubble:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 12
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const v4, 0x7f020112

    const/16 v7, 0x578

    .line 1816
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1818
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1819
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1820
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1822
    const/16 v2, 0xf

    if-ne p2, v2, :cond_99

    .line 1823
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 1824
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1832
    :goto_35
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1834
    if-eqz p3, :cond_49

    .line 1835
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1837
    :cond_49
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1839
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsVolumeBubbleRunable:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_66

    .line 1840
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1842
    :cond_66
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsVolumeBubbleRunable:Z
    invoke-static {v2, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 1844
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1845
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1846
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1847
    return-void

    .line 1825
    :cond_99
    if-nez p2, :cond_b1

    .line 1826
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0xa

    add-int/2addr v1, v2

    .line 1827
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200fa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_35

    .line 1829
    :cond_b1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 1830
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_35
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 7
    .parameter "seekBar"

    .prologue
    .line 1850
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1851
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1852
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1853
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 1854
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1856
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-ne v2, v3, :cond_43

    .line 1857
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1861
    :goto_39
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1862
    return-void

    .line 1859
    :cond_43
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    goto :goto_39
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1866
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1867
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x578

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1868
    return-void
.end method
