.class Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlobCacheRegister"
.end annotation


# instance fields
.field private final mAuxKey:[B

.field private mBaos:Ljava/io/ByteArrayOutputStream;

.field private final mKey:[B

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/PicasaStore;JILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter "id"
    .parameter "cacheType"
    .parameter "url"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    .line 482
    #calls: Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/picasastore/PicasaStore;->access$100(Lcom/google/android/picasastore/PicasaStore;JI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mKey:[B

    .line 483
    if-nez p5, :cond_18

    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mAuxKey:[B

    .line 484
    return-void

    .line 483
    :cond_18
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_15
.end method


# virtual methods
.method public onDataAvailable([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v1, 0x8

    if-ge v0, v1, :cond_f

    .line 489
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 491
    :cond_f
    return-void
.end method

.method public onDownloadAbort()V
    .registers 1

    .prologue
    .line 502
    return-void
.end method

.method public onDownloadComplete()V
    .registers 5

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v1, 0x8

    if-ge v0, v1, :cond_19

    .line 496
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasastore/PicasaStore;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mKey:[B

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mAuxKey:[B

    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    #calls: Lcom/google/android/picasastore/PicasaStore;->putBlobCache([B[B[B)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/picasastore/PicasaStore;->access$200(Lcom/google/android/picasastore/PicasaStore;[B[B[B)V

    .line 498
    :cond_19
    return-void
.end method
