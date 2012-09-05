.class public Lcom/coremobility/j/m;
.super Ljava/lang/Object;


# instance fields
.field protected b:[B

.field protected c:I

.field protected d:Z

.field protected e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/m;->b:[B

    iput v1, p0, Lcom/coremobility/j/m;->c:I

    iput-boolean v1, p0, Lcom/coremobility/j/m;->d:Z

    iput v1, p0, Lcom/coremobility/j/m;->e:I

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .registers 13

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    move-wide v0, v4

    :goto_6
    const/16 v6, 0x8

    ushr-long/2addr v2, v6

    cmp-long v6, v2, v8

    if-eqz v6, :cond_f

    add-long/2addr v0, v4

    goto :goto_6

    :cond_f
    iget-boolean v2, p0, Lcom/coremobility/j/m;->d:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/coremobility/j/m;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/coremobility/j/m;->c:I

    :cond_1b
    return-void

    :cond_1c
    iget-object v2, p0, Lcom/coremobility/j/m;->b:[B

    iget v3, p0, Lcom/coremobility/j/m;->e:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/coremobility/j/m;->e:I

    long-to-int v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    :goto_28
    cmp-long v2, v0, v8

    if-lez v2, :cond_1b

    iget-object v2, p0, Lcom/coremobility/j/m;->b:[B

    iget v3, p0, Lcom/coremobility/j/m;->e:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/coremobility/j/m;->e:I

    sub-long/2addr v0, v4

    const/4 v6, 0x3

    shl-long v6, v0, v6

    long-to-int v6, v6

    ushr-long v6, p1, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    goto :goto_28
.end method

.method protected final b()V
    .registers 4

    iget-boolean v0, p0, Lcom/coremobility/j/m;->d:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/coremobility/j/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/m;->c:I

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/coremobility/j/m;->b:[B

    iget v1, p0, Lcom/coremobility/j/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/j/m;->e:I

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    goto :goto_a
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lcom/coremobility/j/m;->d:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/coremobility/j/m;->c:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/j/m;->c:I

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/j/m;->b:[B

    iget v3, p0, Lcom/coremobility/j/m;->e:I

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/coremobility/j/m;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/j/m;->e:I

    iget-object v0, p0, Lcom/coremobility/j/m;->b:[B

    iget v1, p0, Lcom/coremobility/j/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/j/m;->e:I

    aput-byte v4, v0, v1

    goto :goto_10
.end method

.method protected final b(Ljava/lang/String;I)V
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/j/m;->d:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/coremobility/j/m;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coremobility/j/m;->c:I

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    if-lt v0, p2, :cond_23

    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/m;->b:[B

    iget v3, p0, Lcom/coremobility/j/m;->e:I

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/coremobility/j/m;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coremobility/j/m;->e:I

    goto :goto_a

    :cond_23
    move v0, v1

    goto :goto_13
.end method
