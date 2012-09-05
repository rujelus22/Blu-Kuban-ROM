.class LK/at;
.super Ljava/lang/Object;

# interfaces
.implements LK/am;


# instance fields
.field a:LK/am;

.field b:LK/am;

.field final synthetic c:LK/as;


# direct methods
.method constructor <init>(LK/as;)V
    .registers 2

    iput-object p1, p0, LK/at;->c:LK/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, LK/at;->a:LK/am;

    iput-object p0, p0, LK/at;->b:LK/am;

    return-void
.end method


# virtual methods
.method public a()LK/aK;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method public a(LK/aK;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/at;->a:LK/am;

    return-void
.end method

.method public b()LK/am;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(LK/aK;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/at;->b:LK/am;

    return-void
.end method

.method public c()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(LK/am;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(LK/am;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public f()LK/am;
    .registers 2

    iget-object v0, p0, LK/at;->a:LK/am;

    return-object v0
.end method

.method public g()LK/am;
    .registers 2

    iget-object v0, p0, LK/at;->b:LK/am;

    return-object v0
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
