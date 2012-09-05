.class Lcom/google/android/music/MediaPlaybackActivity$7;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->animateFadeTrackInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$fadeIn:Landroid/view/animation/Animation;

.field final synthetic val$inTarget:Landroid/view/View;

.field final synthetic val$outTarget:Landroid/view/View;

.field final synthetic val$showExpanded:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;Landroid/view/View;ZLandroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-object p2, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$outTarget:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$showExpanded:Z

    iput-object p4, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$inTarget:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7
    .parameter "animation"

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$outTarget:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$600(Lcom/google/android/music/MediaPlaybackActivity;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$showExpanded:Z

    if-eqz v1, :cond_2d

    .line 1309
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$inTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1311
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$500(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/SizableTrackSeekBar;->getTop()I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1314
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2d
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$inTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->val$fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1315
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1316
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1304
    return-void
.end method
