.class Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;
.super Ljava/lang/Object;
.source "VideoTitleController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoTitleController;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x4

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$200(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$300(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$400(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$500(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$600(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$700(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    :cond_4e
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 524
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 520
    return-void
.end method
