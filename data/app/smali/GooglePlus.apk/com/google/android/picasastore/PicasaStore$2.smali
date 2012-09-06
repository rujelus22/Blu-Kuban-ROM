.class Lcom/google/android/picasastore/PicasaStore$2;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
        "<",
        "Lcom/google/android/picasastore/PicasaStore$ImagePack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaStore;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$2;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Lcom/google/android/picasastore/PicasaStore$ImagePack;)V
    .registers 10
    .parameter "output"
    .parameter "pack"

    .prologue
    .line 609
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 611
    .local v1, os:Ljava/io/OutputStream;
    :try_start_5
    iget-object v3, p2, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    iget v4, p2, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    iget-object v5, p2, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    array-length v5, v5

    iget v6, p2, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_33

    .line 617
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 619
    :goto_15
    return-void

    .line 612
    :catch_16
    move-exception v0

    .line 613
    .local v0, e:Ljava/io/IOException;
    :try_start_17
    const-string v3, "PicasaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pipe closed early by caller? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_3f

    .line 617
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_15

    .line 614
    .end local v0           #e:Ljava/io/IOException;
    :catch_33
    move-exception v2

    .line 615
    .local v2, t:Ljava/lang/Throwable;
    :try_start_34
    const-string v3, "PicasaStore"

    const-string v4, "fail to write to pipe"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    .line 617
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_15

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_3f
    move-exception v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 606
    check-cast p2, Lcom/google/android/picasastore/PicasaStore$ImagePack;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/picasastore/PicasaStore$2;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Lcom/google/android/picasastore/PicasaStore$ImagePack;)V

    return-void
.end method
