.class public Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;
.super Ljava/lang/Object;
.source "BytesToPipeConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<[B",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final writeExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .parameter "writeExecutor"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;->writeExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method

.method private writeDataInBackground(Ljava/io/OutputStream;[B)V
    .registers 5
    .parameter "out"
    .parameter "data"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;->writeExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;-><init>(Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;Ljava/io/OutputStream;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method


# virtual methods
.method public convertResponse([B)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 60
    .local v1, readAndWrite:[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0, v2, p1}, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;->writeDataInBackground(Ljava/io/OutputStream;[B)V

    .line 61
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    .line 62
    .end local v1           #readAndWrite:[Landroid/os/ParcelFileDescriptor;
    :catch_13
    move-exception v0

    .line 63
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;->convertResponse([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
