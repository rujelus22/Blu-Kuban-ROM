.class abstract Lcom/google/android/youtube/videos/store/BitmapStore;
.super Ljava/lang/Object;
.source "BitmapStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<[B",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected final bitmapDirectory:Ljava/io/File;

.field protected final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;)V
    .registers 5
    .parameter "executor"
    .parameter "bitmapDirectory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/File;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<[B",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore;,"Lcom/google/android/youtube/videos/store/BitmapStore<TR;>;"
    .local p3, bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<[BLandroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->executor:Ljava/util/concurrent/Executor;

    .line 40
    const-string v0, "bitmapDirectory cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->bitmapDirectory:Ljava/io/File;

    .line 42
    iput-object p3, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/store/BitmapStore;Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/BitmapStore;->getStoredBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getStoredBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore;,"Lcom/google/android/youtube/videos/store/BitmapStore<TR;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/BitmapStore;->getStoredBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 110
    .local v0, bytes:[B
    :try_start_4
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/converter/ResponseConverter;->convertResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_c
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v2

    .line 111
    :catch_d
    move-exception v1

    .line 114
    .local v1, e:Lcom/google/android/youtube/core/converter/ConverterException;
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 115
    throw v1
.end method


# virtual methods
.method protected abstract fetchBitmapFromSource(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public final getBitmap(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore;,"Lcom/google/android/youtube/videos/store/BitmapStore<TR;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/store/BitmapStore$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/store/BitmapStore$1;-><init>(Lcom/google/android/youtube/videos/store/BitmapStore;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method protected final getStoredBytes(Ljava/io/File;)[B
    .registers 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore;,"Lcom/google/android/youtube/videos/store/BitmapStore<TR;>;"
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v2, inputStream:Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    .line 123
    .local v1, fileLength:I
    new-array v0, v1, [B

    .line 124
    .local v0, bytes:[B
    const/4 v3, 0x0

    .line 125
    .local v3, offset:I
    :goto_d
    if-ge v3, v1, :cond_17

    .line 126
    sub-int v4, v1, v3

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1b

    move-result v4

    add-int/2addr v3, v4

    goto :goto_d

    .line 130
    :cond_17
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    .end local v0           #bytes:[B
    .end local v1           #fileLength:I
    .end local v3           #offset:I
    :catchall_1b
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v4
.end method

.method public final retainOnly(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore;,"Lcom/google/android/youtube/videos/store/BitmapStore<TR;>;"
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<TR;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/store/BitmapStore$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/videos/store/BitmapStore$2;-><init>(Lcom/google/android/youtube/videos/store/BitmapStore;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method protected final storeBytes(Ljava/io/File;[B)V
    .registers 5
    .parameter "file"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore;,"Lcom/google/android/youtube/videos/store/BitmapStore<TR;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->bitmapDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 136
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/BitmapStore;->bitmapDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 139
    :cond_d
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 141
    .local v0, outputStream:Ljava/io/FileOutputStream;
    :try_start_13
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 143
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 145
    return-void

    .line 143
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method protected abstract toFile(Ljava/lang/Object;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/io/File;"
        }
    .end annotation
.end method
