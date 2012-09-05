.class Lcom/google/android/music/MediaPlaybackActivity$4;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/animation/AlphaAnimation;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-boolean p2, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$show:Z

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$show:Z

    if-nez v0, :cond_e

    .line 1189
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1191
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v1

    monitor-enter v1

    .line 1192
    :try_start_15
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-ne v0, v2, :cond_2c

    .line 1193
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1195
    :cond_2c
    monitor-exit v1

    .line 1196
    return-void

    .line 1195
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1198
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$show:Z

    if-eqz v0, :cond_e

    .line 1183
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    :cond_e
    return-void
.end method
