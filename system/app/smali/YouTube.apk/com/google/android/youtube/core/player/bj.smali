.class final Lcom/google/android/youtube/core/player/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/bn;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/bi;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/bi;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bj;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .registers 6
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bj;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/google/android/youtube/core/player/f;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bj;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->p()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bj;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/c;->q()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/bj;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/utils/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/f;-><init>(IILcom/google/android/youtube/core/utils/k;)V

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    goto :goto_2b
.end method
