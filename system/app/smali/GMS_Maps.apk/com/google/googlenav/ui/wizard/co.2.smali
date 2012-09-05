.class public Lcom/google/googlenav/ui/wizard/co;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lay/r;

.field private final b:Lcom/google/googlenav/android/ac;

.field private c:Lcom/google/googlenav/ui/wizard/cs;


# direct methods
.method public constructor <init>(Lay/r;Lcom/google/googlenav/android/ac;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/co;->a:Lay/r;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/co;->b:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/co;)Lcom/google/googlenav/ui/wizard/cs;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/co;->c:Lcom/google/googlenav/ui/wizard/cs;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/co;Lax/aB;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/co;->e(Lax/aB;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/co;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/co;->b:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method private e(Lax/aB;)V
    .registers 5

    invoke-virtual {p1}, Lax/aB;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/co;->a:Lay/r;

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    new-instance v1, Lcom/google/googlenav/ui/bG;

    const v2, 0x7f090085

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/co;->a:Lay/r;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lay/r;->a(Lcom/google/googlenav/ui/bG;Lay/q;)V

    :cond_18
    return-void
.end method


# virtual methods
.method a(Lax/ah;)Lax/aj;
    .registers 3

    invoke-virtual {p1}, Lax/ah;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aj;

    return-object v0
.end method

.method a(Lax/aq;)Lax/ar;
    .registers 3

    invoke-virtual {p1}, Lax/aq;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/ar;

    return-object v0
.end method

.method public a(Lax/aB;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lax/aB;->b(Z)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/cp;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/ui/wizard/cp;-><init>(Lcom/google/googlenav/ui/wizard/co;Lap/c;Lax/aB;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cp;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/co;->c:Lcom/google/googlenav/ui/wizard/cs;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cs;->a()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/co;->c:Lcom/google/googlenav/ui/wizard/cs;

    return-void
.end method

.method b(Lax/aB;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lax/aq;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, LK/bn;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bn;

    move-result-object v3

    invoke-direct {v2, v3, v6, v1}, Lax/aq;-><init>(Ljava/util/List;Lax/aC;Z)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/co;->a(Lax/aq;)Lax/ar;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-boolean v3, v2, Lax/ar;->a:Z

    if-eqz v3, :cond_3e

    new-instance v3, Lax/as;

    iget-object v2, v2, Lax/ar;->b:Lam/b;

    invoke-direct {v3, v2}, Lax/as;-><init>(Lam/b;)V

    invoke-virtual {v3, v1}, Lax/as;->a(I)Lam/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lax/aB;->b(Lam/b;)V

    invoke-virtual {v3, v5}, Lax/as;->a(I)Lam/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lax/aB;->a(Lam/b;)V

    invoke-virtual {p1}, Lax/aB;->b()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {p1, v1}, Lax/aB;->b(Z)V

    :goto_3d
    return-void

    :cond_3e
    invoke-virtual {p1, v0}, Lax/aB;->b(Z)V

    goto :goto_3d

    :cond_42
    new-instance v2, Lax/ah;

    new-instance v3, Laf/h;

    invoke-direct {v3}, Laf/h;-><init>()V

    invoke-direct {v2, v3, v6}, Lax/ah;-><init>(Laf/h;Lax/ai;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/co;->a(Lax/ah;)Lax/aj;

    move-result-object v3

    if-eqz v2, :cond_63

    iget-boolean v2, v3, Lax/aj;->a:Z

    if-eqz v2, :cond_63

    iget-object v2, v3, Lax/aj;->b:[Lam/b;

    array-length v2, v2

    if-le v2, v1, :cond_5c

    move v0, v1

    :cond_5c
    invoke-virtual {p1, v0}, Lax/aB;->a(Z)V

    invoke-virtual {p1, v1}, Lax/aB;->b(Z)V

    goto :goto_3d

    :cond_63
    invoke-virtual {p1, v0}, Lax/aB;->b(Z)V

    goto :goto_3d
.end method

.method public c(Lax/aB;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lax/aB;->b(Z)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/cr;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/ui/wizard/cr;-><init>(Lcom/google/googlenav/ui/wizard/co;Lap/c;Lax/aB;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cr;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/co;->c:Lcom/google/googlenav/ui/wizard/cs;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cs;->a()V

    return-void
.end method

.method d(Lax/aB;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/aB;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lax/aY;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lax/aY;-><init>(ZIILax/aZ;)V

    invoke-virtual {v0}, Lax/aY;->n()Ljava/lang/Object;

    :cond_11
    invoke-virtual {p1}, Lax/aB;->j()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v2, v2}, Lam/b;->b(IZ)V

    new-instance v1, Lax/aV;

    invoke-direct {v1, v0, v3}, Lax/aV;-><init>(Lam/b;Lax/aW;)V

    invoke-virtual {v1}, Lax/aV;->n()Ljava/lang/Object;

    :cond_29
    return-void
.end method
