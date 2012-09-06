.class public Lcom/a/a/a/h;
.super Lcom/a/a/a/t;

# interfaces
.implements La/b/b;


# instance fields
.field private a:Lcom/a/a/a/e;


# direct methods
.method public constructor <init>(La/a/a/e;Lcom/a/a/a/i;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/t;-><init>(La/a/a/e;Lcom/a/a/a/i;)V

    iput-boolean v0, p0, Lcom/a/a/a/h;->i:Z

    iput-boolean v0, p0, Lcom/a/a/a/h;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    return-void
.end method

.method private a(La/b/c;ZZZ)La/b/c;
    .registers 10

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-array v4, v0, [B

    if-eqz p2, :cond_46

    move v2, v3

    :goto_8
    if-eqz p3, :cond_b

    move v0, v1

    :cond_b
    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    aput-byte v1, v4, v3

    const/16 v2, 0x85

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v2, v4, v0}, Lcom/a/a/a/h;->a(I[BLcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/h;->f()[B

    move-result-object v0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/h;->a(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    if-nez p4, :cond_48

    invoke-virtual {v1}, Lcom/a/a/a/j;->b()I

    move-result v0

    const/16 v2, 0xc1

    if-ne v0, v2, :cond_48

    invoke-virtual {v1}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p1}, Lcom/a/a/a/j;->b(La/b/c;)Lcom/a/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/a/a/a/h;->a(La/b/c;ZZZ)La/b/c;

    move-result-object v0

    :goto_45
    return-object v0

    :cond_46
    move v2, v1

    goto :goto_8

    :cond_48
    move-object v0, v1

    goto :goto_45
.end method

.method private b(La/b/c;Z)La/b/c;
    .registers 10

    const/4 v6, 0x6

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/a/a/a/h;->f(La/b/c;)V

    iget-boolean v0, p0, Lcom/a/a/a/h;->b:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v0, 0x10

    aput-byte v0, v1, v4

    aput-byte v4, v1, v5

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/i;

    iget v2, v2, Lcom/a/a/a/i;->c:I

    invoke-static {v2}, Lcom/a/a/a/v;->a(I)B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v0, p0, Lcom/a/a/a/h;->f:Lcom/a/a/a/i;

    iget v0, v0, Lcom/a/a/a/i;->c:I

    invoke-static {v0}, Lcom/a/a/a/v;->b(I)B

    move-result v0

    aput-byte v0, v1, v3

    const/16 v2, 0x80

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v2, v1, v0}, Lcom/a/a/a/h;->a(I[BLcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/h;->f()[B

    move-result-object v0

    array-length v1, v0

    if-ge v1, v6, :cond_66

    array-length v1, v0

    if-ne v1, v3, :cond_5e

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid response from OBEX server "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/a/a/a/v;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response from OBEX server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    aget-byte v2, v0, v6

    invoke-static {v1, v2}, Lcom/a/a/a/v;->a(BB)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_88

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid MTU "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    iget v2, p0, Lcom/a/a/a/h;->d:I

    if-ge v1, v2, :cond_8e

    iput v1, p0, Lcom/a/a/a/h;->d:I

    :cond_8e
    const-string v1, "mtu selected"

    iget v2, p0, Lcom/a/a/a/h;->d:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/a/a/a;->a(Ljava/lang/String;J)V

    aget-byte v1, v0, v4

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v2

    const/16 v0, 0xcb

    invoke-virtual {v2, v0}, Lcom/a/a/a/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ad

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/h;->c:J

    :cond_ad
    move-object v0, p1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    if-nez p2, :cond_d2

    invoke-virtual {v2}, Lcom/a/a/a/j;->b()I

    move-result v0

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_d2

    invoke-virtual {v2}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-static {p1}, Lcom/a/a/a/j;->b(La/b/c;)Lcom/a/a/a/j;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v2, v0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    invoke-direct {p0, v1, v5}, Lcom/a/a/a/h;->b(La/b/c;Z)La/b/c;

    move-result-object v0

    :goto_d1
    return-object v0

    :cond_d2
    invoke-virtual {v2}, Lcom/a/a/a/j;->b()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_dc

    iput-boolean v5, p0, Lcom/a/a/a/h;->b:Z

    :cond_dc
    move-object v0, v2

    goto :goto_d1
.end method

.method private g()V
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/h;->b:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client is already in an operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    :cond_23
    return-void
.end method


# virtual methods
.method public a()La/b/c;
    .registers 2

    invoke-static {}, Lcom/a/a/a/t;->d()La/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(La/b/c;)La/b/c;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/h;->b(La/b/c;Z)La/b/c;

    move-result-object v0

    return-object v0
.end method

.method a(La/b/c;Z)La/b/c;
    .registers 6

    const/16 v1, 0x82

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/h;->a(ILcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/h;->f()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/j;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/h;->a(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    if-nez p2, :cond_37

    invoke-virtual {v1}, Lcom/a/a/a/j;->b()I

    move-result v0

    const/16 v2, 0xc1

    if-ne v0, v2, :cond_37

    invoke-virtual {v1}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p1}, Lcom/a/a/a/j;->b(La/b/c;)Lcom/a/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/h;->a(La/b/c;Z)La/b/c;

    move-result-object v0

    :goto_36
    return-object v0

    :cond_37
    move-object v0, v1

    goto :goto_36
.end method

.method public a(La/b/c;ZZ)La/b/c;
    .registers 5

    invoke-static {p1}, Lcom/a/a/a/h;->f(La/b/c;)V

    invoke-direct {p0}, Lcom/a/a/a/h;->g()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/a/h;->a(La/b/c;ZZZ)La/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_24

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid connectionID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iput-wide p1, p0, Lcom/a/a/a/h;->c:J

    return-void
.end method

.method public b(La/b/c;)La/b/c;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/a/a/a/h;->f(La/b/c;)V

    invoke-direct {p0}, Lcom/a/a/a/h;->g()V

    iget-boolean v0, p0, Lcom/a/a/a/h;->b:Z

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/16 v0, 0x81

    check-cast p1, Lcom/a/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/a/a/a/h;->a(ILcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/h;->f()[B

    move-result-object v0

    iput-boolean v2, p0, Lcom/a/a/a/h;->b:Z

    iget-object v1, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/a/e;->e()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    :cond_2c
    aget-byte v1, v0, v2

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Z
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/t;->b()Z

    move-result v0

    return v0
.end method

.method public c(La/b/c;)La/b/d;
    .registers 3

    invoke-static {p1}, Lcom/a/a/a/h;->f(La/b/c;)V

    invoke-direct {p0}, Lcom/a/a/a/h;->g()V

    new-instance v0, Lcom/a/a/a/f;

    check-cast p1, Lcom/a/a/a/j;

    invoke-direct {v0, p0, p1}, Lcom/a/a/a/f;-><init>(Lcom/a/a/a/h;Lcom/a/a/a/j;)V

    iput-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    return-object v0
.end method

.method public d(La/b/c;)La/b/d;
    .registers 3

    invoke-static {p1}, Lcom/a/a/a/h;->f(La/b/c;)V

    invoke-direct {p0}, Lcom/a/a/a/h;->g()V

    new-instance v0, Lcom/a/a/a/g;

    check-cast p1, Lcom/a/a/a/j;

    invoke-direct {v0, p0, p1}, Lcom/a/a/a/g;-><init>(Lcom/a/a/a/h;Lcom/a/a/a/j;)V

    iput-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    return-object v0
.end method

.method public e(La/b/c;)La/b/c;
    .registers 3

    invoke-static {p1}, Lcom/a/a/a/h;->f(La/b/c;)V

    invoke-direct {p0}, Lcom/a/a/a/h;->g()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/h;->a(La/b/c;Z)La/b/c;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/h;->a:Lcom/a/a/a/e;

    :cond_c
    invoke-super {p0}, Lcom/a/a/a/t;->e()V

    return-void
.end method
