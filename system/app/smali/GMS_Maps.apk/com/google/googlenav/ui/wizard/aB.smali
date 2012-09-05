.class public Lcom/google/googlenav/ui/wizard/aB;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/hM;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aB;->a:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aB;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aB;->a:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/h;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lax/aA;->z()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/google/googlenav/h;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lax/aA;->A()V

    goto :goto_9

    :cond_14
    invoke-static {}, Lax/aA;->y()V

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aB;->b(Lcom/google/googlenav/ui/wizard/aG;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aB;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/wizard/hh;->b:Lcom/google/googlenav/ui/wizard/hh;

    const/4 v3, 0x1

    new-instance v4, Lcom/google/googlenav/ui/wizard/aE;

    invoke-direct {v4, p0, p2}, Lcom/google/googlenav/ui/wizard/aE;-><init>(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/hM;->a(Lam/b;Lcom/google/googlenav/ui/wizard/hh;ZLcom/google/googlenav/ui/wizard/hg;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 10

    const/16 v0, 0x79

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x77

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x76

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x78

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aB;->a:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v7, Lcom/google/googlenav/ui/wizard/aF;

    invoke-direct {v7, p0, p1}, Lcom/google/googlenav/ui/wizard/aF;-><init>(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aB;->a(Lcom/google/googlenav/h;)V

    invoke-virtual {p1}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/googlenav/h;->n()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aB;->b(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aG;)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/wizard/aB;->a(Lcom/google/googlenav/ui/wizard/aG;)V

    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 5

    const-string v0, "home_speedbump_ack"

    const/4 v1, 0x0

    new-instance v2, Lcom/google/googlenav/ui/wizard/aC;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/aC;-><init>(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ZLax/bi;)V

    return-void
.end method
