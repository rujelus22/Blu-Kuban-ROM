.class final Lcom/google/android/youtube/core/player/aw;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/TvControllerOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/TvControllerOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aw;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c()V

    .line 95
    :cond_d
    return-void
.end method
