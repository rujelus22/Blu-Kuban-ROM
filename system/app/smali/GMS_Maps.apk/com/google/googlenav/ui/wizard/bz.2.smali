.class public Lcom/google/googlenav/ui/wizard/bz;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Ljava/lang/String;

.field private g:[Lcom/google/googlenav/au;

.field private h:I

.field private i:Z


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private a(Lam/b;)V
    .registers 4

    const/16 v1, 0x9e

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lam/b;->l(I)I

    move-result v0

    if-nez v0, :cond_e

    :cond_a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->a()V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/as;->a(Lam/b;)Lcom/google/googlenav/as;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lcom/google/googlenav/as;)[Lcom/google/googlenav/au;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bz;->a([Lcom/google/googlenav/au;)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bz;Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bz;->a(Lam/b;)V

    return-void
.end method

.method private a([Lcom/google/googlenav/au;)V
    .registers 9

    new-instance v0, Lcom/google/googlenav/ui/wizard/bC;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bz;->h:I

    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/bz;->i:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bz;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bz;->b:Lcom/google/googlenav/ui/wizard/hM;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/bC;-><init>([Lcom/google/googlenav/au;IZLcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/p;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method private e()V
    .registers 8

    new-instance v2, Lcom/google/googlenav/ui/wizard/bA;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/bA;-><init>(Lcom/google/googlenav/ui/wizard/bz;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/bB;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/bB;-><init>(Lcom/google/googlenav/ui/wizard/bz;Lat/c;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/f;->a(Lcom/google/googlenav/g;Ljava/lang/String;)Lcom/google/googlenav/f;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bz;->g:[Lcom/google/googlenav/au;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bz;->h:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->a()V

    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/bz;->i:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bz;->a(Ljava/lang/String;[Lcom/google/googlenav/au;IZ)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bz;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bz;->e:I

    goto :goto_d
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/au;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bz;->g:[Lcom/google/googlenav/au;

    iput p3, p0, Lcom/google/googlenav/ui/wizard/bz;->h:I

    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/bz;->i:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->l()V

    return-void
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bz;->e:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->g:[Lcom/google/googlenav/au;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->g:[Lcom/google/googlenav/au;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bz;->a([Lcom/google/googlenav/au;)V

    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bz;->e()V

    goto :goto_c
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->g:[Lcom/google/googlenav/au;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->f:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->f:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/wizard/bC;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bz;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/bC;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bC;->h()V

    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bz;->a()V

    return-void
.end method
