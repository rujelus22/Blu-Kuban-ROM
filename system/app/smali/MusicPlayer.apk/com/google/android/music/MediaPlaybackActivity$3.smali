.class Lcom/google/android/music/MediaPlaybackActivity$3;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->startLightsAnimation(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$target:Landroid/view/View;

.field final synthetic val$turnOn:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->val$turnOn:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 584
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 585
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->val$turnOn:Z

    if-eqz v0, :cond_f

    .line 586
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;
    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$202(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$LightsState;)Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 591
    :goto_e
    return-void

    .line 588
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->val$target:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->OFF:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;
    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$202(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$LightsState;)Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    goto :goto_e
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 592
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->val$turnOn:Z

    if-eqz v0, :cond_a

    .line 580
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    :cond_a
    return-void
.end method
