.class public abstract Lu;
.super Lk;


# instance fields
.field protected H:Ljava/io/InputStream;

.field protected I:[B

.field protected J:Z


# direct methods
.method protected constructor <init>(Lz;ILjava/io/InputStream;[BIIZ)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lk;-><init>(Lz;I)V

    iput-object p3, p0, Lu;->H:Ljava/io/InputStream;

    iput-object p4, p0, Lu;->I:[B

    iput p5, p0, Lu;->s:I

    iput p6, p0, Lu;->t:I

    iput-boolean p7, p0, Lu;->J:Z

    return-void
.end method


# virtual methods
.method protected final l()Z
    .registers 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lu;->u:J

    iget v3, p0, Lu;->t:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lu;->u:J

    iget v1, p0, Lu;->w:I

    iget v2, p0, Lu;->t:I

    sub-int/2addr v1, v2

    iput v1, p0, Lu;->w:I

    iget-object v1, p0, Lu;->H:Ljava/io/InputStream;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lu;->H:Ljava/io/InputStream;

    iget-object v2, p0, Lu;->I:[B

    iget-object v3, p0, Lu;->I:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_27

    iput v0, p0, Lu;->s:I

    iput v1, p0, Lu;->t:I

    const/4 v0, 0x1

    :cond_26
    return v0

    :cond_27
    invoke-virtual {p0}, Lu;->m()V

    if-nez v1, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lu;->I:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final m()V
    .registers 2

    iget-object v0, p0, Lu;->H:Ljava/io/InputStream;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lu;->q:Lz;

    invoke-virtual {v0}, Lz;->c()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->a:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lu;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lu;->H:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lu;->H:Ljava/io/InputStream;

    :cond_1c
    return-void
.end method

.method protected final n()V
    .registers 3

    invoke-super {p0}, Lk;->n()V

    iget-boolean v0, p0, Lu;->J:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lu;->I:[B

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    iput-object v1, p0, Lu;->I:[B

    iget-object v1, p0, Lu;->q:Lz;

    invoke-virtual {v1, v0}, Lz;->a([B)V

    :cond_13
    return-void
.end method
