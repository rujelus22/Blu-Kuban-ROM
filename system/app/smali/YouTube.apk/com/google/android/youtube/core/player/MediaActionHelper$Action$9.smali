.class final enum Lcom/google/android/youtube/core/player/MediaActionHelper$Action$9;
.super Lcom/google/android/youtube/core/player/MediaActionHelper$Action;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/player/af;)V

    return-void
.end method


# virtual methods
.method final execute(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    const-string v0, "Scrolling is not handled here"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 120
    return-void
.end method
