.class final Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatefulAlphaAnimation"
.end annotation


# instance fields
.field private mCurrentAlpha:F

.field private final mFromAlpha:F

.field private final mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 604
    iput p1, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mFromAlpha:F

    .line 605
    iput p2, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mToAlpha:F

    .line 606
    iget v0, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mFromAlpha:F

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mCurrentAlpha:F

    .line 607
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 611
    iget v0, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mFromAlpha:F

    iget v1, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mToAlpha:F

    iget v2, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mFromAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mCurrentAlpha:F

    .line 612
    iget v0, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mCurrentAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 613
    return-void
.end method

.method public getCurrentAlpha()F
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->mCurrentAlpha:F

    return v0
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method
