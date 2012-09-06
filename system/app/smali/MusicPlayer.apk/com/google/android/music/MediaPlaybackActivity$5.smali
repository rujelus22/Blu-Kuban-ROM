.class Lcom/google/android/music/MediaPlaybackActivity$5;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$fadeIn:Z

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-object p2, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$target:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$fadeIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$fadeIn:Z

    if-nez v0, :cond_a

    .line 833
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$target:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_a
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 836
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$5;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    return-void
.end method
