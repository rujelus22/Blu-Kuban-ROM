.class public Lax/aB;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field private e:Lam/b;

.field private f:Lam/b;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lax/aB;->a:Z

    iput-boolean v0, p0, Lax/aB;->b:Z

    iput-boolean v0, p0, Lax/aB;->c:Z

    iput-boolean v0, p0, Lax/aB;->d:Z

    iput-boolean v0, p0, Lax/aB;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lam/b;)V
    .registers 2

    iput-object p1, p0, Lax/aB;->e:Lam/b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/aB;->g:Z

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lax/aB;->f:Lam/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public b(Lam/b;)V
    .registers 2

    iput-object p1, p0, Lax/aB;->f:Lam/b;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/aB;->a:Z

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lax/aB;->e:Lam/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lax/aB;->e:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    goto :goto_5
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/aB;->b:Z

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lax/aB;->e:Lam/b;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/aB;->c:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lax/aB;->g:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lax/aB;->f:Lam/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lax/aB;->f:Lam/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/aB;->d:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lax/aB;->f:Lam/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lax/aB;->f:Lam/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lax/aB;->a:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lax/aB;->b:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lax/aB;->c:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lax/aB;->d:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lax/aB;->h:Z

    return v0
.end method
