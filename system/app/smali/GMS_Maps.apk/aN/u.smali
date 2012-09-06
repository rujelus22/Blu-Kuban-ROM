.class public Lan/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:D

.field private c:F

.field private d:Landroid/os/Bundle;

.field private e:D

.field private f:D

.field private g:Ljava/lang/String;

.field private h:F

.field private i:J

.field private j:Ln/B;

.field private k:Lat/B;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-boolean v0, p0, Lan/u;->l:Z

    .line 379
    iput-boolean v0, p0, Lan/u;->m:Z

    .line 380
    iput-boolean v0, p0, Lan/u;->n:Z

    .line 381
    iput-boolean v0, p0, Lan/u;->o:Z

    .line 382
    iput-boolean v0, p0, Lan/u;->p:Z

    return-void
.end method

.method static synthetic a(Lan/u;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lan/u;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/location/Location;)V
    .registers 6
    .parameter

    .prologue
    .line 480
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 481
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0, v0}, Lan/u;->a(F)Lan/u;

    .line 483
    :cond_d
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 484
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lan/u;->a(D)Lan/u;

    .line 486
    :cond_1a
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 487
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p0, v0}, Lan/u;->b(F)Lan/u;

    .line 489
    :cond_27
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lan/u;->a(DD)Lan/u;

    .line 490
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/u;->a(Ljava/lang/String;)Lan/u;

    .line 491
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 492
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-virtual {p0, v0}, Lan/u;->c(F)Lan/u;

    .line 494
    :cond_46
    return-void
.end method

.method static synthetic b(Lan/u;)Z
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-boolean v0, p0, Lan/u;->l:Z

    return v0
.end method

.method static synthetic c(Lan/u;)F
    .registers 2
    .parameter

    .prologue
    .line 365
    iget v0, p0, Lan/u;->a:F

    return v0
.end method

.method static synthetic d(Lan/u;)Z
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-boolean v0, p0, Lan/u;->m:Z

    return v0
.end method

.method static synthetic e(Lan/u;)D
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-wide v0, p0, Lan/u;->b:D

    return-wide v0
.end method

.method static synthetic f(Lan/u;)Z
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-boolean v0, p0, Lan/u;->n:Z

    return v0
.end method

.method static synthetic g(Lan/u;)F
    .registers 2
    .parameter

    .prologue
    .line 365
    iget v0, p0, Lan/u;->c:F

    return v0
.end method

.method static synthetic h(Lan/u;)D
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-wide v0, p0, Lan/u;->e:D

    return-wide v0
.end method

.method static synthetic i(Lan/u;)D
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-wide v0, p0, Lan/u;->f:D

    return-wide v0
.end method

.method static synthetic j(Lan/u;)Z
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-boolean v0, p0, Lan/u;->o:Z

    return v0
.end method

.method static synthetic k(Lan/u;)F
    .registers 2
    .parameter

    .prologue
    .line 365
    iget v0, p0, Lan/u;->h:F

    return v0
.end method

.method static synthetic l(Lan/u;)Z
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-boolean v0, p0, Lan/u;->p:Z

    return v0
.end method

.method static synthetic m(Lan/u;)J
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-wide v0, p0, Lan/u;->i:J

    return-wide v0
.end method

.method static synthetic n(Lan/u;)Landroid/os/Bundle;
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lan/u;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic o(Lan/u;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lan/u;->k:Lat/B;

    return-object v0
.end method

.method static synthetic p(Lan/u;)Ln/B;
    .registers 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lan/u;->j:Ln/B;

    return-object v0
.end method


# virtual methods
.method public a()Lan/u;
    .registers 2

    .prologue
    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan/u;->p:Z

    .line 503
    return-object p0
.end method

.method public a(D)Lan/u;
    .registers 4
    .parameter

    .prologue
    .line 391
    iput-wide p1, p0, Lan/u;->b:D

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/u;->m:Z

    .line 393
    return-object p0
.end method

.method public a(DD)Lan/u;
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 412
    iput-wide p1, p0, Lan/u;->e:D

    .line 413
    iput-wide p3, p0, Lan/u;->f:D

    .line 414
    new-instance v0, Lat/B;

    mul-double v1, p1, v3

    double-to-int v1, v1

    mul-double v2, p3, v3

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    iput-object v0, p0, Lan/u;->k:Lat/B;

    .line 415
    return-object p0
.end method

.method public a(F)Lan/u;
    .registers 3
    .parameter

    .prologue
    .line 385
    iput p1, p0, Lan/u;->a:F

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/u;->l:Z

    .line 387
    return-object p0
.end method

.method public a(J)Lan/u;
    .registers 4
    .parameter

    .prologue
    .line 430
    iput-wide p1, p0, Lan/u;->i:J

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/u;->p:Z

    .line 432
    return-object p0
.end method

.method public a(Lan/s;)Lan/u;
    .registers 4
    .parameter

    .prologue
    .line 467
    if-nez p1, :cond_3

    .line 476
    :cond_2
    :goto_2
    return-object p0

    .line 470
    :cond_3
    invoke-direct {p0, p1}, Lan/u;->b(Landroid/location/Location;)V

    .line 471
    invoke-virtual {p1}, Lan/s;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/u;->a(Landroid/os/Bundle;)Lan/u;

    .line 472
    invoke-virtual {p1}, Lan/s;->b()Ln/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/u;->a(Ln/B;)Lan/u;

    .line 473
    invoke-virtual {p1}, Lan/s;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p1}, Lan/s;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lan/u;->a(J)Lan/u;

    goto :goto_2
.end method

.method public a(Landroid/location/Location;)Lan/u;
    .registers 4
    .parameter

    .prologue
    .line 456
    if-nez p1, :cond_3

    .line 463
    :goto_2
    return-object p0

    .line 459
    :cond_3
    invoke-direct {p0, p1}, Lan/u;->b(Landroid/location/Location;)V

    .line 460
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/u;->a(Landroid/os/Bundle;)Lan/u;

    .line 461
    invoke-static {p1}, Lan/b;->b(Landroid/location/Location;)Ln/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/u;->a(Ln/B;)Lan/u;

    .line 462
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lan/u;->a(J)Lan/u;

    goto :goto_2
.end method

.method public a(Landroid/os/Bundle;)Lan/u;
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lan/u;->d:Landroid/os/Bundle;

    .line 404
    return-object p0
.end method

.method public a(Lat/B;)Lan/u;
    .registers 6
    .parameter

    .prologue
    const-wide v2, 0x412e848000000000L

    .line 449
    iput-object p1, p0, Lan/u;->k:Lat/B;

    .line 450
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lan/u;->e:D

    .line 451
    invoke-virtual {p1}, Lat/B;->e()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lan/u;->f:D

    .line 452
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lan/u;
    .registers 2
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lan/u;->g:Ljava/lang/String;

    .line 420
    return-object p0
.end method

.method public a(Ln/B;)Lan/u;
    .registers 3
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lan/u;->j:Ln/B;

    .line 437
    if-eqz p1, :cond_b

    .line 442
    invoke-static {p1}, Laq/a;->a(Ln/B;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/u;->a(Landroid/os/Bundle;)Lan/u;

    .line 444
    :cond_b
    return-object p0
.end method

.method public b()Lan/s;
    .registers 3

    .prologue
    .line 511
    iget-object v0, p0, Lan/u;->k:Lat/B;

    if-nez v0, :cond_c

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "latitude and longitude must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_c
    new-instance v0, Lan/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lan/s;-><init>(Lan/u;Lan/t;)V

    return-object v0
.end method

.method public b(F)Lan/u;
    .registers 3
    .parameter

    .prologue
    .line 397
    iput p1, p0, Lan/u;->c:F

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/u;->n:Z

    .line 399
    return-object p0
.end method

.method public c(F)Lan/u;
    .registers 3
    .parameter

    .prologue
    .line 424
    iput p1, p0, Lan/u;->h:F

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/u;->o:Z

    .line 426
    return-object p0
.end method
