.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;->forceHide()V
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
    .line 570
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 578
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 580
    .local v0, subTitle:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 581
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateLayout(Z)V

    .line 582
    :cond_14
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 575
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 572
    return-void
.end method
