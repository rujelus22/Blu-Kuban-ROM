.class final Lcom/google/android/youtube/app/ui/dr;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field private final b:Lcom/google/android/youtube/core/model/Playlist;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/dm;Lcom/google/android/youtube/core/model/Playlist;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    .line 643
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 644
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/dr;->b:Lcom/google/android/youtube/core/model/Playlist;

    .line 645
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dr;->b:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 650
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 637
    const-string v0, "Error adding video to playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dr;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const v2, 0x7f0b01d4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/dr;->b:Lcom/google/android/youtube/core/model/Playlist;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;Ljava/lang/String;)V

    return-void
.end method
