.class abstract Lcom/a/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements La/b/d;
.implements Lcom/a/a/a/k;


# instance fields
.field protected a:Lcom/a/a/a/s;

.field protected b:La/b/c;

.field protected c:Lcom/a/a/a/j;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Lcom/a/a/a/n;

.field protected k:Z

.field protected l:Lcom/a/a/a/m;

.field protected m:Z


# direct methods
.method protected constructor <init>(Lcom/a/a/a/s;Lcom/a/a/a/j;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/a/a/a/p;->d:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->e:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->f:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->g:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->h:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->i:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->k:Z

    iput-boolean v0, p0, Lcom/a/a/a/p;->m:Z

    iput-object p1, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/s;

    iput-object p2, p0, Lcom/a/a/a/p;->b:La/b/c;

    invoke-virtual {p2}, Lcom/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/a/a/a/t;->c()Lcom/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    iget-object v0, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/s;

    iget-object v1, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    invoke-virtual {v0, p2, v1}, Lcom/a/a/a/s;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    :cond_2b
    return-void
.end method


# virtual methods
.method a(I)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "server operation reply final"

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->b(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/s;

    iget-object v1, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    iput-object v3, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_33

    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/a/a/a/p;->f:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/s;

    invoke-virtual {v0}, Lcom/a/a/a/s;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    const-string v0, "server waits to receive final packet"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/a/p;->f()Z

    iget-boolean v0, p0, Lcom/a/a/a/p;->h:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/s;

    invoke-virtual {v0, p1, v3}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_14

    :cond_33
    const-string v0, "sent final reply"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_20
.end method

.method protected a(La/b/c;Z)V
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/a/a/a/p;->l:Lcom/a/a/a/m;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const/16 v0, 0x48

    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1b

    const/16 v0, 0x49

    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1b

    move p2, v1

    :cond_1b
    if-eqz v0, :cond_3f

    iput-boolean v1, p0, Lcom/a/a/a/p;->i:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "server received Data eof: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/a/a/a;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/a/a/a/p;->l:Lcom/a/a/a/m;

    invoke-virtual {v1, v0, p2}, Lcom/a/a/a/m;->a([BZ)V

    goto :goto_5

    :cond_3f
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/a/a/a/p;->l:Lcom/a/a/a/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/a/a/a/m;->a([BZ)V

    goto :goto_5
.end method

.method public b()Ljava/io/DataInputStream;
    .registers 3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/a/a/a/p;->a()Ljava/io/InputStream;

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

    iget-boolean v0, p0, Lcom/a/a/a/p;->d:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v0, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    invoke-static {v0, p1}, Lcom/a/a/a/j;->a(La/b/c;La/b/c;)La/b/c;

    :goto_22
    return-void

    :cond_23
    check-cast p1, Lcom/a/a/a/j;

    iput-object p1, p0, Lcom/a/a/a/p;->c:Lcom/a/a/a/j;

    goto :goto_22
.end method

.method public d()Ljava/io/DataOutputStream;
    .registers 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/a/a/a/p;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/p;->d:Z

    return-void
.end method

.method protected abstract f()Z
.end method

.method public h()La/b/c;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/p;->b:La/b/c;

    invoke-static {v0}, Lcom/a/a/a/j;->b(La/b/c;)Lcom/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation object was created by an OBEX server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/p;->d:Z

    return v0
.end method
