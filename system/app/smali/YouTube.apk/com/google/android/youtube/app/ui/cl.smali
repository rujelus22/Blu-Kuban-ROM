.class final Lcom/google/android/youtube/app/ui/cl;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field private final b:Lcom/google/android/youtube/core/model/Playlist;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/ch;Lcom/google/android/youtube/core/model/Playlist;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/ch;

    .line 452
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/ch;->b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 453
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cl;->b:Lcom/google/android/youtube/core/model/Playlist;

    .line 454
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->e(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->f(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cl;->b:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 459
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 446
    const-string v0, "Error adding video to playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->c:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cl;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    const v2, 0x7f0a0177

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/cl;->b:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;Ljava/lang/String;)V

    return-void
.end method
