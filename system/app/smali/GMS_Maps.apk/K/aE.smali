.class LK/aE;
.super Ljava/lang/Object;

# interfaces
.implements LK/am;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:LK/P;

.field final c:I

.field final d:LK/am;

.field volatile e:LK/aK;


# direct methods
.method constructor <init>(LK/P;Ljava/lang/Object;ILK/am;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/P;->f()LK/aK;

    move-result-object v0

    iput-object v0, p0, LK/aE;->e:LK/aK;

    iput-object p1, p0, LK/aE;->b:LK/P;

    iput-object p2, p0, LK/aE;->a:Ljava/lang/Object;

    iput p3, p0, LK/aE;->c:I

    iput-object p4, p0, LK/aE;->d:LK/am;

    return-void
.end method


# virtual methods
.method public a()LK/aK;
    .registers 2

    iget-object v0, p0, LK/aE;->e:LK/aK;

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

    iget-object v0, p0, LK/aE;->e:LK/aK;

    iput-object p1, p0, LK/aE;->e:LK/aK;

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

    iget-object v0, p0, LK/aE;->d:LK/am;

    return-object v0
.end method

.method public b(LK/aK;)V
    .registers 3

    iget-object v0, p0, LK/aE;->b:LK/P;

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

    iget v0, p0, LK/aE;->c:I

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

    iget-object v0, p0, LK/aE;->a:Ljava/lang/Object;

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
