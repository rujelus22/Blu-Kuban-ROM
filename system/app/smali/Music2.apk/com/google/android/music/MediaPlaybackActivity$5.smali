.class Lcom/google/android/music/MediaPlaybackActivity$5;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->animateProgressBarMove(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$fadeIn:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$target:Landroid/view/View;

.field final synthetic val$up:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;Landroid/view/animation/AlphaAnimation;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$up:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$target:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1233
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$500(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/SizableTrackSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 1235
    .local v0, params:[I
    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$up:Z

    if-eqz v1, :cond_3c

    .line 1236
    const v1, 0x7f10001c

    aput v1, v0, v3

    .line 1237
    const v1, 0x7f10001d

    aput v1, v0, v2

    .line 1242
    :goto_20
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$target:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1243
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$500(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;

    move-result-object v3

    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$up:Z

    if-eqz v1, :cond_44

    const/16 v1, 0xff

    :goto_31
    invoke-virtual {v3, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbAlpha(I)V

    .line 1244
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$target:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1245
    return-void

    .line 1239
    :cond_3c
    const v1, 0x7f100016

    aput v1, v0, v3

    .line 1240
    aput v2, v0, v2

    goto :goto_20

    :cond_44
    move v1, v2

    .line 1243
    goto :goto_31
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1246
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1247
    return-void
.end method
