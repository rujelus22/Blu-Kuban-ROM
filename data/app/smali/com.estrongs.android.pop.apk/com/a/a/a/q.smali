.class public Lcom/a/a/a/q;
.super Lcom/a/a/a/p;

# interfaces
.implements Lcom/a/a/a/l;
.implements Lcom/a/a/a/o;


# direct methods
.method protected constructor <init>(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/p;-><init>(Lcom/a/a/a/s;Lcom/a/a/a/j;)V

    if-eqz p3, :cond_a

    iput-boolean v0, p0, Lcom/a/a/a/q;->g:Z

    iput-boolean v0, p0, Lcom/a/a/a/q;->f:Z

    :cond_a
    new-instance v0, Lcom/a/a/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/k;)V

    iput-object v0, p0, Lcom/a/a/a/q;->l:Lcom/a/a/a/m;

    invoke-virtual {p0, p2, p3}, Lcom/a/a/a/q;->a(La/b/c;Z)V

    return-void
.end method

.method private g()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/q;->f:Z

    iput-boolean v0, p0, Lcom/a/a/a/q;->g:Z

    iput-boolean v0, p0, Lcom/a/a/a/q;->e:Z

    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/q;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lcom/a/a/a/q;->m:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/q;->m:Z

    iget-object v0, p0, Lcom/a/a/a/q;->l:Lcom/a/a/a/m;

    return-object v0
.end method

.method public a(Lcom/a/a/a/m;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/a/a/a/q;->g:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/a/a/a/q;->h:Z

    if-eqz v0, :cond_10

    :cond_9
    iget-object v0, p0, Lcom/a/a/a/q;->l:Lcom/a/a/a/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/a/a/a/m;->a([BZ)V

    :goto_f
    return-void

    :cond_10
    const-string v0, "server operation reply continue"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    iput-object v3, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    invoke-virtual {p0}, Lcom/a/a/a/q;->f()Z

    goto :goto_f
.end method

.method public a(Z[B)V
    .registers 6

    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    iget-boolean v0, v0, Lcom/a/a/a/s;->i:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/a/a/a/q;->f()Z

    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

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

    iget-object v0, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    invoke-static {v1, v0}, Lcom/a/a/a/j;->a(La/b/c;La/b/c;)La/b/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    :cond_32
    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    invoke-virtual {v0, v2, v1}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    invoke-virtual {p0}, Lcom/a/a/a/q;->f()Z

    return-void
.end method

.method public bridge synthetic b()Ljava/io/DataInputStream;
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/p;->b()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(La/b/c;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/a/a/a/p;->b(La/b/c;)V

    return-void
.end method

.method public c()Ljava/io/OutputStream;
    .registers 4

    iget-boolean v0, p0, Lcom/a/a/a/q;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/a/a/a/q;->j:Lcom/a/a/a/n;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/q;->g:Z

    new-instance v0, Lcom/a/a/a/n;

    iget-object v1, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    iget v1, v1, Lcom/a/a/a/s;->d:I

    invoke-direct {v0, v1, p0}, Lcom/a/a/a/n;-><init>(ILcom/a/a/a/l;)V

    iput-object v0, p0, Lcom/a/a/a/q;->j:Lcom/a/a/a/n;

    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/j;

    iget-object v0, p0, Lcom/a/a/a/q;->j:Lcom/a/a/a/n;

    return-object v0
.end method

.method public bridge synthetic d()Ljava/io/DataOutputStream;
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/p;->d()Ljava/io/DataOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/q;->j:Lcom/a/a/a/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/a/a/q;->j:Lcom/a/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/a/n;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/q;->j:Lcom/a/a/a/n;

    :cond_c
    iget-object v0, p0, Lcom/a/a/a/q;->l:Lcom/a/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/m;->close()V

    invoke-super {p0}, Lcom/a/a/a/p;->e()V

    return-void
.end method

.method protected f()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    invoke-virtual {v0}, Lcom/a/a/a/s;->f()[B

    move-result-object v3

    aget-byte v0, v3, v2

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_32

    move v0, v1

    :goto_11
    if-eqz v0, :cond_1a

    const-string v5, "server operation got final packet"

    invoke-static {v5}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/a/a/a/q;->f:Z

    :cond_1a
    sparse-switch v4, :sswitch_data_4c

    iput-boolean v1, p0, Lcom/a/a/a/q;->h:Z

    const-string v1, "server operation invalid request"

    invoke-static {v4}, Lcom/a/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v4

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/s;

    const/16 v2, 0xc0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    :goto_31
    return v0

    :cond_32
    move v0, v2

    goto :goto_11

    :sswitch_34
    if-eqz v0, :cond_38

    iput-boolean v1, p0, Lcom/a/a/a/q;->g:Z

    :cond_38
    aget-byte v1, v3, v2

    const/4 v2, 0x3

    invoke-static {v1, v3, v2}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/q;->b:La/b/c;

    invoke-static {v2, v1}, Lcom/a/a/a/j;->a(La/b/c;La/b/c;)La/b/c;

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/q;->a(La/b/c;Z)V

    goto :goto_31

    :sswitch_48
    invoke-direct {p0}, Lcom/a/a/a/q;->g()V

    goto :goto_31

    :sswitch_data_4c
    .sparse-switch
        0x3 -> :sswitch_34
        0x83 -> :sswitch_34
        0xff -> :sswitch_48
    .end sparse-switch
.end method

.method public bridge synthetic h()La/b/c;
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/p;->h()La/b/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()I
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/p;->i()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Z
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/p;->j()Z

    move-result v0

    return v0
.end method
