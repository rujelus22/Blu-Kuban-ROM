.class public abstract Lgq;
.super Lgi;
.source "a"


# instance fields
.field protected L:Ljava/io/Reader;

.field protected M:[C


# direct methods
.method protected constructor <init>(Lgt;ILjava/io/Reader;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lgi;-><init>(Lgt;I)V

    .line 54
    iput-object p3, p0, Lgq;->L:Ljava/io/Reader;

    .line 55
    invoke-virtual {p1}, Lgt;->d()[C

    move-result-object v0

    iput-object v0, p0, Lgq;->M:[C

    .line 56
    return-void
.end method


# virtual methods
.method protected final A()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lgq;->L:Ljava/io/Reader;

    if-eqz v0, :cond_1c

    .line 129
    iget-object v0, p0, Lgq;->r:Lgt;

    invoke-virtual {v0}, Lgt;->b()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lfd$a;->AUTO_CLOSE_SOURCE:Lfd$a;

    invoke-virtual {p0, v0}, Lgq;->a(Lfd$a;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    :cond_14
    iget-object v0, p0, Lgq;->L:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 132
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lgq;->L:Ljava/io/Reader;

    .line 134
    :cond_1c
    return-void
.end method

.method protected final B()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Lgi;->B()V

    .line 147
    iget-object v0, p0, Lgq;->M:[C

    .line 148
    if-eqz v0, :cond_f

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lgq;->M:[C

    .line 150
    iget-object v1, p0, Lgq;->r:Lgt;

    invoke-virtual {v1, v0}, Lgt;->a([C)V

    .line 152
    :cond_f
    return-void
.end method

.method protected final e(Ljava/lang/String;)C
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Lgq;->t:I

    iget v1, p0, Lgq;->u:I

    if-lt v0, v1, :cond_f

    .line 111
    invoke-virtual {p0}, Lgq;->y()Z

    move-result v0

    if-nez v0, :cond_f

    .line 112
    invoke-virtual {p0, p1}, Lgq;->c(Ljava/lang/String;)V

    .line 115
    :cond_f
    iget-object v0, p0, Lgq;->M:[C

    iget v1, p0, Lgq;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgq;->t:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected final y()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-wide v0, p0, Lgq;->v:J

    iget v2, p0, Lgq;->u:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgq;->v:J

    .line 88
    iget v0, p0, Lgq;->x:I

    iget v1, p0, Lgq;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgq;->x:I

    .line 90
    iget-object v0, p0, Lgq;->L:Ljava/io/Reader;

    if-eqz v0, :cond_47

    .line 91
    iget-object v0, p0, Lgq;->L:Ljava/io/Reader;

    iget-object v1, p0, Lgq;->M:[C

    iget-object v2, p0, Lgq;->M:[C

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 92
    if-lez v0, :cond_27

    .line 93
    iput v4, p0, Lgq;->t:I

    .line 94
    iput v0, p0, Lgq;->u:I

    .line 95
    const/4 v0, 0x1

    .line 104
    :goto_26
    return v0

    .line 98
    :cond_27
    invoke-virtual {p0}, Lgq;->A()V

    .line 100
    if-nez v0, :cond_47

    .line 101
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgq;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move v0, v4

    .line 104
    goto :goto_26
.end method
