.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final __LAST_WAS_CR:I = 0x1

.field private static final __LAST_WAS_NL:I = 0x2

.field private static final __NOTHING_SPECIAL:I


# instance fields
.field private __status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 7

    const/16 v0, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-ne v1, v5, :cond_e

    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/16 v0, 0xa

    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    :cond_17
    :pswitch_17
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    move v0, v1

    goto :goto_d

    :pswitch_1b
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_d

    :pswitch_1e
    iget v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-eq v2, v4, :cond_17

    iput v5, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    goto :goto_d

    nop

    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_1e
        :pswitch_17
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-ge p3, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    move-result v1

    if-le p3, v1, :cond_30

    :goto_c
    if-ge v1, v0, :cond_2e

    :goto_e
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v1

    if-ne v1, v4, :cond_16

    move v0, v4

    goto :goto_5

    :cond_16
    move v2, p2

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1a
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_29

    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_2c

    :cond_29
    sub-int v0, v3, p2

    goto :goto_5

    :cond_2c
    move v2, v3

    goto :goto_1a

    :cond_2e
    move v0, v1

    goto :goto_e

    :cond_30
    move v1, p3

    goto :goto_c
.end method
