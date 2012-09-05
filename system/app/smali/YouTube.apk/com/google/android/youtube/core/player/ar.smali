.class final Lcom/google/android/youtube/core/player/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/av;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/aq;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/aq;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ar;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .registers 6
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ar;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    .line 242
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->u()Lcom/google/android/youtube/core/d;

    move-result-object v1

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ar;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->b(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/youtube/core/player/d;

    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->n()I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->o()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/ar;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/utils/i;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/youtube/core/player/d;-><init>(IILcom/google/android/youtube/core/utils/i;)V

    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    goto :goto_2f
.end method
