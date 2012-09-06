.class Lcom/google/android/music/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/animator/AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mCancelled:Z

    return-void
.end method

.method private isToVisible(Lcom/google/android/music/animator/Animator;)Z
    .registers 4
    .parameter "animation"

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/google/android/music/animator/Animator;->getValueTo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public onAnimationEnd(Lcom/google/android/music/animator/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mCancelled:Z

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity$2;->isToVisible(Lcom/google/android/music/animator/Animator;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 545
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$100(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 547
    :cond_14
    return-void
.end method

.method public onAnimationRepeat(Lcom/google/android/music/animator/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 541
    return-void
.end method

.method public onAnimationStart(Lcom/google/android/music/animator/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->mCancelled:Z

    .line 536
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity$2;->isToVisible(Lcom/google/android/music/animator/Animator;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 537
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$2;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$100(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 539
    :cond_13
    return-void
.end method
