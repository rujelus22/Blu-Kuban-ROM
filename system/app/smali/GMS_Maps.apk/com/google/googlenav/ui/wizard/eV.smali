.class public Lcom/google/googlenav/ui/wizard/eV;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/ui/wizard/eZ;

.field private c:Lcom/google/googlenav/ui/wizard/eX;

.field private d:Lcom/google/googlenav/ui/wizard/eY;

.field private e:Lcom/google/googlenav/ui/wizard/fe;

.field private f:Lcom/google/googlenav/ui/wizard/fa;


# direct methods
.method public constructor <init>(Lay/a;Ljava/util/List;Lcom/google/googlenav/ui/wizard/eZ;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eV;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eV;->b:Lcom/google/googlenav/ui/wizard/eZ;

    new-instance v0, Lcom/google/googlenav/ui/wizard/eX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eX;-><init>(Lcom/google/googlenav/ui/wizard/eV;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->c:Lcom/google/googlenav/ui/wizard/eX;

    new-instance v0, Lcom/google/googlenav/ui/wizard/eY;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/eY;-><init>(Lcom/google/googlenav/ui/wizard/eV;Lcom/google/googlenav/ui/wizard/eW;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->d:Lcom/google/googlenav/ui/wizard/eY;

    new-instance v0, Lcom/google/googlenav/ui/wizard/fa;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/wizard/fa;-><init>(Lay/a;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->f:Lcom/google/googlenav/ui/wizard/fa;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->f:Lcom/google/googlenav/ui/wizard/fa;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eV;->d:Lcom/google/googlenav/ui/wizard/eY;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fa;->a(Lcom/google/googlenav/ui/wizard/fd;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->e:Lcom/google/googlenav/ui/wizard/fe;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/eZ;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->b:Lcom/google/googlenav/ui/wizard/eZ;

    return-object v0
.end method

.method static synthetic c()Ljava/util/List;
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/wizard/eV;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/eV;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->a:Ljava/util/List;

    return-object v0
.end method

.method private static d()Ljava/util/List;
    .registers 2

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lax/aL;->g()Lax/aL;

    move-result-object v0

    invoke-static {}, Lax/aL;->h()Lax/aL;

    move-result-object v1

    invoke-static {v0, v1}, LK/bn;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bn;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {}, Lax/aL;->g()Lax/aL;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    goto :goto_12
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/eX;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->c:Lcom/google/googlenav/ui/wizard/eX;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/fe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eV;->e:Lcom/google/googlenav/ui/wizard/fe;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->e:Lcom/google/googlenav/ui/wizard/fe;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fe;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->f:Lcom/google/googlenav/ui/wizard/fa;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fa;->a()V

    return-void
.end method
