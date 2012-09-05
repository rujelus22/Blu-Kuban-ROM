.class Lx/aG;
.super Lx/f;


# instance fields
.field final synthetic d:Lx/aF;


# direct methods
.method constructor <init>(Lx/aF;)V
    .registers 2

    iput-object p1, p0, Lx/aG;->d:Lx/aF;

    invoke-direct {p0, p1}, Lx/f;-><init>(Lx/d;)V

    return-void
.end method


# virtual methods
.method protected a(II)[B
    .registers 5

    invoke-static {}, Lt/ao;->q()I

    move-result v0

    add-int/2addr v0, p1

    new-array v0, v0, [B

    iget v1, p0, Lx/aG;->a:I

    invoke-static {v1, p2, v0}, Lt/ao;->a(II[B)V

    return-object v0
.end method

.method protected b(I)Lt/ae;
    .registers 10

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lx/aG;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lx/aG;->d:Lx/aF;

    iget-wide v0, v0, Lx/aF;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_43

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-object v2, p0, Lx/aG;->d:Lx/aF;

    iget-wide v2, v2, Lx/aF;->h:J

    add-long v4, v0, v2

    :goto_26
    invoke-virtual {p0, p1}, Lx/aG;->a(I)Lx/r;

    move-result-object v0

    invoke-virtual {v0}, Lx/r;->a()Lt/af;

    move-result-object v0

    iget-object v1, p0, Lx/aG;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iget-object v3, p0, Lx/aG;->d:Lx/aF;

    iget-object v3, v3, Lx/aF;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static/range {v0 .. v7}, Lt/ao;->a(Lt/af;[BILcom/google/android/maps/driveabout/vector/cU;JJ)Lt/ao;

    move-result-object v0

    iget-object v1, p0, Lx/aG;->d:Lx/aF;

    iget-object v1, v1, Lx/aF;->d:Laf/a;

    invoke-interface {v0, v1}, Lt/ae;->c(Laf/a;)V

    goto :goto_9

    :cond_43
    move-wide v4, v6

    goto :goto_26
.end method

.method protected c(I)[B
    .registers 3

    iget-object v0, p0, Lx/aG;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
