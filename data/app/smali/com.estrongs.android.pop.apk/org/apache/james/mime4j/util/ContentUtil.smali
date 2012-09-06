.class public Lorg/apache/james/mime4j/util/ContentUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .registers 5

    instance-of v0, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .registers 5

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 2

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 6

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    return-object v1
.end method
