.class LRv;
.super Ljava/lang/Thread;
.source "PipeExposer.java"


# instance fields
.field final synthetic a:LRu;

.field final synthetic a:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(LRu;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, LRv;->a:LRu;

    iput-object p3, p0, LRv;->a:Ljava/io/OutputStream;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, LRv;->a:LRu;

    iget-object v0, v0, LRu;->a:LRt;

    invoke-static {v0}, LRt;->a(LRt;)LRd;

    move-result-object v0

    iget-object v1, p0, LRv;->a:LRu;

    invoke-static {v1}, LRu;->a(LRu;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LRv;->a:Ljava/io/OutputStream;

    invoke-interface {v0, v1, v2}, LRd;->a(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_22

    .line 59
    :try_start_13
    iget-object v0, p0, LRv;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    .line 64
    :goto_18
    return-void

    .line 60
    :catch_19
    move-exception v0

    .line 61
    const-string v1, "PipeExposer"

    const-string v2, "Close pipe failed."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 55
    :catch_22
    move-exception v0

    .line 56
    :try_start_23
    const-string v1, "PipeExposer"

    const-string v2, "Obtain content failed."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_39

    .line 59
    :try_start_2a
    iget-object v0, p0, LRv;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_18

    .line 60
    :catch_30
    move-exception v0

    .line 61
    const-string v1, "PipeExposer"

    const-string v2, "Close pipe failed."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 58
    :catchall_39
    move-exception v0

    .line 59
    :try_start_3a
    iget-object v1, p0, LRv;->a:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 62
    :goto_3f
    throw v0

    .line 60
    :catch_40
    move-exception v1

    .line 61
    const-string v2, "PipeExposer"

    const-string v3, "Close pipe failed."

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method
