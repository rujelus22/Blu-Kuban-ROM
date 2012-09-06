.class Lcom/a/a/a/r;
.super Lcom/a/a/a/p;

# interfaces
.implements Lcom/a/a/a/l;
.implements Lcom/a/a/a/o;


# direct methods
.method protected constructor <init>(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/p;-><init>(Lcom/a/a/a/s;Lcom/a/a/a/j;)V

    new-instance v0, Lcom/a/a/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/k;)V

    iput-object v0, p0, Lcom/a/a/a/r;->l:Lcom/a/a/a/m;

    invoke-virtual {p0, p2, p3}, Lcom/a/a/a/r;->a(La/b/c;Z)V

    return-void
.end method

.method private g()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/r;->e:Z

    iget-object v0, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/r;->e()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation aborted by client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/r;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lcom/a/a/a/r;->m:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/r;->m:Z

    iget-object v0, p0, Lcom/a/a/a/r;->l:Lcom/a/a/a/m;

    return-object v0
.end method

.method public a(Lcom/a/a/a/m;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/a/a/a/r;->f:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/a/a/a/r;->h:Z

    if-eqz v0, :cond_e

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Lcom/a/a/a/m;->a([BZ)V

    :goto_d
    return-void

    :cond_e
    const-string v0, "server operation reply continue"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    iput-object v3, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/j;

    invoke-virtual {p0}, Lcom/a/a/a/r;->f()Z

    goto :goto_d
.end method

.method public a(Z[B)V
    .registers 6

    iget-object v0, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    iget-boolean v0, v0, Lcom/a/a/a/s;->i:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/a/a/a/r;->f()Z

    iget-object v0, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    iget-boolean v0, v0, Lcom/a/a/a/s;->i:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client not requesting data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-static {}, Lcom/a/a/a/t;->c()Lcom/a/a/a/j;

    move-result-object v1

    const/16 v2, 0x90

    const/16 v0, 0x48

    if-eqz p1, :cond_23

    const/16 v0, 0x49

    :cond_23
    invoke-virtual {v1, v0, p2}, Lcom/a/a/a/j;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/j;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/j;

    invoke-static {v1, v0}, Lcom/a/a/a/j;->a(La/b/c;La/b/c;)La/b/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/j;

    :cond_32
    iget-object v0, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    invoke-virtual {v0, v2, v1}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/r;->f()Z

    return-void
.end method

.method public c()Ljava/io/OutputStream;
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/r;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/a/a/a/r;->j:Lcom/a/a/a/n;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/a/a/a/n;

    iget-object v1, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    iget v1, v1, Lcom/a/a/a/s;->d:I

    invoke-direct {v0, v1, p0}, Lcom/a/a/a/n;-><init>(ILcom/a/a/a/l;)V

    iput-object v0, p0, Lcom/a/a/a/r;->j:Lcom/a/a/a/n;

    iget-object v0, p0, Lcom/a/a/a/r;->j:Lcom/a/a/a/n;

    return-object v0
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "server close put operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/r;->l:Lcom/a/a/a/m;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/a/a/a/r;->l:Lcom/a/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/m;->close()V

    iput-object v1, p0, Lcom/a/a/a/r;->l:Lcom/a/a/a/m;

    :cond_11
    iget-object v0, p0, Lcom/a/a/a/r;->j:Lcom/a/a/a/n;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/a/a/a/r;->j:Lcom/a/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/a/n;->close()V

    iput-object v1, p0, Lcom/a/a/a/r;->j:Lcom/a/a/a/n;

    :cond_1c
    invoke-super {p0}, Lcom/a/a/a/p;->e()V

    return-void
.end method

.method protected f()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    invoke-virtual {v0}, Lcom/a/a/a/s;->f()[B

    move-result-object v3

    aget-byte v0, v3, v2

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_32

    move v0, v1

    :goto_12
    if-eqz v0, :cond_1b

    const-string v5, "server operation got final packet"

    invoke-static {v5}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/a/a/a/r;->f:Z

    :cond_1b
    sparse-switch v4, :sswitch_data_5a

    iput-boolean v1, p0, Lcom/a/a/a/r;->h:Z

    const-string v1, "server operation invalid request"

    invoke-static {v4}, Lcom/a/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v4

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2, v6}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    :goto_31
    return v0

    :cond_32
    move v0, v2

    goto :goto_12

    :sswitch_34
    aget-byte v2, v3, v2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    invoke-virtual {v3, v2}, Lcom/a/a/a/s;->a(Lcom/a/a/a/j;)Z

    move-result v3

    if-nez v3, :cond_4d

    iput-boolean v1, p0, Lcom/a/a/a/r;->h:Z

    iget-object v1, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/s;

    const/16 v2, 0xc1

    invoke-virtual {v1, v2, v6}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_31

    :cond_4d
    iget-object v1, p0, Lcom/a/a/a/r;->b:La/b/c;

    invoke-static {v1, v2}, Lcom/a/a/a/j;->a(La/b/c;La/b/c;)La/b/c;

    invoke-virtual {p0, v2, v0}, Lcom/a/a/a/r;->a(La/b/c;Z)V

    goto :goto_31

    :sswitch_56
    invoke-direct {p0}, Lcom/a/a/a/r;->g()V

    goto :goto_31

    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_34
        0x82 -> :sswitch_34
        0xff -> :sswitch_56
    .end sparse-switch
.end method
