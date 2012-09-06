.class public abstract Lt;
.super Lk;


# instance fields
.field protected K:Ljava/io/Reader;

.field protected L:[C


# direct methods
.method protected constructor <init>(Lz;ILjava/io/Reader;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lk;-><init>(Lz;I)V

    iput-object p3, p0, Lt;->K:Ljava/io/Reader;

    invoke-virtual {p1}, Lz;->e()[C

    move-result-object v0

    iput-object v0, p0, Lt;->L:[C

    return-void
.end method


# virtual methods
.method protected final e(Ljava/lang/String;)C
    .registers 5

    iget v0, p0, Lt;->s:I

    iget v1, p0, Lt;->t:I

    if-lt v0, v1, :cond_f

    invoke-virtual {p0}, Lt;->l()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lt;->c(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lt;->L:[C

    iget v1, p0, Lt;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt;->s:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected final l()Z
    .registers 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lt;->u:J

    iget v3, p0, Lt;->t:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lt;->u:J

    iget v1, p0, Lt;->w:I

    iget v2, p0, Lt;->t:I

    sub-int/2addr v1, v2

    iput v1, p0, Lt;->w:I

    iget-object v1, p0, Lt;->K:Ljava/io/Reader;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lt;->K:Ljava/io/Reader;

    iget-object v2, p0, Lt;->L:[C

    iget-object v3, p0, Lt;->L:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-lez v1, :cond_27

    iput v0, p0, Lt;->s:I

    iput v1, p0, Lt;->t:I

    const/4 v0, 0x1

    :cond_26
    return v0

    :cond_27
    invoke-virtual {p0}, Lt;->m()V

    if-nez v1, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lt;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final m()V
    .registers 2

    iget-object v0, p0, Lt;->K:Ljava/io/Reader;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lt;->q:Lz;

    invoke-virtual {v0}, Lz;->c()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->a:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lt;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lt;->K:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lt;->K:Ljava/io/Reader;

    :cond_1c
    return-void
.end method

.method protected final n()V
    .registers 3

    invoke-super {p0}, Lk;->n()V

    iget-object v0, p0, Lt;->L:[C

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lt;->L:[C

    iget-object v1, p0, Lt;->q:Lz;

    invoke-virtual {v1, v0}, Lz;->a([C)V

    :cond_f
    return-void
.end method
