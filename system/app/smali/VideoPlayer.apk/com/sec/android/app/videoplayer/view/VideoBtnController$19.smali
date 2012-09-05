.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 2052
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 11
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 2068
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 2070
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v1

    .line 2071
    .local v1, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v2

    .line 2073
    .local v2, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 2074
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x46

    add-int/2addr v2, v4

    .line 2076
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v4

    invoke-virtual {v4, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 2077
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 2078
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 2080
    if-eqz p3, :cond_95

    .line 2081
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2082
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v4, "audioParam;curDevice"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2083
    .local v3, isMusicHPH:Ljava/lang/String;
    const-string v4, "HPH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    const-string v4, "HS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2085
    :cond_66
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I

    move-result v4

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_7a

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v4

    if-lt p2, v4, :cond_7a

    .line 2092
    :cond_7a
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I
    invoke-static {v4, p2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4602(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I

    .line 2094
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2095
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 2096
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 2099
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #isMusicHPH:Ljava/lang/String;
    :cond_95
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v4

    const v5, 0x36ee80

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 2100
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x2

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 2062
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/16 v1, 0xb

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 2063
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 2064
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 2065
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 2055
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 2056
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 2057
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 2058
    return-void
.end method
