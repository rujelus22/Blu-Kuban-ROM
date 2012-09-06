.class Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputStreamWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/PicasaStore;JLjava/io/InputStream;)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "inputStream"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-wide p2, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mId:J

    .line 573
    iput-object p4, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mInputStream:Ljava/io/InputStream;

    .line 574
    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .registers 13
    .parameter "output"
    .parameter "object"

    .prologue
    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PicasaStore.download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v5

    .line 581
    .local v5, statsId:I
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mInputStream:Ljava/io/InputStream;

    .line 582
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 584
    .local v3, os:Ljava/io/OutputStream;
    const/16 v7, 0x800

    :try_start_2a
    new-array v0, v7, [B

    .line 585
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 586
    .local v4, rc:I
    :goto_30
    if-lez v4, :cond_3b

    .line 587
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_39} :catch_45
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_39} :catch_68

    move-result v4

    goto :goto_30

    .line 599
    :cond_3b
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 601
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .line 603
    .end local v0           #buffer:[B
    .end local v4           #rc:I
    :goto_44
    return-void

    .line 590
    :catch_45
    move-exception v1

    .line 595
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    const-string v7, "PicasaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pipe closed early by caller? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_7a

    .line 599
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 601
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_44

    .line 596
    .end local v1           #e:Ljava/io/IOException;
    :catch_68
    move-exception v6

    .line 597
    .local v6, t:Ljava/lang/Throwable;
    :try_start_69
    const-string v7, "PicasaStore"

    const-string v8, "fail to write to pipe"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_7a

    .line 599
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 601
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_44

    .line 599
    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_7a
    move-exception v7

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 601
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v7
.end method
