.class public Lcom/google/googlenav/friend/reporting/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/friend/reporting/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/i;->a(Lcom/google/googlenav/friend/reporting/i;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/reporting/i;Lcom/google/googlenav/friend/reporting/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/reporting/g;-><init>(Lcom/google/googlenav/friend/reporting/i;)V

    return-void
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    return-object v0
.end method

.method public b()I
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public e()J
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public g()F
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lam/b;->f(I)F

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public i()F
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lam/b;->f(I)F

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public k()D
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lam/b;->g(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public l()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public m()F
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->f(I)F

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public o()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public q()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%s: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "lat"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/g;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%s: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "lng"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/g;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%s: %f\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "accuracy"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/g;->m()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%s: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "timestamp"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/g;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    return v0
.end method

.method public y()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->a:Lam/b;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method
