.class Lcom/google/android/picasasync/PicasaStore$3;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasasync/PicasaStore$PipeDataWriter",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PicasaStore;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaStore;)V
    .registers 2
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaStore$3;->this$0:Lcom/google/android/picasasync/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 692
    check-cast p2, [B

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/picasasync/PicasaStore$3;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;[B)V

    return-void
.end method

.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 9
    .parameter "output"
    .parameter "content"

    .prologue
    .line 695
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 697
    .local v1, os:Ljava/io/OutputStream;
    :try_start_5
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_29

    .line 703
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 705
    :goto_b
    return-void

    .line 698
    :catch_c
    move-exception v0

    .line 699
    .local v0, e:Ljava/io/IOException;
    :try_start_d
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
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_35

    .line 703
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_b

    .line 700
    .end local v0           #e:Ljava/io/IOException;
    :catch_29
    move-exception v2

    .line 701
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2a
    const-string v3, "PicasaStore"

    const-string v4, "fail to write to pipe"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_35

    .line 703
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_b

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_35
    move-exception v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method
