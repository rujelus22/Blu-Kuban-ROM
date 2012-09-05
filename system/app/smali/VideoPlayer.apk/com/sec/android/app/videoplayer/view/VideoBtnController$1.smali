.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hide()V
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
    .line 497
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x4

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 507
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 509
    .local v0, subTitle:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setVisibility(I)V

    .line 531
    if-eqz v0, :cond_a6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateLayout(Z)V

    .line 533
    .end local v0           #subTitle:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :cond_a6
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 502
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 499
    return-void
.end method
