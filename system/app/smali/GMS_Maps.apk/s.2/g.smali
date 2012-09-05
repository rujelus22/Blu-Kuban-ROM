.class public Ls/g;
.super Ls/f;


# instance fields
.field private c:J

.field private d:J

.field private volatile e:Ls/t;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lz/l;

.field private k:Ls/v;

.field private final l:Laf/a;


# direct methods
.method public constructor <init>(Ls/c;Ls/v;Laf/a;)V
    .registers 6

    const-string v0, "driveabout_gps_fixup"

    invoke-direct {p0, v0, p1}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls/g;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls/g;->d:J

    iput-object p2, p0, Ls/g;->k:Ls/v;

    iput-object p3, p0, Ls/g;->l:Laf/a;

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .registers 5

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x4080

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v2}, Lz/l;->o()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    :cond_1a
    return-void
.end method

.method private a(Ls/b;)V
    .registers 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Ls/g;->h:Z

    if-nez v1, :cond_16

    invoke-virtual {p1}, Ls/b;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Ls/b;->getAccuracy()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Ls/g;->h:Z

    :cond_16
    iget-boolean v1, p0, Ls/g;->h:Z

    if-nez v1, :cond_41

    invoke-virtual {p1}, Ls/b;->c()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Ls/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    iget-object v2, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v2}, Lz/l;->n()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4100

    if-ltz v1, :cond_41

    cmpl-float v4, v2, v3

    if-lez v4, :cond_41

    packed-switch v1, :pswitch_data_52

    :goto_38
    sub-float v1, v2, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Ls/b;->setAccuracy(F)V

    :cond_41
    return-void

    :pswitch_42
    const/high16 v0, 0x3f80

    goto :goto_38

    :pswitch_45
    const/high16 v0, 0x3f40

    goto :goto_38

    :pswitch_48
    const/high16 v0, 0x3f00

    goto :goto_38

    :pswitch_4b
    const/high16 v0, 0x3e80

    goto :goto_38

    :pswitch_4e
    const/high16 v0, 0x3e00

    goto :goto_38

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private b(Landroid/location/Location;)V
    .registers 4

    iget-boolean v0, p0, Ls/g;->g:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/g;->g:Z

    :cond_16
    iget-boolean v0, p0, Ls/g;->g:Z

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/location/Location;->removeBearing()V

    :cond_1d
    return-void
.end method

.method private b(Ls/b;)V
    .registers 3

    iget-object v0, p0, Ls/g;->e:Ls/t;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ls/g;->e:Ls/t;

    invoke-virtual {v0}, Ls/t;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ls/b;->a(I)V

    :cond_d
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .registers 4

    iget-boolean v0, p0, Ls/g;->g:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Ls/g;->k:Ls/v;

    invoke-interface {v0}, Ls/v;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_12

    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    :cond_12
    return-void
.end method

.method private c(Ls/b;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ls/b;->c()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_9
    return v1

    :cond_a
    invoke-virtual {p1}, Ls/b;->d()I

    move-result v2

    if-lt v2, v4, :cond_12

    iput-boolean v0, p0, Ls/g;->f:Z

    :cond_12
    iget-boolean v3, p0, Ls/g;->f:Z

    if-eqz v3, :cond_1a

    if-ge v2, v4, :cond_1a

    :goto_18
    move v1, v0

    goto :goto_9

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method private d(Ls/b;)V
    .registers 4

    iget-boolean v0, p0, Ls/g;->f:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Ls/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Ls/b;->d()I

    move-result v0

    iget-object v1, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v1}, Lz/l;->m()I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-virtual {p1}, Ls/b;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v1}, Lz/l;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    iget-object v0, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v0}, Lz/l;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Ls/b;->setAccuracy(F)V

    :cond_2f
    return-void
.end method

.method private e(Ls/b;)V
    .registers 4

    iget-boolean v0, p0, Ls/g;->i:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Ls/b;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v1}, Lz/l;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    iget-object v0, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v0}, Lz/l;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Ls/b;->setAccuracy(F)V

    :cond_1d
    return-void
.end method

.method private f(Ls/b;)V
    .registers 4

    invoke-virtual {p1}, Ls/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ls/b;->getSpeed()F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    invoke-virtual {p1}, Ls/b;->removeSpeed()V

    :cond_13
    return-void
.end method

.method private g(Ls/b;)V
    .registers 8

    invoke-virtual {p1}, Ls/b;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v1}, Lz/l;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4b

    iget-object v0, p0, Ls/g;->l:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v0

    iget-wide v2, p0, Ls/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    iget-wide v2, p0, Ls/g;->c:J

    sub-long v2, v0, v2

    iget-object v4, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v4}, Lz/l;->k()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    iget-wide v4, p0, Ls/g;->d:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Ls/g;->d:J

    :cond_37
    iput-wide v0, p0, Ls/g;->c:J

    iget-wide v2, p0, Ls/g;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4b

    iget-object v0, p0, Ls/g;->j:Lz/l;

    invoke-virtual {v0}, Lz/l;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Ls/b;->setAccuracy(F)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls/g;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls/g;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Ls/g;->e:Ls/t;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/g;->i:Z

    return-void
.end method

.method public a(Ls/t;)V
    .registers 2

    iput-object p1, p0, Ls/g;->e:Ls/t;

    return-void
.end method

.method public a(Ls/v;)V
    .registers 2

    iput-object p1, p0, Ls/g;->k:Ls/v;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_hmm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Ls/E;->a(Landroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p0, Ls/g;->i:Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    iput-object v0, p0, Ls/g;->j:Lz/l;

    new-instance v0, Ls/b;

    invoke-direct {v0, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls/b;->a(Z)V

    invoke-direct {p0, v0}, Ls/g;->b(Ls/b;)V

    invoke-direct {p0, v0}, Ls/g;->a(Ls/b;)V

    invoke-direct {p0, v0}, Ls/g;->a(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Ls/g;->b(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Ls/g;->c(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Ls/g;->c(Ls/b;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, v0}, Ls/g;->d(Ls/b;)V

    invoke-direct {p0, v0}, Ls/g;->e(Ls/b;)V

    invoke-direct {p0, v0}, Ls/g;->f(Ls/b;)V

    invoke-direct {p0, v0}, Ls/g;->g(Ls/b;)V

    invoke-super {p0, v0}, Ls/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_12
.end method
