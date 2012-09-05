.class Lcom/samsung/dmp/layout/DMPAudioActivity$13;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHideBubble:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$13$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$13$1;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity$13;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->mHideBubble:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 12
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/16 v7, 0x578

    .line 1419
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1420
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1421
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1422
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1423
    const/16 v2, 0xf

    if-ne p2, v2, :cond_8d

    .line 1424
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 1431
    :goto_29
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1432
    if-eqz p3, :cond_3d

    .line 1433
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1435
    :cond_3d
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1436
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsVolumeBubbleRunable:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3700(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5a

    .line 1437
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1439
    :cond_5a
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsVolumeBubbleRunable:Z
    invoke-static {v2, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3702(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1441
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1442
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1443
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1444
    return-void

    .line 1425
    :cond_8d
    if-nez p2, :cond_99

    .line 1426
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0xa

    add-int/2addr v1, v2

    goto :goto_29

    .line 1428
    :cond_99
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    goto :goto_29
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 7
    .parameter "seekBar"

    .prologue
    .line 1447
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1448
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1449
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1450
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 1451
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1452
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-ne v2, v3, :cond_43

    .line 1453
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1457
    :goto_39
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1458
    return-void

    .line 1455
    :cond_43
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    goto :goto_39
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1462
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1463
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x578

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1464
    return-void
.end method
