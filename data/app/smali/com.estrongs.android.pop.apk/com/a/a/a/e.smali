.class abstract Lcom/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements La/b/d;
.implements Lcom/a/a/a/k;
.implements Lcom/a/a/a/l;
.implements Lcom/a/a/a/o;


# instance fields
.field protected a:Lcom/a/a/a/h;

.field protected b:C

.field protected c:La/b/c;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Lcom/a/a/a/n;

.field protected h:Z

.field protected i:Lcom/a/a/a/m;

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/a/a/a/j;

.field protected o:Ljava/lang/Object;

.field private p:Z


# direct methods
.method constructor <init>(Lcom/a/a/a/h;CLcom/a/a/a/j;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/a/a/a/e;->h:Z

    iput-boolean v1, p0, Lcom/a/a/a/e;->j:Z

    iput-boolean v1, p0, Lcom/a/a/a/e;->k:Z

    iput-boolean v1, p0, Lcom/a/a/a/e;->l:Z

    iput-boolean v1, p0, Lcom/a/a/a/e;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    iput-boolean v1, p0, Lcom/a/a/a/e;->p:Z

    iput-object p1, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/h;

    iput-char p2, p0, Lcom/a/a/a/e;->b:C

    iput-boolean v1, p0, Lcom/a/a/a/e;->d:Z

    iput-boolean v1, p0, Lcom/a/a/a/e;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e;->o:Ljava/lang/Object;

    new-instance v0, Lcom/a/a/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/k;)V

    iput-object v0, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    invoke-virtual {p0, p3}, Lcom/a/a/a/e;->a(Lcom/a/a/a/j;)V

    return-void
.end method

.method private b(Lcom/a/a/a/j;)V
    .registers 9

    const/4 v6, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/h;

    iget-char v1, p0, Lcom/a/a/a/e;->b:C

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/h;->a(ILcom/a/a/a/j;)V

    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/h;->f()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/a/a/a/j;->a(B[BI)Lcom/a/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/j;La/b/f;)Z

    invoke-virtual {v0}, Lcom/a/a/a/j;->b()I

    move-result v1

    const-string v2, "client operation got reply"

    invoke-static {v1}, Lcom/a/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    sparse-switch v1, :sswitch_data_88

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/a/e;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/a/e;->f:Z

    invoke-virtual {p0, v0}, Lcom/a/a/a/e;->a(La/b/c;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(La/b/c;Z)V

    :goto_3a
    return-void

    :sswitch_3b
    iget-boolean v1, p0, Lcom/a/a/a/e;->p:Z

    if-nez v1, :cond_5e

    invoke-virtual {v0}, Lcom/a/a/a/j;->d()Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "client resend request with auth response"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/a/a/j;->b(La/b/c;)Lcom/a/a/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/h;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/a/h;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/e;->p:Z

    invoke-direct {p0, v1}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5a

    goto :goto_3a

    :catchall_5a
    move-exception v0

    iput-boolean v6, p0, Lcom/a/a/a/e;->k:Z

    throw v0

    :cond_5e
    const/4 v1, 0x1

    :try_start_5f
    iput-boolean v1, p0, Lcom/a/a/a/e;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/a/e;->f:Z

    invoke-virtual {p0, v0}, Lcom/a/a/a/e;->a(La/b/c;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6f
    invoke-virtual {p0, v0}, Lcom/a/a/a/e;->a(La/b/c;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(La/b/c;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/e;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/e;->f:Z

    goto :goto_3a

    :sswitch_7d
    invoke-virtual {p0, v0}, Lcom/a/a/a/e;->a(La/b/c;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(La/b/c;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/e;->f:Z
    :try_end_87
    .catchall {:try_start_5f .. :try_end_87} :catchall_5a

    goto :goto_3a

    :sswitch_data_88
    .sparse-switch
        0x90 -> :sswitch_7d
        0xa0 -> :sswitch_6f
        0xc1 -> :sswitch_3b
    .end sparse-switch
.end method

.method private k()V
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/a/a/a/e;->l()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    iput-boolean v1, p0, Lcom/a/a/a/e;->e:Z

    iget-object v0, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/m;->close()V

    invoke-direct {p0}, Lcom/a/a/a/e;->m()V

    return-void

    :catchall_f
    move-exception v0

    iput-boolean v1, p0, Lcom/a/a/a/e;->e:Z

    iget-object v1, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    invoke-virtual {v1}, Lcom/a/a/a/m;->close()V

    invoke-direct {p0}, Lcom/a/a/a/e;->m()V

    throw v0
.end method

.method private l()V
    .registers 2

    :goto_0
    invoke-virtual {p0}, Lcom/a/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/a/a/a/e;->f:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    iget-boolean v0, v0, Lcom/a/a/a/m;->a:Z

    if-eqz v0, :cond_15

    :cond_14
    return-void

    :cond_15
    const-string v0, "operation expects operation end"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    invoke-virtual {p0, v0}, Lcom/a/a/a/e;->a(Lcom/a/a/a/m;)V

    goto :goto_0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/e;->g:Lcom/a/a/a/n;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/a/a/a/e;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/a/a/a/e;->g:Lcom/a/a/a/n;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/a/a/a/e;->g:Lcom/a/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/a/n;->close()V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->g:Lcom/a/a/a/n;

    monitor-exit v1

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method protected a(La/b/c;)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/e;->c:La/b/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/a/a/a/e;->c:La/b/c;

    invoke-static {p1, v0}, Lcom/a/a/a/j;->a(La/b/c;La/b/c;)La/b/c;

    :cond_9
    iput-object p1, p0, Lcom/a/a/a/e;->c:La/b/c;

    return-void
.end method

.method protected a(La/b/c;Z)V
    .registers 7

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_18

    const/16 v0, 0x49

    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_18

    iput-boolean v1, p0, Lcom/a/a/a/e;->m:Z

    move p2, v1

    :cond_18
    if-eqz v0, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client received Data eof: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/a/a/a;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    invoke-virtual {v1, v0, p2}, Lcom/a/a/a/m;->a([BZ)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    if-eqz p2, :cond_39

    iget-object v0, p0, Lcom/a/a/a/e;->i:Lcom/a/a/a/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/a/a/a/m;->a([BZ)V

    goto :goto_39
.end method

.method protected a(Lcom/a/a/a/j;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    return-void
.end method

.method public a(Lcom/a/a/a/m;)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    invoke-direct {p0, v0}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    return-void
.end method

.method public a(Z[B)V
    .registers 5

    iget-boolean v0, p0, Lcom/a/a/a/e;->l:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    invoke-direct {p0, v0}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    :cond_11
    const/16 v0, 0x48

    if-eqz p1, :cond_26

    iget-char v0, p0, Lcom/a/a/a/e;->b:C

    or-int/lit16 v0, v0, 0x80

    int-to-char v0, v0

    iput-char v0, p0, Lcom/a/a/a/e;->b:C

    const/16 v0, 0x49

    const-string v1, "client Request Phase ended"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/a/e;->l:Z

    :cond_26
    invoke-static {}, Lcom/a/a/a/t;->c()Lcom/a/a/a/j;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/a/a/a/j;->a(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V

    goto :goto_4
.end method

.method public b()Ljava/io/DataInputStream;
    .registers 3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/a/a/a/e;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public b(La/b/c;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1}, Lcom/a/a/a/j;->a(La/b/c;)V

    invoke-virtual {p0}, Lcom/a/a/a/e;->g()V

    iget-boolean v0, p0, Lcom/a/a/a/e;->l:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the request phase has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    invoke-direct {p0, v0}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    :cond_28
    check-cast p1, Lcom/a/a/a/j;

    invoke-direct {p0, p1}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V

    return-void
.end method

.method public d()Ljava/io/DataOutputStream;
    .registers 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/a/a/a/e;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public e()V
    .registers 4

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/a/e;->f()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    invoke-direct {p0}, Lcom/a/a/a/e;->k()V

    iget-boolean v0, p0, Lcom/a/a/a/e;->d:Z

    if-nez v0, :cond_12

    iput-boolean v2, p0, Lcom/a/a/a/e;->d:Z

    const-string v0, "client operation closed"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :cond_12
    return-void

    :catchall_13
    move-exception v0

    invoke-direct {p0}, Lcom/a/a/a/e;->k()V

    iget-boolean v1, p0, Lcom/a/a/a/e;->d:Z

    if-nez v1, :cond_22

    iput-boolean v2, p0, Lcom/a/a/a/e;->d:Z

    const-string v1, "client operation closed"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :cond_22
    throw v0
.end method

.method protected f()V
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/e;->l:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "client ends Request Phase"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/e;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/e;->l:Z

    iget-char v0, p0, Lcom/a/a/a/e;->b:C

    or-int/lit16 v0, v0, 0x80

    int-to-char v0, v0

    iput-char v0, p0, Lcom/a/a/a/e;->b:C

    iget-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    invoke-direct {p0, v0}, Lcom/a/a/a/e;->b(Lcom/a/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->n:Lcom/a/a/a/j;

    goto :goto_4
.end method

.method protected g()V
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/e;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public h()La/b/c;
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/a/e;->g()V

    invoke-virtual {p0}, Lcom/a/a/a/e;->f()V

    iget-object v0, p0, Lcom/a/a/a/e;->c:La/b/c;

    invoke-static {v0}, Lcom/a/a/a/j;->b(La/b/c;)Lcom/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/a/e;->g()V

    invoke-virtual {p0}, Lcom/a/a/a/e;->f()V

    invoke-direct {p0}, Lcom/a/a/a/e;->m()V

    invoke-direct {p0}, Lcom/a/a/a/e;->l()V

    iget-object v0, p0, Lcom/a/a/a/e;->c:La/b/c;

    invoke-interface {v0}, La/b/c;->b()I

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/e;->d:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/a/a/a/e;->k:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
