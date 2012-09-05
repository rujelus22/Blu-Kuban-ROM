.class public LaY/aG;
.super LaY/m;

# interfaces
.implements LaJ/m;
.implements LaM/l;
.implements Lcom/google/android/maps/driveabout/vector/r;
.implements Lcom/google/googlenav/aT;
.implements Lcom/google/googlenav/aX;


# instance fields
.field protected volatile C:Z

.field protected D:I

.field private E:Z

.field private F:J

.field private G:Lbb/d;

.field private H:J

.field private I:Lbb/d;

.field private J:LaJ/H;

.field private K:Z

.field private L:Lbb/F;

.field private M:Ljava/lang/String;

.field private N:Lcom/google/googlenav/layer/m;

.field private O:LaJ/k;

.field private P:Lcom/google/googlenav/layer/s;

.field private Q:Z

.field private R:I

.field private S:Lab/b;

.field private T:Lab/b;

.field private U:Lcom/google/googlenav/ui/wizard/fN;

.field private V:Z

.field private W:Lar/u;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;I)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    iput-boolean v0, p0, LaY/aG;->C:Z

    iput-boolean v0, p0, LaY/aG;->Q:Z

    iput-boolean v0, p0, LaY/aG;->V:Z

    invoke-direct {p0, p5, p6, p7}, LaY/aG;->a(Lcom/google/googlenav/layer/m;LaJ/k;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;LaJ/k;I)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    iput-boolean v0, p0, LaY/aG;->C:Z

    iput-boolean v0, p0, LaY/aG;->Q:Z

    iput-boolean v0, p0, LaY/aG;->V:Z

    invoke-direct {p0, p6, p7, p8}, LaY/aG;->a(Lcom/google/googlenav/layer/m;LaJ/k;I)V

    iget-object v0, p1, Lcom/google/googlenav/ui/D;->e:Lar/u;

    iput-object v0, p0, LaY/aG;->W:Lar/u;

    return-void
.end method

.method static synthetic a(LaY/aG;)Lab/b;
    .registers 2

    iget-object v0, p0, LaY/aG;->S:Lab/b;

    return-object v0
.end method

.method private a(IZ)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaY/aG;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-virtual {p0, p1}, LaY/aG;->b(I)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, LaY/aG;->a(ILjava/lang/Object;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    if-eqz p2, :cond_2d

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, v2}, LaY/aG;->a(ILjava/lang/Object;)V

    goto :goto_24

    :cond_2d
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, LaY/aG;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, LaY/aG;->g:Lbb/d;

    if-nez v0, :cond_24

    invoke-virtual {p0, v2}, LaY/aG;->a(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method private a(LaQ/I;)V
    .registers 6

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    new-instance v2, Lcom/google/googlenav/bc;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {p1}, LaQ/I;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v2

    const/16 v3, 0x4eb

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v2

    const-string v3, "20"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ax()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method static synthetic a(LaY/aG;Lcom/google/googlenav/aV;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, LaY/aG;->a(Lcom/google/googlenav/aV;ZZ)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aV;ZLjava/lang/String;)V
    .registers 8

    const/4 v3, 0x2

    new-instance v0, Lam/b;

    sget-object v1, LbD/c;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aI()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lam/b;->b(ILjava/lang/String;)V

    new-instance v1, Lab/b;

    new-instance v2, LaY/aH;

    invoke-direct {v2, p0, p1, p2}, LaY/aH;-><init>(LaY/aG;Lcom/google/googlenav/aV;Z)V

    invoke-direct {v1, v3, v0, v2}, Lab/b;-><init>(ILam/b;Lab/c;)V

    iput-object v1, p0, LaY/aG;->S:Lab/b;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, LaY/aG;->S:Lab/b;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aV;ZZ)V
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ad()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/aV;->a(Lcom/google/googlenav/aV;)V

    invoke-virtual {p0, v0}, LaY/aG;->b(I)V

    invoke-virtual {p0}, LaY/aG;->R()V

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v6}, LaY/aG;->h(Z)V

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ao;->h()V

    :cond_2f
    :goto_2f
    invoke-direct {p0}, LaY/aG;->bS()V

    invoke-direct {p0}, LaY/aG;->bT()V

    iput-boolean v8, p0, LaY/aG;->C:Z

    return-void

    :cond_38
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->I()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x4c6

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->E()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_7e
    if-eqz p2, :cond_a0

    invoke-static {p1}, LaY/aG;->d(Lcom/google/googlenav/E;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->an()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/aG;->b(I)V

    :cond_8d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, LaY/aG;->bH()Z

    move-result v0

    if-nez v0, :cond_a0

    :cond_9d
    invoke-virtual {p0}, LaY/aG;->ao()Z

    :cond_a0
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-direct {p0}, LaY/aG;->cd()V

    :cond_a9
    iget-object v0, p0, LaY/aG;->I:Lbb/d;

    if-nez v0, :cond_b0

    invoke-direct {p0, p1}, LaY/aG;->h(Lcom/google/googlenav/aV;)V

    :cond_b0
    if-eqz p2, :cond_bc

    iput-boolean v6, p0, LaY/aG;->K:Z

    if-nez p3, :cond_bc

    invoke-direct {p0}, LaY/aG;->bR()LaJ/H;

    move-result-object v0

    iput-object v0, p0, LaY/aG;->J:LaJ/H;

    :cond_bc
    const-string v0, "19"

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    const-string v0, "20"

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ar()Z

    move-result v0

    if-nez v0, :cond_ea

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, LaY/aG;->bH()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_ea
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    invoke-virtual {p0, v0, v9}, LaY/aG;->c(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ar()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->x()Lcom/google/googlenav/ui/wizard/dI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dI;->e()I

    move-result v0

    if-ne v0, v7, :cond_2f

    const/16 v0, 0x76e

    invoke-virtual {p0, v0, v7, v9}, LaY/aG;->a(IILjava/lang/Object;)Z

    goto/16 :goto_2f
.end method

.method private a(Lcom/google/googlenav/ao;Ljava/util/List;)V
    .registers 6

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/google/googlenav/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/googlenav/ui/bG;

    invoke-virtual {p1}, Lcom/google/googlenav/ao;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, LaY/aG;->z:Lay/r;

    invoke-virtual {v1, v0}, Lay/r;->c(Lcom/google/googlenav/ui/bG;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method private a(Lcom/google/googlenav/ba;Z)V
    .registers 8

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aG()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_18
    if-eqz p2, :cond_5f

    iget-object v2, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    new-instance v3, Lcom/google/googlenav/bc;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/bc;->a(Ljava/util/Set;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v3, 0x4eb

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v3, "20"

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ax()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    :cond_5f
    return-void

    :cond_60
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method private a(Lcom/google/googlenav/layer/m;LaJ/k;I)V
    .registers 5

    iput-object p1, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    iput-object p2, p0, LaY/aG;->O:LaJ/k;

    iput p3, p0, LaY/aG;->D:I

    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/layer/s;-><init>(LaY/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaY/aG;->P:Lcom/google/googlenav/layer/s;

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    if-eqz v0, :cond_1e

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p0}, LaM/i;->a(LaM/l;)V

    :cond_1e
    iget-object v0, p0, LaY/aG;->v:Lba/a;

    check-cast v0, Lba/i;

    invoke-virtual {v0, p3}, Lba/i;->c(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/aG;->h(Z)V

    return-void
.end method

.method private b(ILcom/google/googlenav/ah;)V
    .registers 9

    const/4 v5, 0x0

    new-instance v2, LaY/aQ;

    invoke-direct {v2, p0, p1}, LaY/aQ;-><init>(LaY/aG;I)V

    iget-object v0, p0, LaY/aG;->G:Lbb/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaY/aG;->G:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaY/aG;->F:J

    new-instance v0, Lcom/google/googlenav/ui/android/T;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    invoke-virtual {v1}, Lbb/e;->c()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/T;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;LaY/aG;Lcom/google/googlenav/ah;Lah/f;)V

    iput-object v0, p0, LaY/aG;->G:Lbb/d;

    return-void
.end method

.method static synthetic b(LaY/aG;)V
    .registers 1

    invoke-direct {p0}, LaY/aG;->bU()V

    return-void
.end method

.method private bR()LaJ/H;
    .registers 7

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->F()V

    iget-object v1, p0, LaY/aG;->d:LaJ/u;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->Q()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->R()I

    move-result v3

    invoke-virtual {p0}, LaY/aG;->bH()Z

    move-result v4

    invoke-virtual {p0, v4}, LaY/aG;->c(Z)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, LaJ/u;->a(IIII)LaJ/Y;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->M()LaJ/B;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ao()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, LaY/aG;->bH()Z

    move-result v2

    invoke-virtual {p0, v2}, LaY/aG;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, LaY/aG;->q()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    :cond_4b
    invoke-virtual {p0, v0, v1}, LaY/aG;->a(LaJ/B;LaJ/Y;)LaJ/B;

    move-result-object v0

    iget-object v2, p0, LaY/aG;->d:LaJ/u;

    invoke-virtual {v2, v0, v1}, LaJ/u;->d(LaJ/B;LaJ/Y;)V

    iget-object v2, p0, LaY/aG;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    invoke-virtual {v2, v1}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v1

    invoke-virtual {v1, v0}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    return-object v0
.end method

.method private bS()V
    .registers 4

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, LaY/aK;

    invoke-direct {v1, p0, v0}, LaY/aK;-><init>(LaY/aG;Lap/c;)V

    invoke-virtual {v1}, LaY/aK;->g()V

    :cond_10
    invoke-virtual {p0}, LaY/aG;->bQ()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aH()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aS;-><init>(LaJ/B;I)V

    invoke-virtual {v1, p0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :goto_3c
    return-void

    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, LaY/aG;->M:Ljava/lang/String;

    goto :goto_3c
.end method

.method private bT()V
    .registers 6

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_17

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, LaY/aG;->a(Lcom/google/googlenav/D;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_29

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, LaY/aG;->f(I)V

    :cond_29
    return-void
.end method

.method private bU()V
    .registers 8

    const/4 v6, 0x3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aF()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    iget-object v2, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    new-instance v3, Lcom/google/googlenav/bc;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/bc;->a(Ljava/util/Map;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v3, 0x4eb

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v3, "20"

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ax()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void

    :cond_62
    new-instance v3, Lcom/google/googlenav/aY;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21
.end method

.method private bV()V
    .registers 4

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, LaY/aG;->f(I)V

    :goto_b
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/aG;->e(Lcom/google/googlenav/aV;)Lcom/google/googlenav/ah;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, LaY/aG;->a(ILcom/google/googlenav/ah;)V

    invoke-direct {p0, v0}, LaY/aG;->l(Lcom/google/googlenav/ah;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, LaY/Y;->b(Lcom/google/googlenav/layer/m;Z)LaY/t;

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_36
    invoke-virtual {p0}, LaY/aG;->m()V

    :cond_39
    return-void

    :cond_3a
    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, LaY/aG;->f(I)V

    goto :goto_b

    :cond_46
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LaY/aG;->f(I)V

    goto :goto_b
.end method

.method private bW()V
    .registers 2

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/aG;->b(I)V

    invoke-virtual {p0}, LaY/aG;->ao()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/aG;->b(Z)V

    return-void
.end method

.method private bX()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v2}, Lcom/google/googlenav/E;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LaY/aG;->bv()Lcom/google/googlenav/ah;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-static {v1}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gmmsmh=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bY()Z
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_29

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_26

    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_29
    const/4 v0, 0x1

    goto :goto_25
.end method

.method private bZ()Z
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_a
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v1

    if-ge v0, v1, :cond_27

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_27
    const/4 v0, 0x1

    goto :goto_23
.end method

.method static synthetic c(LaY/aG;)V
    .registers 1

    invoke-direct {p0}, LaY/aG;->cb()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v8, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v4

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_74

    move v0, v1

    :goto_11
    invoke-virtual {v4}, Lcom/google/googlenav/aV;->aF()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1c

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    if-nez v0, :cond_76

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    :goto_2f
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-virtual {v4}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->a(Ljava/util/Map;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/16 v3, 0x4eb

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const-string v3, "20"

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/aV;->ax()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void

    :cond_74
    move v0, v2

    goto :goto_11

    :cond_76
    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/google/googlenav/aZ;

    const-string v7, ""

    invoke-direct {v6, v2, v7, p2}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/googlenav/aY;

    const/16 v7, 0x113

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v7, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v8, v1, v0}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f
.end method

.method private ca()Lcom/google/googlenav/n;
    .registers 2

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/n;

    return-object v0
.end method

.method private cb()V
    .registers 3

    iget-object v0, p0, LaY/aG;->G:Lbb/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaY/aG;->G:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/aG;->G:Lbb/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaY/aG;->F:J

    :cond_10
    return-void
.end method

.method private cc()V
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LaY/aG;->F:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    invoke-direct {p0}, LaY/aG;->cb()V

    :cond_18
    return-void
.end method

.method private cd()V
    .registers 5

    iget-object v0, p0, LaY/aG;->I:Lbb/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/aG;->I:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_9
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ao()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;I)V

    :goto_21
    return-void

    :cond_22
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, LaY/aG;->H:J

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->t()Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance v1, LaY/aR;

    invoke-direct {v1, p0}, LaY/aR;-><init>(LaY/aG;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xda

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aV;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->an:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    :goto_67
    new-instance v2, Lcom/google/googlenav/ui/android/aa;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v3

    invoke-virtual {v3}, Lbb/e;->c()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/googlenav/ui/android/aa;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;Lcom/google/googlenav/ui/bh;)V

    iput-object v2, p0, LaY/aG;->I:Lbb/d;

    const/16 v0, 0x38

    const-string v1, "v"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    goto :goto_21

    :cond_7e
    new-instance v1, LaY/aJ;

    invoke-direct {v1, p0}, LaY/aJ;-><init>(LaY/aG;)V

    const/16 v0, 0xdb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->an:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    goto :goto_67
.end method

.method private ce()V
    .registers 3

    iget-object v0, p0, LaY/aG;->I:Lbb/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaY/aG;->I:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/aG;->I:Lbb/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaY/aG;->H:J

    :cond_10
    return-void
.end method

.method private cf()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LaY/aG;->H:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    invoke-direct {p0}, LaY/aG;->ce()V

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->q()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    :cond_28
    return-void
.end method

.method static synthetic d(LaY/aG;)V
    .registers 1

    invoke-direct {p0}, LaY/aG;->bV()V

    return-void
.end method

.method public static d(Lcom/google/googlenav/E;)Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-interface {p0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge v1, v0, :cond_19

    invoke-interface {p0, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic e(LaY/aG;)V
    .registers 1

    invoke-direct {p0}, LaY/aG;->ce()V

    return-void
.end method

.method private h(Lcom/google/googlenav/aV;)V
    .registers 3

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eq v0, p0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, LaY/aG;->e(Lcom/google/googlenav/aV;)Lcom/google/googlenav/ah;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-direct {p0, v0}, LaY/aG;->k(Lcom/google/googlenav/ah;)V

    goto :goto_c

    :cond_21
    invoke-virtual {p0, p1}, LaY/aG;->f(Lcom/google/googlenav/aV;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, p1}, LaY/aG;->j(Lcom/google/googlenav/aV;)V

    goto :goto_c

    :cond_2b
    invoke-direct {p0, p1}, LaY/aG;->i(Lcom/google/googlenav/aV;)Z

    goto :goto_c
.end method

.method private i(Lcom/google/googlenav/aV;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v4

    check-cast v4, Lcom/google/googlenav/ah;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {v4}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {p0, v4, v0}, LaY/aG;->b(Lcom/google/googlenav/ah;Z)Lah/f;

    move-result-object v5

    :goto_1a
    new-instance v2, LaY/aP;

    invoke-direct {v2, p0}, LaY/aP;-><init>(LaY/aG;)V

    iget-object v0, p0, LaY/aG;->G:Lbb/d;

    if-eqz v0, :cond_28

    iget-object v0, p0, LaY/aG;->G:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaY/aG;->F:J

    new-instance v0, Lcom/google/googlenav/ui/android/T;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    invoke-virtual {v1}, Lbb/e;->c()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/T;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;LaY/aG;Lcom/google/googlenav/ah;Lah/f;)V

    iput-object v0, p0, LaY/aG;->G:Lbb/d;

    const/4 v0, 0x1

    goto :goto_f

    :cond_40
    const/4 v5, 0x0

    goto :goto_1a
.end method

.method private i(Lcom/google/googlenav/ah;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->al()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    :pswitch_8
    return v0

    :cond_9
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->c()B

    move-result v2

    packed-switch v2, :pswitch_data_14

    :pswitch_10
    move v0, v1

    goto :goto_8

    :pswitch_12
    move v0, v1

    goto :goto_8

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private j(Lcom/google/googlenav/ah;)I
    .registers 5

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    if-ne v2, p1, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private j(I)Lcom/google/googlenav/ah;
    .registers 3

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    return-object v0
.end method

.method private j(Lcom/google/googlenav/aV;)V
    .registers 4

    invoke-virtual {p0, p1}, LaY/aG;->g(Lcom/google/googlenav/aV;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-direct {p0, v1, v0}, LaY/aG;->b(ILcom/google/googlenav/ah;)V

    goto :goto_7
.end method

.method private k(I)I
    .registers 5

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    if-ge v0, v2, :cond_1d

    invoke-direct {p0, v0}, LaY/aG;->j(I)Lcom/google/googlenav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->af()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez p1, :cond_18

    :goto_17
    return v0

    :cond_18
    add-int/lit8 p1, p1, -0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    const/4 v0, -0x1

    goto :goto_17
.end method

.method private k(Lcom/google/googlenav/ah;)V
    .registers 5

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, LaY/aG;->f(I)V

    new-instance v0, LaY/aO;

    invoke-direct {v0, p0}, LaY/aO;-><init>(LaY/aG;)V

    iget-object v1, p0, LaY/aG;->G:Lbb/d;

    if-eqz v1, :cond_13

    iget-object v1, p0, LaY/aG;->G:Lbb/d;

    invoke-interface {v1}, Lbb/d;->c()V

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, LaY/aG;->F:J

    new-instance v1, Lcom/google/googlenav/ui/android/ac;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v2

    invoke-virtual {v2}, Lbb/e;->c()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/google/googlenav/ui/android/ac;-><init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;LaY/aG;Lcom/google/googlenav/ah;)V

    iput-object v1, p0, LaY/aG;->G:Lbb/d;

    return-void
.end method

.method private l(Lcom/google/googlenav/ah;)Lcom/google/googlenav/layer/m;
    .registers 10

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/da;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILjava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lam/b;->h(II)V

    const/16 v1, 0x11

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->ar()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->a(I[B)V

    new-instance v1, Lam/b;

    sget-object v2, LbD/da;->q:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lam/b;->a(ILam/b;)V

    new-instance v1, Lcom/google/googlenav/layer/m;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/m;-><init>(Lam/b;)V

    return-object v1
.end method


# virtual methods
.method public M()Z
    .registers 2

    invoke-direct {p0}, LaY/aG;->bY()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, LaY/aG;->ah()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public N()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected O()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    invoke-virtual {p0}, LaY/aG;->bH()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0}, LaY/m;->P()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x40f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method protected X()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, LaY/m;->X()Z

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->h()[Lcom/google/googlenav/T;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_10
    iget-boolean v3, p0, LaY/aG;->Q:Z

    if-eqz v3, :cond_32

    if-nez v0, :cond_32

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->a()V

    iput-boolean v2, p0, LaY/aG;->Q:Z

    invoke-virtual {p0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, LaY/aG;->Z()V

    :cond_2c
    invoke-virtual {p0}, LaY/aG;->R()V

    :goto_2f
    return v1

    :cond_30
    move v0, v2

    goto :goto_10

    :cond_32
    move v1, v2

    goto :goto_2f
.end method

.method public Y()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, LaY/aG;->K:Z

    if-eqz v2, :cond_9

    iput-boolean v0, p0, LaY/aG;->K:Z

    :goto_8
    return-void

    :cond_9
    iget-object v2, p0, LaY/aG;->J:LaJ/H;

    if-eqz v2, :cond_36

    iget-object v2, p0, LaY/aG;->J:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->a()LaJ/B;

    move-result-object v2

    iget-object v3, p0, LaY/aG;->d:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->c()LaJ/B;

    move-result-object v3

    invoke-virtual {v2, v3}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, LaY/aG;->J:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->b()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    iget-object v3, p0, LaY/aG;->d:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {v3}, LaJ/Y;->a()I

    move-result v3

    if-ge v2, v3, :cond_36

    move v0, v1

    :cond_36
    const/4 v2, 0x0

    iput-object v2, p0, LaY/aG;->J:LaJ/H;

    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p0, v1}, LaY/aG;->e(Z)V

    :cond_46
    if-eqz v0, :cond_4c

    invoke-virtual {p0, v1}, LaY/aG;->b(Z)V

    goto :goto_8

    :cond_4c
    invoke-direct {p0}, LaY/aG;->cc()V

    invoke-direct {p0}, LaY/aG;->cf()V

    invoke-super {p0}, LaY/m;->Y()V

    goto :goto_8
.end method

.method public a()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-boolean v0, p0, LaY/aG;->V:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, LaY/aG;->W:Lar/u;

    if-eqz v0, :cond_3e

    iget-object v0, p0, LaY/aG;->W:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    iget-object v0, p0, LaY/aG;->W:Lar/u;

    invoke-virtual {v0}, Lar/u;->g()I

    move-result v0

    if-lez v0, :cond_3c

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "s=a"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stat"

    invoke-static {v5, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_3c
    iput-boolean v4, p0, LaY/aG;->V:Z

    :cond_3e
    return-void
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 3

    iput-object p1, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aw()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/aG;->b(B)V

    :cond_10
    return-void
.end method

.method public a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V
    .registers 11

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    if-eqz v1, :cond_fd

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->Q()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->R()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v4

    invoke-virtual {v4}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-virtual {v4}, LaJ/Y;->a()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(Lam/b;)Lcom/google/googlenav/O;

    :cond_33
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->d(Ljava/lang/String;)Lcom/google/googlenav/O;

    :cond_40
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->e(Ljava/lang/String;)Lcom/google/googlenav/O;

    :cond_4d
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->f(Ljava/lang/String;)Lcom/google/googlenav/O;

    :cond_5a
    const/4 v0, 0x4

    if-eq p3, v0, :cond_61

    const/16 v0, 0xf

    if-ne p3, v0, :cond_76

    :cond_61
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->Y()Lcom/google/googlenav/layer/a;

    move-result-object v0

    if-eqz v0, :cond_127

    invoke-virtual {v0}, Lcom/google/googlenav/layer/a;->a()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(Ljava/lang/String;)Lcom/google/googlenav/O;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(I)Lcom/google/googlenav/O;

    :cond_76
    :goto_76
    const/16 v0, 0x19

    if-eq p3, v0, :cond_7e

    const/16 v0, 0x18

    if-ne p3, v0, :cond_97

    :cond_7e
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_97

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(Ljava/lang/Integer;)Lcom/google/googlenav/O;

    :cond_97
    const/16 v0, 0x1f

    if-ne p3, v0, :cond_fd

    if-eqz p2, :cond_fd

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/ah;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->W()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->M()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->c(Ljava/lang/String;)Lcom/google/googlenav/O;

    :cond_fd
    if-eqz p2, :cond_10e

    invoke-interface {p2}, Lcom/google/googlenav/D;->d()I

    move-result v0

    if-nez v0, :cond_10e

    check-cast p2, Lcom/google/googlenav/ah;

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->bJ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(Ljava/util/List;)Lcom/google/googlenav/O;

    :cond_10e
    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(Ljava/lang/String;)Lcom/google/googlenav/O;

    invoke-virtual {p1, v6}, Lcom/google/googlenav/O;->b(Z)Lcom/google/googlenav/O;

    :cond_126
    return-void

    :cond_127
    invoke-virtual {p1, v6}, Lcom/google/googlenav/O;->a(Z)Lcom/google/googlenav/O;

    goto/16 :goto_76
.end method

.method public a(Lcom/google/googlenav/aS;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, LaY/aG;->M:Ljava/lang/String;

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaY/aG;->M:Ljava/lang/String;

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ao;

    iget-object v1, p0, LaY/aG;->M:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/be;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 3

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;Ljava/util/List;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aI()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aJ()Lab/e;

    move-result-object v1

    invoke-virtual {v1}, Lab/e;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    sget-object v1, Lcom/google/googlenav/ui/bg;->aj:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_a4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->ak:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_68
    sget-object v0, Lav/k;->a:Lav/k;

    invoke-virtual {v0}, Lav/k;->d()Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aD()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->ak:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->ak:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9d
    return-void

    :cond_9e
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_a4
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->ai:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->ai:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68
.end method

.method public a(Lcom/google/googlenav/ui/wizard/fN;)V
    .registers 2

    iput-object p1, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    invoke-virtual {p0}, LaY/aG;->k()V

    return-void
.end method

.method public a(Ljava/lang/String;LaJ/H;I)V
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bc;->c(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bc;->d(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ax()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {p0}, LaY/aG;->bQ()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->B()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    :goto_53
    iget-object v2, p0, LaY/aG;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    invoke-virtual {v2, v0}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    :cond_60
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void

    :cond_6a
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->M()LaJ/B;

    move-result-object v0

    goto :goto_53
.end method

.method public a(Ljava/lang/String;[Lam/b;)V
    .registers 4

    iget-object v0, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/m;->a([Lam/b;)V

    :cond_11
    return-void
.end method

.method public a(Ljava/util/Vector;LaJ/B;I)V
    .registers 13

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->f()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_29

    invoke-virtual {v3, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/D;->c()B

    move-result v4

    if-nez v4, :cond_18

    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    invoke-virtual {p0, v2, p2}, LaY/aG;->a(Lcom/google/googlenav/D;LaJ/B;)J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v6, v4, v6

    if-gez v6, :cond_15

    invoke-static {p0, v2, v0, v4, v5}, LaY/U;->a(LaY/i;Lcom/google/googlenav/D;IJ)LaY/U;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_33
    return-void

    :cond_34
    invoke-virtual {v3}, Lcom/google/googlenav/aV;->f()I

    move-result v4

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/googlenav/Q;->a(LaJ/B;)Ljava/util/Enumeration;

    move-result-object v6

    if-eqz v6, :cond_33

    :cond_42
    :goto_42
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/aV;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {p0, v0, p2}, LaY/aG;->a(Lcom/google/googlenav/D;LaJ/B;)J

    move-result-wide v1

    int-to-long v7, p3

    cmp-long v7, v1, v7

    if-gez v7, :cond_42

    iget-boolean v7, p0, LaY/aG;->o:Z

    if-eqz v7, :cond_69

    sget v7, LaY/Y;->k:I

    int-to-long v7, v7

    add-long/2addr v1, v7

    :cond_69
    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {p0, v0, v7, v1, v2}, LaY/U;->a(LaY/i;Lcom/google/googlenav/D;IJ)LaY/U;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, v0}, LaY/m;->a(Z)V

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aC()V

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->g()V

    iget-object v0, p0, LaY/aG;->z:Lay/r;

    invoke-virtual {v0}, Lay/r;->a()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    sparse-switch p1, :sswitch_data_1ac

    :cond_c
    :goto_c
    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v5

    :cond_10
    :goto_10
    return v5

    :sswitch_11
    iput-boolean v9, p0, LaY/aG;->C:Z

    iput p2, p0, LaY/aG;->R:I

    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, LaY/aG;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v9}, LaY/aG;->a(IZ)V

    goto :goto_10

    :sswitch_20
    iget-object v1, p0, LaY/aG;->T:Lab/b;

    invoke-virtual {v1}, Lab/b;->i()[Lcom/google/googlenav/ah;

    move-result-object v1

    if-eqz v1, :cond_10

    array-length v2, v1

    if-ge p2, v2, :cond_10

    iget-object v2, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;BZ)V

    goto :goto_10

    :sswitch_41
    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, p2}, Lcom/google/googlenav/E;->a(I)V

    iput p2, p0, LaY/aG;->R:I

    invoke-virtual {p0, v6}, LaY/aG;->a(Ljava/lang/Object;)V

    goto :goto_10

    :sswitch_4c
    invoke-virtual {p0}, LaY/aG;->bJ()V

    goto :goto_10

    :sswitch_50
    invoke-direct {p0}, LaY/aG;->bV()V

    const/16 v0, 0x54

    const-string v1, "ac"

    const-string v2, "sl"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_10

    :sswitch_5d
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v0, v1, v2, v6, v9}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    :sswitch_6d
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    const-string v2, "b"

    invoke-static {v0, v1, p2, p0, v2}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/L;Lcom/google/googlenav/aV;ILcom/google/googlenav/aX;Ljava/lang/String;)V

    goto :goto_10

    :sswitch_75
    const/16 v0, 0x59

    const-string v2, "m"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v9}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;Z)V

    goto :goto_10

    :sswitch_88
    const/16 v0, 0x59

    const-string v2, "m"

    const-string v3, "2"

    invoke-static {v0, v2, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v5}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;Z)V

    goto/16 :goto_10

    :sswitch_9c
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v9}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;I)V

    goto/16 :goto_10

    :sswitch_a7
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v5}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;I)V

    goto/16 :goto_10

    :sswitch_b2
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v4}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;I)V

    goto/16 :goto_10

    :sswitch_bd
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;I)V

    goto/16 :goto_10

    :sswitch_c9
    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge v0, v4, :cond_d7

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v5

    goto/16 :goto_10

    :cond_d7
    if-eqz p3, :cond_e6

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object v0, p3, v9

    aget-object v1, p3, v5

    invoke-direct {p0, v0, v1}, LaY/aG;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_e6
    invoke-direct {p0, v6, v6}, LaY/aG;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_eb
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v8

    const-string v0, "OpenNowNotification"

    invoke-interface {v8, v0}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_12f

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x2bd

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bc

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b6

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x63

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, LaY/aM;

    invoke-direct {v7, p0}, LaY/aM;-><init>(LaY/aG;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    const-string v0, "OpenNowNotification"

    new-array v1, v5, [B

    aput-byte v5, v1, v9

    invoke-interface {v8, v0, v1}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-interface {v8}, Lak/m;->a()V

    goto/16 :goto_10

    :cond_12f
    invoke-direct {p0}, LaY/aG;->bU()V

    goto/16 :goto_10

    :sswitch_134
    if-eqz p3, :cond_10

    check-cast p3, Lcom/google/googlenav/ba;

    invoke-direct {p0, p3, v5}, LaY/aG;->a(Lcom/google/googlenav/ba;Z)V

    goto/16 :goto_10

    :sswitch_13d
    if-eqz p3, :cond_10

    check-cast p3, Lcom/google/googlenav/ba;

    invoke-direct {p0, p3, v9}, LaY/aG;->a(Lcom/google/googlenav/ba;Z)V

    goto/16 :goto_10

    :sswitch_146
    if-eqz p3, :cond_c

    move-object v0, p3

    check-cast v0, LaQ/I;

    invoke-direct {p0, v0}, LaY/aG;->a(LaQ/I;)V

    goto/16 :goto_c

    :sswitch_150
    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v2

    if-eqz v2, :cond_168

    :goto_15c
    invoke-virtual {p0, v0, v6}, LaY/aG;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, LaY/aG;->W()V

    goto/16 :goto_10

    :cond_168
    const/16 v0, 0x8

    goto :goto_15c

    :sswitch_16b
    iput p2, p0, LaY/aG;->R:I

    invoke-direct {p0, p2, v5}, LaY/aG;->a(IZ)V

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    if-eqz v0, :cond_182

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    const-string v1, "d"

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fN;->a(Ljava/lang/String;)V

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fN;->i()V

    goto/16 :goto_10

    :cond_182
    const/16 v0, 0x55

    const-string v1, "t"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "d"

    aput-object v3, v2, v9

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_10

    :sswitch_195
    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    if-eqz v0, :cond_1a6

    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v0

    if-nez v0, :cond_1a6

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    const-string v1, "rl"

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fN;->a(Ljava/lang/String;)V

    :cond_1a6
    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v5

    goto/16 :goto_10

    :sswitch_data_1ac
    .sparse-switch
        0x2 -> :sswitch_41
        0x2bc -> :sswitch_11
        0x2c4 -> :sswitch_50
        0x2c5 -> :sswitch_4c
        0x2c6 -> :sswitch_6d
        0x2c7 -> :sswitch_75
        0x2c8 -> :sswitch_9c
        0x2c9 -> :sswitch_a7
        0x2ca -> :sswitch_b2
        0x2cd -> :sswitch_eb
        0x2d0 -> :sswitch_88
        0x2d1 -> :sswitch_c9
        0x2d3 -> :sswitch_bd
        0x2d4 -> :sswitch_20
        0x2d5 -> :sswitch_13d
        0x2d6 -> :sswitch_134
        0x2d7 -> :sswitch_146
        0x2ef -> :sswitch_5d
        0x3f9 -> :sswitch_150
        0x6a4 -> :sswitch_195
        0x6af -> :sswitch_16b
        0x713 -> :sswitch_c9
    .end sparse-switch
.end method

.method public a(Lbb/E;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, LaY/aG;->g:Lbb/d;

    if-eqz v0, :cond_2c

    iget-object v0, p0, LaY/aG;->g:Lbb/d;

    if-ne p1, v0, :cond_2c

    sget-object v0, LaY/aG;->A:Lcom/google/googlenav/ui/view/android/aP;

    if-eqz v0, :cond_14

    sget-object v0, LaY/aG;->A:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->dismiss()V

    sput-object v1, LaY/aG;->A:Lcom/google/googlenav/ui/view/android/aP;

    :cond_14
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, LaY/aG;->a(ILjava/lang/Object;)V

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "c"

    invoke-virtual {p0}, LaY/aG;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, LaY/aG;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    invoke-super {p0, p1}, LaY/m;->a(Lbb/E;)Z

    move-result v0

    goto :goto_2b
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 10

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/google/googlenav/aV;->b(Ljava/io/DataInput;)Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/aV;->b(Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iput-object v1, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    new-instance v1, Lcom/google/googlenav/n;

    new-instance v2, Lcom/google/googlenav/Q;

    iget-object v3, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    iget-object v4, p0, LaY/aG;->O:LaJ/k;

    iget-object v5, p0, LaY/aG;->c:LaJ/p;

    iget-object v6, p0, LaY/aG;->d:LaJ/u;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    iput-object v1, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->Z()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaY/aL;

    invoke-direct {v2, p0, v0}, LaY/aL;-><init>(LaY/aG;Lcom/google/googlenav/aV;)V

    invoke-virtual {v1, v2, v7}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_36
    return v7
.end method

.method public aA()Z
    .registers 2

    iget-boolean v0, p0, LaY/aG;->p:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ap()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aE()Z
    .registers 2

    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ap()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public aF()Z
    .registers 2

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ap()Z

    move-result v0

    return v0
.end method

.method public aH()I
    .registers 3

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const v0, 0x7f0e0009

    :goto_c
    return v0

    :cond_d
    const v0, 0x7f0e000a

    goto :goto_c
.end method

.method public aL()Ljava/lang/CharSequence;
    .registers 2

    const/16 v0, 0x411

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    if-eqz v0, :cond_b

    const/16 v0, 0x367

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v1}, LaY/aG;->c(Lcom/google/googlenav/aV;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1a
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2d
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, LaY/aG;->c(Lcom/google/googlenav/aV;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public aN()Lah/f;
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ap()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, LaY/aG;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->ad:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, LaY/aG;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->ae:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    goto :goto_16
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aP()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aR()V
    .registers 6

    invoke-super {p0}, LaY/m;->aR()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-static {p0}, LaY/Y;->k(LaY/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_15
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/aV;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_29} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_29} :catch_2f

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_29

    :catch_2f
    move-exception v0

    const-string v3, "UI-SL save"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_29
.end method

.method public aV()Z
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, LaY/aG;->D:I

    invoke-static {v0, v2}, LaY/Y;->a(IZ)V

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    iget-object v0, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ar()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, p0}, LaJ/k;->a(LaJ/m;)V

    :cond_20
    iget-object v0, p0, LaY/aG;->c:LaJ/p;

    iget-object v1, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/k;)V

    :cond_27
    return v2
.end method

.method public aW()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    if-eqz v0, :cond_13

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p0}, LaM/i;->b(LaM/l;)V

    :cond_13
    invoke-direct {p0}, LaY/aG;->cb()V

    invoke-direct {p0}, LaY/aG;->ce()V

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    iget v0, p0, LaY/aG;->D:I

    invoke-static {v0, v1}, LaY/Y;->a(IZ)V

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/aV;->a(ILcom/google/googlenav/aX;)Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/aG;->d(Lcom/google/googlenav/aV;)V

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->g()V

    iget-object v0, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, p0}, LaJ/k;->b(LaJ/m;)V

    iget-object v0, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0}, LaJ/k;->b()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, LaY/aG;->c:LaJ/p;

    iget-object v1, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, v1}, LaJ/p;->b(LaJ/k;)V

    :cond_47
    iput-object v2, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-super {p0}, LaY/m;->aW()V

    return-void
.end method

.method public aY()V
    .registers 4

    invoke-super {p0}, LaY/m;->aY()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_17
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {v0}, Las/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bN:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/bh;)V

    :cond_3e
    return-void
.end method

.method public aZ()V
    .registers 4

    invoke-super {p0}, LaY/m;->aZ()V

    invoke-direct {p0}, LaY/aG;->cb()V

    invoke-direct {p0}, LaY/aG;->ce()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_1d
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v0

    const/16 v1, 0x40e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bM:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/bh;)V

    :cond_32
    return-void
.end method

.method protected an()V
    .registers 9

    invoke-virtual {p0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v1

    if-eqz v1, :cond_5d

    move-object v1, v0

    check-cast v1, Lcom/google/googlenav/T;

    const/16 v2, 0x43

    const-string v3, "o"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "l="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/googlenav/T;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, LaY/aG;->P:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ah;)Lat/g;

    :goto_5c
    return-void

    :cond_5d
    invoke-super {p0}, LaY/m;->an()V

    goto :goto_5c
.end method

.method public ap()Z
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bv()Lcom/google/googlenav/ah;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, LaY/aG;->aj()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v1

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->q()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected ar()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/aG;->d(Z)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/ao;-><init>(LaY/aG;)V

    iput-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, LaY/aG;->bS()V

    return-void
.end method

.method public av()Z
    .registers 2

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, LaY/m;->av()Z

    move-result v0

    goto :goto_7
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(LaJ/B;)I
    .registers 9

    const/4 v6, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-ltz v0, :cond_17

    iget-object v2, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v6}, LaY/aG;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/google/googlenav/aV;->f()I

    move-result v3

    :goto_20
    if-ge v0, v3, :cond_2f

    invoke-virtual {v2, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v6}, LaY/aG;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v4

    if-nez v4, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2f
    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    goto :goto_16

    :cond_3b
    invoke-virtual {v2}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/googlenav/Q;->a(LaJ/B;)Ljava/util/Enumeration;

    move-result-object v4

    if-nez v4, :cond_4b

    move v0, v1

    goto :goto_16

    :cond_4b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p0, v0, p1, v6}, LaY/aG;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_67
    move v0, v1

    goto :goto_16
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 4

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v0

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    iget-object v0, p0, LaY/aG;->a:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(B)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    goto :goto_8

    nop

    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_9
    .end packed-switch
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    iget-object v0, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method protected b(ILjava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2}, LaY/m;->b(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    :cond_18
    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/aG;->C:Z

    return-void
.end method

.method public b(Lcom/google/googlenav/aV;Z)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ab()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bO()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-boolean v1, Lcom/google/googlenav/aV;->a:Z

    if-eqz v1, :cond_21

    invoke-direct {p0, p1, p2, v0}, LaY/aG;->a(Lcom/google/googlenav/aV;ZLjava/lang/String;)V

    :cond_21
    invoke-direct {p0, p1, p2, v2}, LaY/aG;->a(Lcom/google/googlenav/aV;ZZ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/aG;->e(Z)V

    invoke-virtual {p0, v0}, LaY/aG;->d(Z)V

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x5

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected b(Z)V
    .registers 2

    invoke-direct {p0}, LaY/aG;->cc()V

    invoke-direct {p0}, LaY/aG;->cf()V

    invoke-super {p0, p1}, LaY/m;->b(Z)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ah;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, LaY/aG;->h(Lcom/google/googlenav/ah;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected bE()I
    .registers 2

    iget v0, p0, LaY/aG;->R:I

    return v0
.end method

.method protected bH()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    if-eqz v1, :cond_e

    iget-object v1, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bI()V
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaY/aG;->b(Lcom/google/googlenav/aV;Z)V

    return-void
.end method

.method protected bJ()V
    .registers 5

    iget-boolean v0, p0, LaY/aG;->C:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/aG;->C:Z

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ao()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/aV;->a(ILcom/google/googlenav/aX;)Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/aV;IZ)V

    goto :goto_4
.end method

.method public bK()Z
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x12c

    :goto_c
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ak()I

    move-result v1

    if-lez v1, :cond_25

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ao()I

    move-result v1

    if-ge v1, v0, :cond_25

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/16 v0, 0x64

    goto :goto_c

    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public bL()Lcom/google/googlenav/aV;
    .registers 2

    invoke-direct {p0}, LaY/aG;->ca()Lcom/google/googlenav/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aV;

    return-object v0
.end method

.method public bM()Lcom/google/googlenav/Q;
    .registers 2

    invoke-direct {p0}, LaY/aG;->ca()Lcom/google/googlenav/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Q;

    return-object v0
.end method

.method public bN()I
    .registers 2

    iget v0, p0, LaY/aG;->D:I

    return v0
.end method

.method public bO()Lbb/F;
    .registers 2

    iget-object v0, p0, LaY/aG;->L:Lbb/F;

    if-nez v0, :cond_b

    new-instance v0, LaY/aN;

    invoke-direct {v0, p0}, LaY/aN;-><init>(LaY/aG;)V

    iput-object v0, p0, LaY/aG;->L:Lbb/F;

    :cond_b
    iget-object v0, p0, LaY/aG;->L:Lbb/F;

    return-object v0
.end method

.method public bP()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LaY/aG;->M:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/be;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public bQ()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->ax()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->az()LaJ/B;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v4

    invoke-virtual {v4}, LaJ/H;->a()LaJ/B;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/be;->a(LaJ/B;LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    :goto_1f
    invoke-virtual {v3}, Lcom/google/googlenav/aV;->K()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->aH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v0, :cond_38

    :cond_35
    :goto_35
    return v1

    :cond_36
    move v0, v2

    goto :goto_1f

    :cond_38
    move v1, v2

    goto :goto_35
.end method

.method public bi()Z
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->x()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bj()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->p()Z

    move-result v0

    return v0
.end method

.method public bk()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bn()Z
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->x()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected bp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    if-nez v0, :cond_7

    const-string v0, "p"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "tr"

    goto :goto_6
.end method

.method protected bq()V
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bv()Lcom/google/googlenav/ah;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->ai()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->a(B)V

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->a(Lcom/google/googlenav/ah;)V

    :cond_17
    return-void
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 4

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v0

    sparse-switch v0, :sswitch_data_4e

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bh()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bi()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    :goto_18
    rsub-int/lit8 v0, v0, 0x1

    :goto_1a
    return v0

    :sswitch_1b
    const/4 v0, 0x0

    goto :goto_1a

    :sswitch_1d
    iget-object v0, p0, LaY/aG;->a:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(B)I

    move-result v0

    neg-int v0, v0

    goto :goto_1a

    :sswitch_29
    invoke-virtual {p0, p1}, LaY/aG;->f(Lcom/google/googlenav/D;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :sswitch_32
    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ah;

    iget-object v1, p0, LaY/aG;->v:Lba/a;

    check-cast v1, Lba/i;

    invoke-virtual {v1}, Lba/i;->b()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->a(B)V

    invoke-virtual {p0, p1}, LaY/aG;->f(Lcom/google/googlenav/D;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_49
    invoke-virtual {p0, p1}, LaY/aG;->f(Lcom/google/googlenav/D;)I

    move-result v0

    goto :goto_18

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_1b
        0xc -> :sswitch_1d
        0xf -> :sswitch_29
        0x10 -> :sswitch_32
        0x11 -> :sswitch_32
        0x12 -> :sswitch_32
        0x13 -> :sswitch_32
    .end sparse-switch
.end method

.method public c(Lcom/google/googlenav/aV;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->O()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1e3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_20
    const/16 v0, 0x3a9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/aG;->Q:Z

    return-void
.end method

.method public c(Lcom/google/googlenav/E;)V
    .registers 5

    invoke-virtual {p0, p1}, LaY/aG;->a(Lcom/google/googlenav/E;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaY/aG;->b(B)V

    invoke-virtual {p0}, LaY/aG;->R()V

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->U()I

    move-result v1

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/Q;->g()V

    const/4 v2, 0x0

    iput-boolean v2, p0, LaY/aG;->C:Z

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v0

    iput-object v0, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    iget-object v0, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, p0}, LaJ/k;->b(LaJ/m;)V

    iget-object v0, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0}, LaJ/k;->b()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, LaY/aG;->c:LaJ/p;

    iget-object v2, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, v2}, LaJ/p;->b(LaJ/k;)V

    :cond_36
    iget-object v0, p0, LaY/aG;->N:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ar()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, p0}, LaJ/k;->a(LaJ/m;)V

    :cond_4d
    iget-object v0, p0, LaY/aG;->c:LaJ/p;

    iget-object v2, p0, LaY/aG;->O:LaJ/k;

    invoke-virtual {v0, v2}, LaJ/p;->a(LaJ/k;)V

    :cond_54
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->an()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/aG;->b(I)V

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-eqz v0, :cond_7e

    const/16 v0, 0xa

    if-eq v1, v0, :cond_70

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ao;->i()V

    :cond_70
    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ao;->k()V

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ao;->h()V

    :cond_7e
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_92
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bN:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/bh;)V

    :cond_ad
    invoke-direct {p0}, LaY/aG;->bR()LaJ/H;

    invoke-direct {p0}, LaY/aG;->bT()V

    return-void
.end method

.method protected c(Laq/b;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_19

    invoke-virtual {p0}, LaY/aG;->aa()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, LaY/aG;->E:Z

    if-eqz v1, :cond_19

    iput-boolean v0, p0, LaY/aG;->E:Z

    invoke-virtual {p0}, LaY/aG;->o()V

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method protected d(Lcom/google/googlenav/aV;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/n;

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    iput-object v0, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    return-void
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 2

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->ag()[Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/googlenav/aV;)Lcom/google/googlenav/ah;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ge v1, v0, :cond_1d

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    :goto_18
    return-object v0

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public e()V
    .registers 6

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v2

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {v2}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ge v1, v0, :cond_2f

    invoke-virtual {v2, v1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->ax()Lcom/google/googlenav/an;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {v0}, LaY/aG;->a(Lcom/google/googlenav/an;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    iget-object v4, p0, LaY/aG;->z:Lay/r;

    invoke-virtual {v4, v0}, Lay/r;->c(Lcom/google/googlenav/ui/bG;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    if-eqz v0, :cond_61

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->aa()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->ab()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_59
    iget-object v0, p0, LaY/aG;->z:Lay/r;

    iget-object v1, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    invoke-virtual {v0, v3, v1}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    iget-object v1, p0, LaY/aG;->z:Lay/r;

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lay/q;

    invoke-virtual {v1, v3, v0}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    goto :goto_60
.end method

.method protected e(Lcom/google/googlenav/ui/C;)V
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LaY/aG;->a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/E;)V

    return-void
.end method

.method public e(Laq/b;)Z
    .registers 10

    const/16 v7, 0x36

    const/16 v6, 0x34

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v5

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    if-eq v5, v7, :cond_16

    if-ne v5, v6, :cond_11

    :cond_16
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    invoke-virtual {p0}, LaY/aG;->ah()Z

    move-result v4

    if-eqz v4, :cond_58

    if-eq v0, v3, :cond_58

    :cond_26
    if-ltz v0, :cond_32

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->f()I

    move-result v3

    if-ne v0, v3, :cond_33

    :cond_32
    move v0, v1

    :cond_33
    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_11

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aV;->f()I

    move-result v3

    if-ge v0, v3, :cond_11

    invoke-virtual {p0, v0}, LaY/aG;->b(I)V

    invoke-virtual {p0}, LaY/aG;->ao()Z

    invoke-virtual {p0, v2}, LaY/aG;->b(Z)V

    move v1, v2

    goto :goto_11

    :cond_58
    invoke-virtual {p0}, LaY/aG;->ah()Z

    move-result v4

    if-nez v4, :cond_9b

    if-ne v5, v6, :cond_9d

    invoke-direct {p0}, LaY/aG;->bY()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    move v4, v0

    :goto_6f
    if-ne v5, v6, :cond_a7

    move v0, v3

    :goto_72
    add-int/2addr v0, v4

    if-ltz v0, :cond_26

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/aV;->f()I

    move-result v4

    if-ge v0, v4, :cond_26

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v4

    if-eqz v4, :cond_9b

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/D;->c()B

    move-result v4

    if-nez v4, :cond_26

    :cond_9b
    move v4, v0

    goto :goto_6f

    :cond_9d
    if-ne v5, v7, :cond_9b

    invoke-direct {p0}, LaY/aG;->bZ()Z

    move-result v4

    if-eqz v4, :cond_9b

    move v4, v3

    goto :goto_6f

    :cond_a7
    move v0, v2

    goto :goto_72
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/i;

    invoke-direct {v0, p0}, Lba/i;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v2, 0x23

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v1

    if-ne v1, v2, :cond_4b

    invoke-virtual {p0}, LaY/aG;->ae()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "m"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/aG;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, LaY/aG;->bW()V

    invoke-virtual {p0, v4, v3}, LaY/aG;->b(ILjava/lang/Object;)V

    :cond_21
    :goto_21
    return v0

    :cond_22
    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "l"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/aG;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v3}, LaY/aG;->b(ILjava/lang/Object;)V

    goto :goto_21

    :cond_36
    invoke-virtual {p0}, LaY/aG;->bH()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "l"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/aG;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v3}, LaY/aG;->c(ILjava/lang/Object;)V

    goto :goto_21

    :cond_4b
    invoke-virtual {p0, p1}, LaY/aG;->g(Laq/b;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0, p1}, LaY/aG;->d(Laq/b;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    if-ne v1, v4, :cond_66

    invoke-virtual {p0}, LaY/aG;->aa()Z

    move-result v1

    if-eqz v1, :cond_66

    iput-boolean v0, p0, LaY/aG;->E:Z

    goto :goto_21

    :cond_66
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public f(Lcom/google/googlenav/aV;)Z
    .registers 4

    invoke-virtual {p0, p1}, LaY/aG;->g(Lcom/google/googlenav/aV;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public g(Lcom/google/googlenav/aV;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ge v1, v0, :cond_19

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->aH()Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return v1

    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public g(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_16

    invoke-super {p0, p1}, LaY/m;->g(I)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    invoke-virtual {p0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->k()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected final g(Laq/b;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/aG;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_20

    invoke-virtual {p0}, LaY/aG;->af()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {p0, v1, v5}, LaY/aG;->b(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_c

    :cond_20
    invoke-direct {p0, v0}, LaY/aG;->i(Lcom/google/googlenav/ah;)Z

    move-result v3

    if-nez v3, :cond_28

    move v0, v1

    goto :goto_c

    :cond_28
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4d

    invoke-virtual {p0}, LaY/aG;->ag()Z

    move-result v3

    if-eqz v3, :cond_4d

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v5}, LaY/aG;->a(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaY/aG;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    const-string v3, "s"

    const-string v4, "k"

    invoke-virtual {p0, v1, v3, v4, v0}, LaY/aG;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_c

    :cond_4d
    move v0, v1

    goto :goto_c
.end method

.method protected g(Lcom/google/googlenav/ah;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, LaY/aG;->P:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ah;)Lat/g;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public h(Lcom/google/googlenav/ah;)I
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-direct {p0, p1}, LaY/aG;->j(Lcom/google/googlenav/ah;)I

    move-result v2

    if-eq v2, v0, :cond_15

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->an()I

    move-result v0

    sub-int v0, v2, v0

    invoke-direct {p0, v0}, LaY/aG;->k(I)I

    move-result v0

    :cond_15
    return v0
.end method

.method public i()V
    .registers 14

    const/4 v12, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v8

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v9

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_e
    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ge v1, v0, :cond_4e

    invoke-virtual {v8, v1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    move v7, v2

    :goto_1b
    if-gt v7, v12, :cond_33

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v10

    if-nez v10, :cond_27

    :cond_23
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1b

    :cond_27
    move v6, v2

    :goto_28
    array-length v11, v10

    if-ge v6, v11, :cond_23

    aget-object v11, v10, v6

    invoke-direct {p0, v11, v9}, LaY/aG;->a(Lcom/google/googlenav/ao;Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_33
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->L()Lcom/google/googlenav/ao;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-direct {p0, v0, v9}, LaY/aG;->a(Lcom/google/googlenav/ao;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_48

    add-int/lit8 v5, v5, 0x1

    :goto_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_4e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    iget-object v1, p0, LaY/aG;->z:Lay/r;

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lay/q;

    invoke-virtual {v1, v9, v0}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    :cond_5d
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e

    const-string v2, "r"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public i(I)V
    .registers 4

    iget v0, p0, LaY/aG;->D:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaY/Y;->a(IZ)V

    iput p1, p0, LaY/aG;->D:I

    iget v0, p0, LaY/aG;->D:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, LaY/Y;->a(IZ)V

    iget-object v0, p0, LaY/aG;->v:Lba/a;

    check-cast v0, Lba/i;

    invoke-virtual {v0, p1}, Lba/i;->c(I)V

    return-void
.end method

.method protected j()V
    .registers 4

    const/4 v0, 0x5

    const-string v1, "0"

    invoke-direct {p0}, LaY/aG;->bX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected l()V
    .registers 1

    invoke-super {p0}, LaY/m;->l()V

    invoke-virtual {p0}, LaY/aG;->j()V

    return-void
.end method

.method public o()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/aG;->bA()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-boolean v2, p0, LaY/aG;->C:Z

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_be

    goto :goto_8

    :sswitch_1d
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LaY/i;->aT()V

    goto :goto_8

    :sswitch_36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/aG;->h(Z)V

    invoke-virtual {p0, v2, v3}, LaY/aG;->c(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, LaY/aG;->h(Z)V

    goto :goto_8

    :sswitch_41
    invoke-virtual {p0, v2, v3}, LaY/aG;->b(ILjava/lang/Object;)V

    goto :goto_8

    :sswitch_45
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_58

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/aG;->b(I)V

    :cond_58
    invoke-virtual {p0, v2, v3}, LaY/aG;->a(ILjava/lang/Object;)V

    goto :goto_8

    :sswitch_5c
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->g(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_6d
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    invoke-virtual {p0, v2, v3}, LaY/aG;->b(ILjava/lang/Object;)V

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aa()V

    goto :goto_8

    :sswitch_7f
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(I)V

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    goto/16 :goto_8

    :sswitch_90
    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    iget-object v0, p0, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    check-cast v0, LaY/aT;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LaY/aT;->c()V

    goto/16 :goto_8

    :sswitch_ac
    iget-object v0, p0, LaY/aG;->U:Lcom/google/googlenav/ui/wizard/fN;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fN;->j()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaY/aG;->b(B)V

    iget-object v0, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    iput-object v3, p0, LaY/aG;->r:Lcom/google/googlenav/ui/view/android/bs;

    goto/16 :goto_8

    :sswitch_data_be
    .sparse-switch
        0x0 -> :sswitch_1d
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_45
        0x8 -> :sswitch_36
        0x9 -> :sswitch_41
        0xf -> :sswitch_6d
        0x10 -> :sswitch_7f
        0x11 -> :sswitch_1d
        0x1a -> :sswitch_90
        0x1e -> :sswitch_ac
    .end sparse-switch
.end method

.method public q()I
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, LaY/m;->q()I

    move-result v0

    iget-object v1, p0, LaY/aG;->G:Lbb/d;

    if-eqz v1, :cond_13

    iget-object v1, p0, LaY/aG;->G:Lbb/d;

    invoke-interface {v1}, Lbb/d;->d()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, LaY/aG;->I:Lbb/d;

    if-eqz v1, :cond_12

    iget-object v1, p0, LaY/aG;->I:Lbb/d;

    invoke-interface {v1}, Lbb/d;->d()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method protected u()V
    .registers 3

    invoke-virtual {p0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/Q;->b(LaJ/B;)V

    return-void
.end method
