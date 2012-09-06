.class public Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private closed:Z

.field private encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_e

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    goto :goto_5

    :catchall_e
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    throw v0
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "QuotedPrintableOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    return-void
.end method
