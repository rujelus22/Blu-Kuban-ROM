.class public Lcom/estrongs/android/pop/a/c;
.super Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/a/c;->buf:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/a/c;->in:Ljava/io/InputStream;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/a/c;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/a/c;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/a/c;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9
.end method

.method public read()I
    .registers 2

    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/a/c;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-ge p3, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/a/c;->available()I

    move-result v1

    if-le p3, v1, :cond_16

    :goto_c
    if-ge v1, v0, :cond_2d

    :goto_e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/a/c;->read()I

    move-result v1

    if-ne v1, v4, :cond_18

    move v0, v4

    goto :goto_5

    :cond_16
    move v1, p3

    goto :goto_c

    :cond_18
    move v2, p2

    :goto_19
    add-int/lit8 v3, v2, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_28

    invoke-virtual {p0}, Lcom/estrongs/android/pop/a/c;->read()I

    move-result v1

    if-ne v1, v4, :cond_2b

    :cond_28
    sub-int v0, v3, p2

    goto :goto_5

    :cond_2b
    move v2, v3

    goto :goto_19

    :cond_2d
    move v0, v1

    goto :goto_e
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    iget v0, p0, Lcom/estrongs/android/pop/a/c;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/a/c;->pos:I

    :goto_d
    return-wide p1

    :cond_e
    move-wide p1, v0

    goto :goto_d
.end method
