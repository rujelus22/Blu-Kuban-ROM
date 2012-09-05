.class Lcom/google/android/music/MediaPlaybackActivity$8;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->animatePlayControlTransition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$fadeIn:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$left:Z

.field final synthetic val$playControls:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;Landroid/view/animation/AlphaAnimation;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$left:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$playControls:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7
    .parameter "animation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1338
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$left:Z

    if-eqz v1, :cond_3c

    move v1, v2

    :goto_e
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1339
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v4, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$left:Z

    if-eqz v4, :cond_3e

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1340
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$playControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1342
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$left:Z

    if-eqz v1, :cond_40

    const v1, 0x7f10002a

    :goto_32
    aput v1, v2, v3

    .line 1344
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$playControls:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->val$fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1345
    return-void

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3c
    move v1, v3

    .line 1338
    goto :goto_e

    :cond_3e
    move v2, v3

    .line 1339
    goto :goto_1b

    .line 1342
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_40
    const v1, 0x7f100016

    goto :goto_32
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1346
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1347
    return-void
.end method
