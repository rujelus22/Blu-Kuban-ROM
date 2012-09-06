.class final Lcom/google/android/youtube/core/player/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/MediaActionHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->c(Lcom/google/android/youtube/core/player/MediaActionHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 261
    return-void
.end method
