.class public Lax/j;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final b:Lam/b;


# instance fields
.field private c:Lam/b;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lax/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lax/j;->a:Z

    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->y:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    sput-object v0, Lax/j;->b:Lam/b;

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lam/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lax/j;->c:Lam/b;

    iput-object p1, p0, Lax/j;->c:Lam/b;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lax/j;->d:J

    return-void
.end method

.method private f()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lax/j;->d:J

    return-wide v0
.end method

.method public a(Lcom/google/googlenav/ca;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    iget-object v0, p1, Lcom/google/googlenav/ca;->a:Lam/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/j;->c:Lam/b;

    iget-object v1, p1, Lcom/google/googlenav/ca;->a:Lam/b;

    invoke-virtual {v0, v5, v1}, Lam/b;->a(ILam/b;)V

    :cond_e
    iget-object v0, p1, Lcom/google/googlenav/ca;->b:Lam/b;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v0, v5}, Lam/b;->l(I)I

    move-result v1

    move v0, v2

    :goto_19
    if-ge v0, v1, :cond_35

    iget-object v3, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v3, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    iget-object v4, p1, Lcom/google/googlenav/ca;->b:Lam/b;

    invoke-static {v4, v3}, Lcom/google/googlenav/ax;->a(Lam/b;Lam/b;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v3, v5, v0}, Lam/b;->g(II)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    iget-object v0, p1, Lcom/google/googlenav/ca;->c:Lam/b;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lax/j;->c:Lam/b;

    iget-object v1, p1, Lcom/google/googlenav/ca;->c:Lam/b;

    invoke-virtual {v0, v6, v1}, Lam/b;->a(ILam/b;)V

    :cond_40
    iget-object v0, p1, Lcom/google/googlenav/ca;->d:Lam/b;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v0, v6}, Lam/b;->l(I)I

    move-result v1

    move v0, v2

    :goto_4b
    if-ge v0, v1, :cond_67

    iget-object v2, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v2, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/ca;->d:Lam/b;

    invoke-static {v3, v2}, Lcom/google/googlenav/ax;->a(Lam/b;Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v2, v6, v0}, Lam/b;->g(II)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_67
    iget-object v0, p1, Lcom/google/googlenav/ca;->e:Lam/b;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lax/j;->c:Lam/b;

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/googlenav/ca;->e:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_74
    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lax/j;->c:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-void
.end method

.method public a(Lam/b;)Z
    .registers 7

    const/4 v4, 0x4

    const/4 v0, 0x0

    iget-object v1, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v1, v4}, Lam/b;->l(I)I

    move-result v2

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_18

    iget-object v3, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v3, v4, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/googlenav/ax;->a(Lam/b;Lam/b;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lax/j;->c:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    invoke-direct {p0}, Lax/j;->f()V

    return-void
.end method

.method public b()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lax/j;->b:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    goto :goto_f
.end method

.method public b(Lam/b;)Z
    .registers 7

    const/4 v4, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v1, v4}, Lam/b;->l(I)I

    move-result v2

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_18

    iget-object v3, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v3, v4, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/googlenav/ax;->a(Lam/b;Lam/b;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public c()Z
    .registers 3

    const/4 v1, 0x3

    iget-object v0, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->j(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lax/j;->c:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lax/j;->b:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v0

    goto :goto_f
.end method

.method public d()Lam/b;
    .registers 3

    iget-object v0, p0, Lax/j;->c:Lam/b;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lam/b;
    .registers 2

    iget-object v0, p0, Lax/j;->c:Lam/b;

    return-object v0
.end method
