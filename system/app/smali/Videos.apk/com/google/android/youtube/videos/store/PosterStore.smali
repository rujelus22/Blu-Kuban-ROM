.class Lcom/google/android/youtube/videos/store/PosterStore;
.super Lcom/google/android/youtube/videos/store/BitmapStore;
.source "PosterStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/store/PosterStore$NoStoredPosterException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/videos/store/BitmapStore",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/async/Requester;)V
    .registers 9
    .parameter "context"
    .parameter "executor"
    .parameter "posterArtDirectory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/File;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p4, posterArtRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    new-instance v0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;-><init>(IZZ)V

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/google/android/youtube/videos/store/PosterStore;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;Lcom/google/android/youtube/core/async/Requester;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;Lcom/google/android/youtube/core/async/Requester;)V
    .registers 6
    .parameter "executor"
    .parameter "posterArtDirectory"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/File;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<[B",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<[BLandroid/graphics/Bitmap;>;"
    .local p4, posterArtRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/store/BitmapStore;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 51
    const-string v0, "posterArtRequester cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/PosterStore;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/store/PosterStore;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PosterStore;->toFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private toFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "videoId"

    .prologue
    .line 94
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore;->bitmapDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected fetchBitmapFromSource(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V
    .registers 7
    .parameter
    .parameter
    .parameter "storageFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PosterStore;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    new-instance v2, Lcom/google/android/youtube/videos/store/PosterStore$2;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/google/android/youtube/videos/store/PosterStore$2;-><init>(Lcom/google/android/youtube/videos/store/PosterStore;Ljava/io/File;Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 120
    return-void
.end method

.method protected bridge synthetic fetchBitmapFromSource(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/store/PosterStore;->fetchBitmapFromSource(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V

    return-void
.end method

.method public getStoredPosterBytes(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/lang/String;[B>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PosterStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/store/PosterStore$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/store/PosterStore$1;-><init>(Lcom/google/android/youtube/videos/store/PosterStore;Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method protected toFile(Landroid/util/Pair;)Ljava/io/File;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/store/PosterStore;->toFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic toFile(Ljava/lang/Object;)Ljava/io/File;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/PosterStore;->toFile(Landroid/util/Pair;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
