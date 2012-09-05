.class public Lcom/google/googlenav/ui/wizard/dv;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements LaL/b;
.implements Lcom/google/googlenav/login/i;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private g:LaL/a;

.field private h:[LaL/c;

.field private i:[LaL/c;

.field private j:J

.field private k:Lcom/google/googlenav/ui/wizard/dx;

.field private l:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->h:[LaL/c;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->i:[LaL/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/dv;->j:J

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/L;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dv;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dv;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dv;->l:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dv;Lcom/google/googlenav/ui/wizard/dx;)Lcom/google/googlenav/ui/wizard/dx;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dv;->k:Lcom/google/googlenav/ui/wizard/dx;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dv;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dv;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/L;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/16 v2, 0x231

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method private a([LaL/c;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_18

    array-length v0, p1

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->k:Lcom/google/googlenav/ui/wizard/dx;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/dx;->add(Ljava/lang/Object;)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dv;->k:Lcom/google/googlenav/ui/wizard/dx;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/dx;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dv;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dv;->f()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dv;)Lcom/google/googlenav/ui/wizard/dx;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->k:Lcom/google/googlenav/ui/wizard/dx;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->h:[LaL/c;

    const/16 v1, 0x26f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/dv;->a([LaL/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->i:[LaL/c;

    const/16 v1, 0x270

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/dv;->a([LaL/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 1

    return-void
.end method

.method public F_()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->h:[LaL/c;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->i:[LaL/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/dv;->j:J

    return-void
.end method

.method public R_()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    invoke-virtual {v0}, LaL/a;->l()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x275

    :goto_13
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    invoke-virtual {v1}, LaL/a;->k()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/L;

    invoke-interface {v1, v0}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void

    :cond_30
    const/16 v0, 0x271

    goto :goto_13
.end method

.method public a([LaL/c;[LaL/c;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dv;->h:[LaL/c;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dv;->i:[LaL/c;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/dv;->j:J

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dv;->l()V

    return-void
.end method

.method protected b()V
    .registers 8

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dv;->e:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/dv;->j:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dv;->h:[LaL/c;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dv;->i:[LaL/c;

    if-eqz v2, :cond_21

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_55

    :cond_21
    new-instance v0, LaL/a;

    invoke-direct {v0}, LaL/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    invoke-virtual {v0, p0}, LaL/a;->a(LaL/b;)V

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    const/16 v0, 0xc

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x22f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    :cond_48
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dv;->g:LaL/a;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dv;->a()V

    :goto_54
    return-void

    :cond_55
    new-instance v0, Lcom/google/googlenav/ui/wizard/dz;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dz;-><init>(Lcom/google/googlenav/ui/wizard/dv;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_54
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public o()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dv;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dv;->e:I

    return-void
.end method
