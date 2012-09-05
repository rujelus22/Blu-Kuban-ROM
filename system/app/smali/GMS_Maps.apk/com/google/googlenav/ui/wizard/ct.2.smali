.class public Lcom/google/googlenav/ui/wizard/ct;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private g:I

.field private h:Lcom/google/googlenav/ui/wizard/cn;

.field private i:Lcom/google/googlenav/ui/wizard/cj;

.field private j:Lcom/google/googlenav/ui/wizard/cv;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->h:Lcom/google/googlenav/ui/wizard/cn;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/wizard/cn;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ct;->a:Lcom/google/googlenav/L;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cn;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/wizard/cn;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ct;Lcom/google/googlenav/ui/wizard/cn;)Lcom/google/googlenav/ui/wizard/cn;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/wizard/cn;

    return-object p1
.end method

.method private a(ILcom/google/googlenav/ui/wizard/cv;Lcom/google/googlenav/ui/wizard/cj;)V
    .registers 4

    iput p1, p0, Lcom/google/googlenav/ui/wizard/ct;->g:I

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ct;->j:Lcom/google/googlenav/ui/wizard/cv;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ct;->i:Lcom/google/googlenav/ui/wizard/cj;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ct;->l()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cj;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->i:Lcom/google/googlenav/ui/wizard/cj;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cv;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->j:Lcom/google/googlenav/ui/wizard/cv;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->a:Lcom/google/googlenav/L;

    return-object v0
.end method

.method private e()Lcom/google/googlenav/ui/wizard/cj;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ct;->a:Lcom/google/googlenav/L;

    invoke-interface {v1}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v1

    invoke-virtual {v1}, Lay/p;->b()Lay/r;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/co;-><init>(Lay/r;Lcom/google/googlenav/android/ac;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/cw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/cw;-><init>(Lcom/google/googlenav/ui/wizard/ct;Lcom/google/googlenav/ui/wizard/cu;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/cj;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/cj;-><init>(Lcom/google/googlenav/ui/wizard/co;Lcom/google/googlenav/ui/wizard/cm;)V

    return-object v2
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/ct;->g:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ct;->j:Lcom/google/googlenav/ui/wizard/cv;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ct;->a()V

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ct;->g:I

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ct;->j:Lcom/google/googlenav/ui/wizard/cv;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ct;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ct;->o()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ct;->a()V

    :cond_e
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method protected a(ILcom/google/googlenav/ui/wizard/cv;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ct;->e()Lcom/google/googlenav/ui/wizard/cj;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/wizard/ct;->a(ILcom/google/googlenav/ui/wizard/cv;Lcom/google/googlenav/ui/wizard/cj;)V

    return-void
.end method

.method protected b()V
    .registers 8

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->h:Lcom/google/googlenav/ui/wizard/cn;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/wizard/cn;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->i:Lcom/google/googlenav/ui/wizard/cj;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/ct;->g:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cj;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ct;->i:Lcom/google/googlenav/ui/wizard/cj;

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->h:Lcom/google/googlenav/ui/wizard/cn;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/wizard/cn;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ct;->j:Lcom/google/googlenav/ui/wizard/cv;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->i:Lcom/google/googlenav/ui/wizard/cj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cj;->e()V

    return-void
.end method
