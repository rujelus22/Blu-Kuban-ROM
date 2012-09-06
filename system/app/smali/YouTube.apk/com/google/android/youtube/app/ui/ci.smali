.class public final Lcom/google/android/youtube/app/ui/ci;
.super Lcom/google/android/youtube/core/ui/q;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bj;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/google/android/youtube/core/ui/q;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/d;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/ci;->a:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/youtube/core/model/Playlist;

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/ci;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Playlist;->hqThumbnailUri:Landroid/net/Uri;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Playlist;->thumbnailUri:Landroid/net/Uri;

    goto :goto_8
.end method
