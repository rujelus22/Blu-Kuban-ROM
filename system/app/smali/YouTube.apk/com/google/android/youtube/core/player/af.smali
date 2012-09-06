.class final Lcom/google/android/youtube/core/player/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

.field final synthetic c:Lcom/google/android/youtube/core/player/MediaActionHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/MediaActionHelper;ZLcom/google/android/youtube/core/player/MediaActionHelper$Action;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/youtube/core/player/af;->c:Lcom/google/android/youtube/core/player/MediaActionHelper;

    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/af;->a:Z

    iput-object p3, p0, Lcom/google/android/youtube/core/player/af;->b:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/af;->a:Z

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/player/af;->c:Lcom/google/android/youtube/core/player/MediaActionHelper;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->b:Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Lcom/google/android/youtube/core/player/MediaActionHelper;Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 251
    :cond_b
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    return-void
.end method
