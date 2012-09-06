.class public final Lcom/google/android/youtube/app/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/bn;


# instance fields
.field private final a:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .registers 4
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v0, :cond_1a

    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Lcom/google/android/youtube/app/b/a/e;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_12

    .line 31
    new-instance v0, Lcom/google/android/youtube/app/b/a/i;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/b/a/i;-><init>(Lcom/google/android/youtube/app/b/a/e;)V

    .line 38
    :goto_11
    return-object v0

    .line 34
    :cond_12
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot create ProxyPlayer because MediaServer is null"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1a
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    goto :goto_11
.end method
