.class final Lcom/google/android/youtube/core/player/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/p;)V
    .registers 2
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 859
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->d(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayErrorGData"

    iget-object v2, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/p;->c(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading video [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 859
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/r;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
