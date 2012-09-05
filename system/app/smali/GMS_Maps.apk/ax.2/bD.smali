.class public Lax/bD;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;
.implements Lax/aE;
.implements Lcom/google/googlenav/login/i;


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Lax/bF;

.field private c:Lax/aE;

.field private d:LaJ/B;

.field private e:Ljava/lang/Long;

.field private final f:Lcom/google/googlenav/android/ac;

.field private g:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ac;Lap/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lax/bD;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lax/bD;->g:Ljava/util/Vector;

    iput-object p1, p0, Lax/bD;->f:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method public static a(LaJ/B;JLaJ/B;)Z
    .registers 9

    const-wide/16 v0, 0x32

    const/4 v2, 0x0

    if-nez p3, :cond_7

    move v0, v2

    :goto_6
    return v0

    :cond_7
    if-nez p0, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_18

    const-wide/32 v3, 0x1869f

    cmp-long v3, p1, v3

    if-nez v3, :cond_1a

    :cond_18
    move v0, v2

    goto :goto_6

    :cond_1a
    cmp-long v3, p1, v0

    if-gez v3, :cond_1f

    move-wide p1, v0

    :cond_1f
    invoke-virtual {p3, p0}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v0

    mul-long v3, p1, p1

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2b

    move v0, v2

    goto :goto_6

    :cond_2b
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lax/bD;->d:LaJ/B;

    iput-object v0, p0, Lax/bD;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 3

    iget-object v1, p0, Lax/bD;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lax/bD;->b:Lax/bF;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized C_()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized E_()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/aq;

    const/4 v2, 0x2

    iget-object v3, p0, Lax/bD;->f:Lcom/google/googlenav/android/ac;

    const/4 v4, 0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lax/aq;-><init>(ILax/aE;Lcom/google/googlenav/android/ac;Z)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized F_()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public a(ILaE/h;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lax/bD;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lax/bD;->g:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/m;

    invoke-interface {v0, p1, p2}, LaE/m;->a(ILaE/h;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method

.method public a(LaE/m;)V
    .registers 3

    iget-object v0, p0, Lax/bD;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lax/bD;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lax/bD;->g:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/m;

    invoke-interface {v0, p1, p2}, LaE/m;->a(LaJ/B;LaE/h;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    iget-object v6, p0, Lax/bD;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1c
    new-instance v0, Lax/bF;

    invoke-virtual {p2}, LaE/h;->r()LaJ/B;

    move-result-object v1

    invoke-virtual {p2}, LaE/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, LaE/h;->i()I

    move-result v3

    invoke-virtual {p2}, LaE/h;->A()Lt/y;

    move-result-object v4

    invoke-virtual {p2}, LaE/h;->g()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lax/bF;-><init>(LaJ/B;Ljava/lang/String;ILt/y;I)V

    iput-object v0, p0, Lax/bD;->b:Lax/bF;

    monitor-exit v6

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public a(LaJ/B;Ljava/lang/Long;Lam/b;ZLax/aZ;)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lax/bD;->d()V

    if-eqz p4, :cond_13

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/aY;

    invoke-direct {v1, v7, p5}, Lax/aY;-><init>(ILax/aZ;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_13
    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lax/aO;->f()V

    :cond_1c
    iget-object v0, p0, Lax/bD;->c:Lax/aE;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lax/bD;->c:Lax/aE;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lax/aE;->a(LaJ/B;Ljava/lang/Long;Lam/b;ZLax/aZ;)V

    :goto_2a
    if-eqz p1, :cond_a3

    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_33
    const/4 v1, -0x1

    new-instance v2, Lax/aG;

    invoke-direct {v2}, Lax/aG;-><init>()V

    invoke-virtual {v2, p1}, Lax/aG;->a(LaJ/B;)Lax/aG;

    move-result-object v2

    const-string v3, "manual"

    invoke-virtual {v2, v3}, Lax/aG;->a(Ljava/lang/String;)Lax/aG;

    move-result-object v2

    invoke-virtual {v2, v0}, Lax/aG;->a(I)Lax/aG;

    move-result-object v0

    invoke-virtual {v0, v7}, Lax/aG;->a(Z)Lax/aG;

    move-result-object v0

    invoke-virtual {v0, v7}, Lax/aG;->b(Z)Lax/aG;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lax/aG;->a(J)Lax/aG;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->at()I

    move-result v2

    invoke-virtual {v0, v2}, Lax/aG;->b(I)Lax/aG;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->av()Z

    move-result v2

    invoke-virtual {v0, v2}, Lax/aG;->d(Z)Lax/aG;

    move-result-object v0

    invoke-virtual {v0, p0}, Lax/aG;->a(Lax/aE;)Lax/aG;

    move-result-object v0

    iget-object v2, p0, Lax/bD;->f:Lcom/google/googlenav/android/ac;

    invoke-virtual {v0, v2}, Lax/aG;->a(Lcom/google/googlenav/android/ac;)Lax/aG;

    move-result-object v0

    new-instance v2, Lax/bE;

    invoke-direct {v2, p0}, Lax/bE;-><init>(Lax/bD;)V

    invoke-virtual {v0, v2}, Lax/aG;->a(Lax/aH;)Lax/aG;

    move-result-object v0

    invoke-virtual {v0, v6}, Lax/aG;->c(Z)Lax/aG;

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lax/aG;->b(J)Lax/aG;

    move-result-object v0

    invoke-virtual {v0, v1}, Lax/aG;->c(I)Lax/aG;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v0}, Lax/aG;->a()Lax/aF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    :cond_a3
    return-void

    :cond_a4
    iput-object p1, p0, Lax/bD;->d:LaJ/B;

    iput-object p2, p0, Lax/bD;->e:Ljava/lang/Long;

    goto :goto_2a

    :cond_a9
    move v0, v6

    goto :goto_33
.end method

.method public a(Lax/aE;)V
    .registers 8

    const/4 v3, 0x0

    iput-object p1, p0, Lax/bD;->c:Lax/aE;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lax/bD;->d:LaJ/B;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lax/bD;->d:LaJ/B;

    iget-object v2, p0, Lax/bD;->e:Ljava/lang/Long;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lax/aE;->a(LaJ/B;Ljava/lang/Long;Lam/b;ZLax/aZ;)V

    invoke-direct {p0}, Lax/bD;->d()V

    :cond_16
    return-void
.end method

.method public a(ZLax/aZ;)V
    .registers 6

    invoke-direct {p0}, Lax/bD;->d()V

    if-eqz p1, :cond_12

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/aY;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lax/aY;-><init>(ILax/aZ;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_12
    invoke-static {}, Lax/aO;->a()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lax/aO;->e()V

    iget-object v0, p0, Lax/bD;->c:Lax/aE;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lax/bD;->c:Lax/aE;

    invoke-interface {v0, p1, p2}, Lax/aE;->a(ZLax/aZ;)V

    :cond_24
    return-void
.end method

.method public b(LaE/m;)V
    .registers 3

    iget-object v0, p0, Lax/bD;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(ZLax/aZ;)V
    .registers 6

    invoke-direct {p0}, Lax/bD;->d()V

    if-eqz p1, :cond_12

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/aY;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lax/aY;-><init>(ILax/aZ;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_12
    invoke-static {}, Lax/aO;->c()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lax/aO;->g()V

    iget-object v0, p0, Lax/bD;->c:Lax/aE;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lax/bD;->c:Lax/aE;

    invoke-interface {v0, p1, p2}, Lax/aE;->b(ZLax/aZ;)V

    :cond_24
    return-void
.end method

.method public c()Lax/bF;
    .registers 2

    iget-object v0, p0, Lax/bD;->b:Lax/bF;

    return-object v0
.end method

.method public i()V
    .registers 1

    return-void
.end method
