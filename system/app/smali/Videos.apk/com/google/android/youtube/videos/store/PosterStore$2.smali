.class Lcom/google/android/youtube/videos/store/PosterStore$2;
.super Ljava/lang/Object;
.source "PosterStore.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PosterStore;->fetchBitmapFromSource(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/PosterStore;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Landroid/util/Pair;

.field final synthetic val$storageFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PosterStore;Ljava/io/File;Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->this$0:Lcom/google/android/youtube/videos/store/PosterStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$storageFile:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$request:Landroid/util/Pair;

    iput-object p4, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 5
    .parameter "innerRequest"
    .parameter "exception"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$request:Landroid/util/Pair;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 118
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PosterStore$2;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;[B)V
    .registers 7
    .parameter "innerRequest"
    .parameter "response"

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->this$0:Lcom/google/android/youtube/videos/store/PosterStore;

    iget-object v2, v2, Lcom/google/android/youtube/videos/store/PosterStore;->bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    invoke-interface {v2, p2}, Lcom/google/android/youtube/core/converter/ResponseConverter;->convertResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_a
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_a} :catch_37

    .line 107
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_a
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->this$0:Lcom/google/android/youtube/videos/store/PosterStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$storageFile:Ljava/io/File;

    invoke-virtual {v2, v3, p2}, Lcom/google/android/youtube/videos/store/PosterStore;->storeBytes(Ljava/io/File;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_19
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_a .. :try_end_11} :catch_37

    .line 111
    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$request:Landroid/util/Pair;

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_18
    return-void

    .line 108
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_19
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to persist poster data for video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$request:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V
    :try_end_36
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_11 .. :try_end_36} :catch_37

    goto :goto_11

    .line 112
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catch_37
    move-exception v1

    .line 113
    .local v1, e:Lcom/google/android/youtube/core/converter/ConverterException;
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$2;->val$request:Landroid/util/Pair;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, [B

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PosterStore$2;->onResponse(Landroid/net/Uri;[B)V

    return-void
.end method
