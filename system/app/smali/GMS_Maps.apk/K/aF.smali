.class LK/aF;
.super LK/aE;

# interfaces
.implements LK/am;


# instance fields
.field f:LK/am;

.field g:LK/am;


# direct methods
.method constructor <init>(LK/P;Ljava/lang/Object;ILK/am;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, LK/aE;-><init>(LK/P;Ljava/lang/Object;ILK/am;)V

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/aF;->f:LK/am;

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/aF;->g:LK/am;

    return-void
.end method


# virtual methods
.method public c(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/aF;->f:LK/am;

    return-void
.end method

.method public d(LK/am;)V
    .registers 2

    iput-object p1, p0, LK/aF;->g:LK/am;

    return-void
.end method

.method public h()LK/am;
    .registers 2

    iget-object v0, p0, LK/aF;->f:LK/am;

    return-object v0
.end method

.method public i()LK/am;
    .registers 2

    iget-object v0, p0, LK/aF;->g:LK/am;

    return-object v0
.end method
