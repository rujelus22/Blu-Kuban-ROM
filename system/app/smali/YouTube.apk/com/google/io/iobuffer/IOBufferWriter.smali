.class public final Lcom/google/io/iobuffer/IOBufferWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/io/iobuffer/b;


# virtual methods
.method public final close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_6

    .line 70
    :goto_5
    return-void

    .line 62
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->b()V

    .line 63
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/io/iobuffer/b;->a(Z)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_14

    .line 68
    iput-object v2, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    goto :goto_5

    .line 64
    :catch_14
    move-exception v0

    .line 66
    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 67
    :catchall_16
    move-exception v0

    .line 68
    iput-object v2, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    .line 69
    throw v0
.end method

.method public final flush()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 74
    new-instance v0, Lcom/google/io/iobuffer/IOBufferWriter$IOBufferWriterClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferWriter$IOBufferWriterClosedException;-><init>()V

    throw v0

    .line 77
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->b()V

    .line 78
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->a()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_15

    return-void

    .line 79
    :catch_15
    move-exception v0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    .line 82
    throw v0
.end method

.method public final write(I)V
    .registers 4
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 113
    new-instance v0, Lcom/google/io/iobuffer/IOBufferWriter$IOBufferWriterClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferWriter$IOBufferWriterClosedException;-><init>()V

    throw v0

    .line 116
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1}, Lcom/google/io/iobuffer/b;->a(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    .line 117
    :catch_10
    move-exception v0

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    .line 120
    throw v0
.end method

.method public final write(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/io/iobuffer/IOBufferWriter;->write(Ljava/lang/String;II)V

    .line 92
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/io/iobuffer/IOBufferWriter;->write([CII)V

    .line 96
    return-void
.end method

.method public final write([C)V
    .registers 4
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/io/iobuffer/IOBufferWriter;->write([CII)V

    .line 88
    return-void
.end method

.method public final write([CII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 100
    new-instance v0, Lcom/google/io/iobuffer/IOBufferWriter$IOBufferWriterClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferWriter$IOBufferWriterClosedException;-><init>()V

    throw v0

    .line 103
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/io/iobuffer/b;->a([CII)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    .line 104
    :catch_10
    move-exception v0

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/io/iobuffer/IOBufferWriter;->a:Lcom/google/io/iobuffer/b;

    .line 107
    throw v0
.end method
