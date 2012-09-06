.class Lcom/a/a/a/f;
.super Lcom/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/a/h;Lcom/a/a/a/j;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/a/a/a/e;-><init>(Lcom/a/a/a/h;CLcom/a/a/a/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    invoke-virtual {p0}, Lcom/a/a/a/f;->g()V

    iget-boolean v0, p0, Lcom/a/a/a/f;->j:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/f;->j:Z

    invoke-virtual {p0}, Lcom/a/a/a/f;->f()V

    iget-object v0, p0, Lcom/a/a/a/f;->i:Lcom/a/a/a/m;

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .registers 3

    invoke-virtual {p0}, Lcom/a/a/a/f;->g()V

    iget-boolean v0, p0, Lcom/a/a/a/f;->h:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-boolean v0, p0, Lcom/a/a/a/f;->l:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the request phase has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/f;->h:Z

    new-instance v0, Lcom/a/a/a/n;

    iget-object v1, p0, Lcom/a/a/a/f;->a:Lcom/a/a/a/h;

    iget v1, v1, Lcom/a/a/a/h;->d:I

    invoke-direct {v0, v1, p0}, Lcom/a/a/a/n;-><init>(ILcom/a/a/a/l;)V

    iput-object v0, p0, Lcom/a/a/a/f;->g:Lcom/a/a/a/n;

    iget-object v0, p0, Lcom/a/a/a/f;->g:Lcom/a/a/a/n;

    return-object v0
.end method
