.class final enum Lcom/google/android/youtube/core/player/MediaActionHelper$Action$2;
.super Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/player/af;)V

    return-void
.end method


# virtual methods
.method final execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 5
    .parameter

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->b(Lcom/google/android/youtube/core/player/MediaActionHelper;)Lcom/google/android/youtube/core/player/aj;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(Lcom/google/android/youtube/core/player/MediaActionHelper;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/aj;->a(D)V

    .line 78
    return-void
.end method

.method final isRepeatable()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
