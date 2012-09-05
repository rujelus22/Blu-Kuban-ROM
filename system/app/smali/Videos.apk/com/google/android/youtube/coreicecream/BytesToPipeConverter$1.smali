.class Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;
.super Ljava/lang/Object;
.source "BytesToPipeConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;->writeDataInBackground(Ljava/io/OutputStream;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;

.field final synthetic val$data:[B

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;Ljava/io/OutputStream;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->this$0:Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;

    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$out:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$data:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_14

    .line 48
    :try_start_7
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    .line 53
    :goto_c
    return-void

    .line 49
    :catch_d
    move-exception v0

    .line 50
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "Exception closing pipe"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 44
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_14
    move-exception v0

    .line 45
    .restart local v0       #ioe:Ljava/io/IOException;
    :try_start_15
    const-string v1, "Exception writing to pipe"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_27

    .line 48
    :try_start_1a
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_c

    .line 49
    :catch_20
    move-exception v0

    .line 50
    const-string v1, "Exception closing pipe"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 47
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_27
    move-exception v1

    .line 48
    :try_start_28
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 51
    :goto_2d
    throw v1

    .line 49
    :catch_2e
    move-exception v0

    .line 50
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v2, "Exception closing pipe"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
