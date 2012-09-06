.class final Lcom/google/android/youtube/core/player/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/MediaActionHelper;

.field final synthetic b:Lcom/google/android/youtube/core/player/TvControlsView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/TvControlsView;Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ay;->b:Lcom/google/android/youtube/core/player/TvControlsView;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/ay;->a:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ay;->a:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/MediaActionHelper;->a(I)V

    .line 114
    return-void
.end method
