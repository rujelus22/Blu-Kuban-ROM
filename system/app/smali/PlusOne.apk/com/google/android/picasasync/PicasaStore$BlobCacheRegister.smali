.class Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaStore$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlobCacheRegister"
.end annotation


# instance fields
.field private mBaos:Ljava/io/ByteArrayOutputStream;

.field private final mKey:[B

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PicasaStore;JI)V
    .registers 6
    .parameter
    .parameter "id"
    .parameter "cacheType"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasasync/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    .line 561
    #calls: Lcom/google/android/picasasync/PicasaStore;->makeKey(JI)[B
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/picasasync/PicasaStore;->access$100(Lcom/google/android/picasasync/PicasaStore;JI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mKey:[B

    .line 562
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/PicasaStore;[B)V
    .registers 4
    .parameter
    .parameter "key"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasasync/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    .line 557
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mKey:[B

    .line 558
    return-void
.end method


# virtual methods
.method public onDataAvailable([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v1, 0x8

    if-ge v0, v1, :cond_f

    .line 567
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 569
    :cond_f
    return-void
.end method

.method public onDownloadAbort()V
    .registers 1

    .prologue
    .line 580
    return-void
.end method

.method public onDownloadComplete()V
    .registers 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v1, 0x8

    if-ge v0, v1, :cond_17

    .line 574
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasasync/PicasaStore;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mKey:[B

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    #calls: Lcom/google/android/picasasync/PicasaStore;->putBlobCache([B[B)V
    invoke-static {v0, v1, v2}, Lcom/google/android/picasasync/PicasaStore;->access$200(Lcom/google/android/picasasync/PicasaStore;[B[B)V

    .line 576
    :cond_17
    return-void
.end method
