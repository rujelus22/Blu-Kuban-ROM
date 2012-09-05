.class final Lcom/google/android/youtube/app/ui/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 239
    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get disco results for artist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->c(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->g(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/ui/a;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/app/ui/a;->b(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->h(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/ui/a;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/app/ui/a;->b(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->i(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/ui/l;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 239
    check-cast p2, Lcom/google/android/youtube/core/model/ArtistBundle;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p2, Lcom/google/android/youtube/core/model/ArtistBundle;->artist:Lcom/google/android/youtube/core/model/Artist;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Artist;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/MusicVideo;->artistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1c
    const-string v0, "got stale result for artist disco, ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dp;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Lcom/google/android/youtube/core/model/ArtistBundle;)V

    goto :goto_21
.end method
