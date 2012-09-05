.class LK/aH;
.super LK/aE;

# interfaces
.implements LK/am;


# instance fields
.field volatile f:J

.field g:LK/am;

.field h:LK/am;

.field i:LK/am;

.field j:LK/am;


# direct methods
.method constructor <init>(LK/P;Ljava/lang/Object;ILK/am;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, LK/aE;-><init>(LK/P;Ljava/lang/Object;ILK/am;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, LK/aH;->f:J

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/aH;->g:LK/am;

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/aH;->h:LK/am;

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/aH;->i:LK/am;

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/aH;->j:LK/am;

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, LK/aH;->f:J

    return-void
.end method

.method public a(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/aH;->g:LK/am;

    return-void
.end method

.method public b(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/aH;->h:LK/am;

    return-void
.end method

.method public c(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/aH;->i:LK/am;

    return-void
.end method

.method public d(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/aH;->j:LK/am;

    return-void
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, LK/aH;->f:J

    return-wide v0
.end method

.method public f()LK/am;
    .registers 2

    iget-object v0, p0, LK/aH;->g:LK/am;

    return-object v0
.end method

.method public g()LK/am;
    .registers 2

    iget-object v0, p0, LK/aH;->h:LK/am;

    return-object v0
.end method

.method public h()LK/am;
    .registers 2

    iget-object v0, p0, LK/aH;->i:LK/am;

    return-object v0
.end method

.method public i()LK/am;
    .registers 2

    iget-object v0, p0, LK/aH;->j:LK/am;

    return-object v0
.end method
