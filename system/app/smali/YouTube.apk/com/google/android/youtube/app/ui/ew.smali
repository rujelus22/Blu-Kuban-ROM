.class final Lcom/google/android/youtube/app/ui/ew;
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
    .line 193
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ew;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ew;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ev;->a(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 193
    check-cast p2, Lcom/google/android/youtube/core/model/ArtistBundle;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ew;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ev;->a(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p2, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ew;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ev;->c(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/player/Director;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ew;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/ev;->b(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/google/android/youtube/core/async/a/b;->a(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/a/a;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/async/a/a;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_17
.end method
