.class final enum Lcom/google/android/youtube/core/player/MediaActionHelper$Action$4;
.super Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/player/af;)V

    return-void
.end method


# virtual methods
.method final execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->b(Lcom/google/android/youtube/core/player/MediaActionHelper;)Lcom/google/android/youtube/core/player/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/aj;->c()V

    .line 90
    return-void
.end method
