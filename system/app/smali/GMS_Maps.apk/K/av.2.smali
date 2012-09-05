.class LK/av;
.super Lcom/google/common/base/m;

# interfaces
.implements LK/am;


# instance fields
.field final a:LK/P;

.field final b:I

.field final c:LK/am;

.field volatile d:LK/aK;


# direct methods
.method constructor <init>(LK/P;Ljava/lang/Object;ILK/am;)V
    .registers 6

    sget-object v0, LK/al;->a:Lcom/google/common/base/h;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/m;-><init>(Ljava/lang/Object;Lcom/google/common/base/h;)V

    invoke-static {}, LK/P;->f()LK/aK;

    move-result-object v0

    iput-object v0, p0, LK/av;->d:LK/aK;

    iput-object p1, p0, LK/av;->a:LK/P;

    iput p3, p0, LK/av;->b:I

    iput-object p4, p0, LK/av;->c:LK/am;

    return-void
.end method


# virtual methods
.method public a()LK/aK;
    .registers 2

    iget-object v0, p0, LK/av;->d:LK/aK;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(LK/aK;)V
    .registers 3

    iget-object v0, p0, LK/av;->d:LK/aK;

    iput-object p1, p0, LK/av;->d:LK/aK;

    invoke-interface {v0}, LK/aK;->clear()V

    return-void
.end method

.method public a(LK/am;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()LK/am;
    .registers 2

    iget-object v0, p0, LK/av;->c:LK/am;

    return-object v0
.end method

.method public b(LK/aK;)V
    .registers 3

    iget-object v0, p0, LK/av;->a:LK/P;

    invoke-virtual {v0, p0, p1}, LK/P;->a(LK/am;LK/aK;)V

    return-void
.end method

.method public b(LK/am;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LK/av;->b:I

    return v0
.end method

.method public c(LK/am;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/av;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(LK/am;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()LK/am;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finalizeReferent()V
    .registers 1

    invoke-virtual {p0}, LK/av;->j()V

    return-void
.end method

.method public g()LK/am;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public h()LK/am;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i()LK/am;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, LK/av;->a:LK/P;

    invoke-virtual {v0, p0}, LK/P;->a(LK/am;)V

    return-void
.end method
