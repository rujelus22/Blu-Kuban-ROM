.class final Lcom/google/android/youtube/core/player/s;
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
    .line 871
    iput-object p1, p0, Lcom/google/android/youtube/core/player/s;->a:Lcom/google/android/youtube/core/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 871
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading video streams [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/s;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 871
    check-cast p2, Lcom/google/android/youtube/core/model/u;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/s;->a:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/model/u;)V

    return-void
.end method
