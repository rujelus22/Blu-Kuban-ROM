.class public final Lcom/a/c/d;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final toByteArray()[B
    .registers 3

    iget v0, p0, Lcom/a/c/d;->count:I

    iget-object v1, p0, Lcom/a/c/d;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/a/c/d;->buf:[B

    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9
.end method
