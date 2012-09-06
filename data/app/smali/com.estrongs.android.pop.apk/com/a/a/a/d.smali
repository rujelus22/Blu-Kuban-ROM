.class Lcom/a/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:[B

.field c:[B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a([B)V
    .registers 8

    const/4 v1, 0x0

    const/16 v5, 0x10

    move v0, v1

    :goto_4
    array-length v2, p1

    if-lt v0, v2, :cond_8

    return-void

    :cond_8
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v0, v0, 0x2

    packed-switch v2, :pswitch_data_4e

    :goto_17
    add-int/2addr v0, v3

    goto :goto_4

    :pswitch_19
    if-eq v3, v5, :cond_23

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX Digest Response error in tag request-digest"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/a/a/a/d;->a:[B

    iget-object v2, p0, Lcom/a/a/a/d;->a:[B

    invoke-static {p1, v0, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    :pswitch_2d
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/a/a/a/d;->b:[B

    iget-object v2, p0, Lcom/a/a/a/d;->b:[B

    iget-object v4, p0, Lcom/a/a/a/d;->b:[B

    array-length v4, v4

    invoke-static {p1, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    :pswitch_3a
    if-eq v3, v5, :cond_44

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX Digest Response error in tag Nonce"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/a/a/a/d;->c:[B

    iget-object v2, p0, Lcom/a/a/a/d;->c:[B

    invoke-static {p1, v0, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2d
        :pswitch_3a
    .end packed-switch
.end method

.method a()[B
    .registers 6

    const/16 v4, 0x10

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/a/a/a/d;->a:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/a/a/a/d;->b:[B

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/a/a/a/d;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/a/a/a/d;->b:[B

    iget-object v2, p0, Lcom/a/a/a/d;->b:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_29
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/a/a/a/d;->c:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
