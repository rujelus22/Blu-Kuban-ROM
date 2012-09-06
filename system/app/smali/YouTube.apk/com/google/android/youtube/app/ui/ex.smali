.class final Lcom/google/android/youtube/app/ui/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ev;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ev;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ex;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 216
    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get disco results for ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 216
    check-cast p2, Lcom/google/android/youtube/core/async/Optional;

    invoke-interface {p2}, Lcom/google/android/youtube/core/async/Optional;->get()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ex;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/ev;->a(Lcom/google/android/youtube/app/ui/ev;Lcom/google/android/youtube/core/model/MusicVideo;)Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ex;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ev;->d(Lcom/google/android/youtube/app/ui/ev;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ex;->a:Lcom/google/android/youtube/app/ui/ev;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->artistId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/ev;->a(Lcom/google/android/youtube/app/ui/ev;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
