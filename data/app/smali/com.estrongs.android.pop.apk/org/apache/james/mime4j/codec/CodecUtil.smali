.class public Lorg/apache/james/mime4j/codec/CodecUtil;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_ENCODING_BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    const/4 v1, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static encodeBase64(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->close()V

    return-void
.end method

.method public static encodeQuotedPrintable(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static encodeQuotedPrintableBinary(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static wrapBase64(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static wrapQuotedPrintable(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method
