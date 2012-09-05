.class public Lcom/google/googlenav/friend/reporting/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lam/b;

    sget-object v1, LbF/ax;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/reporting/i;)Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/reporting/g;
    .registers 3

    new-instance v0, Lcom/google/googlenav/friend/reporting/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/friend/reporting/g;-><init>(Lcom/google/googlenav/friend/reporting/i;Lcom/google/googlenav/friend/reporting/h;)V

    return-object v0
.end method

.method public a(D)Lcom/google/googlenav/friend/reporting/i;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lam/b;->a(ID)V

    return-object p0
.end method

.method public a(F)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lam/b;->a(IF)V

    return-object p0
.end method

.method public a(I)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object p0
.end method

.method public a(II)Lcom/google/googlenav/friend/reporting/i;
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v2, p1}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILam/b;)V

    return-object p0
.end method

.method public a(J)Lcom/google/googlenav/friend/reporting/i;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lam/b;->b(IJ)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-object p0
.end method

.method public b(F)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lam/b;->a(IF)V

    return-object p0
.end method

.method public b(I)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-object p0
.end method

.method public c(F)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lam/b;->a(IF)V

    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/friend/reporting/i;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/i;->a:Lam/b;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object p0
.end method
