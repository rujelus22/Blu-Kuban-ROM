.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;


# static fields
.field static final _lineSeparator:Ljava/lang/String;

.field static final _lineSeparatorBytes:[B

.field static final _noConversionRequired:Z


# instance fields
.field private __length:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    return-void
.end method

.method private __read()I
    .registers 4

    const/16 v1, 0xd

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_1f

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_20

    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread([B)V

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v2, -0x1

    if-eq v0, v2, :cond_26

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread(I)V

    :cond_26
    move v0, v1

    goto :goto_1f
.end method

.method public static final isConversionRequired()Z
    .registers 1

    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 2

    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    goto :goto_8
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8

    const/4 v1, 0x1

    const/4 v3, -0x1

    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    if-ge p3, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v0

    if-le p3, v0, :cond_16

    move p3, v0

    :cond_16
    iput p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    iget v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-ge v0, v1, :cond_1e

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    :cond_1e
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-ne v0, v3, :cond_26

    move v0, v3

    goto :goto_a

    :cond_26
    move v1, p2

    :goto_27
    add-int/lit8 v2, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    iget v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-lez v0, :cond_3a

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

    if-ne v0, v3, :cond_3d

    :cond_3a
    sub-int v0, v2, p2

    goto :goto_a

    :cond_3d
    move v1, v2

    goto :goto_27
.end method
