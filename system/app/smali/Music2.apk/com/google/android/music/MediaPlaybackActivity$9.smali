.class Lcom/google/android/music/MediaPlaybackActivity$9;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->animateContractorAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$fadeIn:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$up:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/animation/AlphaAnimation;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$up:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 1363
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1365
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 1366
    .local v1, params:[I
    const/4 v4, 0x6

    iget-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$up:Z

    if-eqz v2, :cond_5d

    move v2, v3

    :goto_17
    aput v2, v1, v4

    .line 1367
    const/16 v4, 0xa

    iget-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$up:Z

    if-eqz v2, :cond_61

    const/4 v2, -0x1

    :goto_20
    aput v2, v1, v4

    .line 1368
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-boolean v4, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$up:Z

    if-eqz v4, :cond_36

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v3}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    :cond_36
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1372
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1373
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$up:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1374
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1375
    return-void

    .line 1366
    :cond_5d
    const v2, 0x7f100017

    goto :goto_17

    :cond_61
    move v2, v3

    .line 1367
    goto :goto_20
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1376
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1377
    return-void
.end method
