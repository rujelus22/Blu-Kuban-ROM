.class public LaG/a;
.super LaE/b;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Ljava/lang/String;

.field private h:Landroid/location/Location;

.field private final i:Laf/a;

.field private j:J

.field private k:Z

.field private final l:Z

.field private m:LaE/o;

.field private n:LaE/o;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, LaE/b;-><init>(ZZ)V

    const-string v0, "cell"

    iput-object v0, p0, LaG/a;->a:Ljava/lang/String;

    iput-boolean v1, p0, LaG/a;->k:Z

    iput-boolean p1, p0, LaG/a;->l:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, LaG/a;->i:Laf/a;

    return-void
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v2, "networkLocationType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_20

    const-string v0, "networkLocationType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method private a(Landroid/location/Location;Z)V
    .registers 14

    if-eqz p1, :cond_a2

    if-eqz p2, :cond_83

    iget-object v0, p0, LaG/a;->n:LaE/o;

    :goto_6
    invoke-virtual {v0, p1}, LaE/o;->a(Landroid/location/Location;)V

    new-instance v1, LaJ/B;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v0, v2}, LaJ/B;-><init>(II)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-int v2, v0

    :goto_2f
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v4, v0

    :goto_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, LaG/a;->d:Z

    iget-object v0, p0, LaG/a;->i:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v5

    if-eqz p2, :cond_8a

    const-string v0, "gps"

    iput-object v0, p0, LaG/a;->a:Ljava/lang/String;

    iput-wide v5, p0, LaG/a;->j:J

    invoke-virtual {p0}, LaG/a;->o()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_79

    invoke-virtual {p0}, LaG/a;->o()I

    move-result v0

    if-gt v0, v4, :cond_79

    iget-object v0, p0, LaG/a;->h:Landroid/location/Location;

    if-eqz v0, :cond_79

    iget-object v0, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    invoke-virtual {p0}, LaG/a;->o()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_79

    iget-wide v7, p0, LaG/a;->c:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1770

    cmp-long v0, v5, v7

    if-lez v0, :cond_82

    :cond_79
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, LaG/a;->a(LaJ/B;IIILt/y;J)V

    iput-object p1, p0, LaG/a;->h:Landroid/location/Location;

    :cond_82
    :goto_82
    return-void

    :cond_83
    iget-object v0, p0, LaG/a;->m:LaE/o;

    goto :goto_6

    :cond_86
    const/4 v2, -0x1

    goto :goto_2f

    :cond_88
    const/4 v4, -0x1

    goto :goto_3f

    :cond_8a
    iget-wide v7, p0, LaG/a;->j:J

    const-wide/32 v9, 0xea60

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_82

    invoke-static {p1}, LaG/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaG/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, LaG/a;->a(LaJ/B;IIILt/y;J)V

    goto :goto_82

    :cond_a2
    invoke-virtual {p0}, LaG/a;->s()Z

    move-result v0

    if-nez v0, :cond_82

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LaG/a;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaG/a;->d:Z

    goto :goto_82
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "cell"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .registers 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaG/a;->j:J

    const/4 v0, 0x0

    iget-boolean v1, p0, LaG/a;->l:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, LaG/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, LaG/a;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_1f
    iget-object v1, p0, LaG/a;->i:Laf/a;

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    if-eqz v0, :cond_44

    iget-object v3, p0, LaG/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xafc80

    cmp-long v1, v1, v3

    if-gtz v1, :cond_44

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaG/a;->a(Landroid/location/Location;Z)V

    :goto_43
    return-void

    :cond_44
    invoke-virtual {p0}, LaG/a;->l()V

    goto :goto_43
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaG/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(LaE/h;)V
    .registers 3

    invoke-super {p0, p1}, LaE/b;->a(LaE/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LaE/h;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaG/a;->k:Z

    invoke-virtual {p0}, LaG/a;->b()V

    invoke-virtual {p0}, LaG/a;->c()V

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, LaG/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method protected c()V
    .registers 8

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v0, LaE/o;

    const-string v1, "n"

    invoke-direct {v0, v1}, LaE/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LaG/a;->m:LaE/o;

    new-instance v0, LaE/o;

    const-string v1, "g"

    invoke-direct {v0, v1}, LaE/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LaG/a;->n:LaE/o;

    invoke-direct {p0}, LaG/a;->f()V

    iget-boolean v0, p0, LaG/a;->k:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, LaG/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, LaG/a;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_36
    iget-boolean v0, p0, LaG/a;->l:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, LaG/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, LaG/a;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_54
    return-void
.end method

.method public d()LaE/l;
    .registers 9

    const/4 v0, 0x0

    const-wide v6, 0x412e848000000000L

    iget-object v1, p0, LaG/a;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, LaG/a;->l:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, LaG/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, LaG/a;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_24
    if-eqz v1, :cond_4a

    new-instance v0, LaE/l;

    invoke-virtual {p0}, LaG/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, LaE/l;-><init>(Ljava/lang/String;)V

    new-instance v2, LaJ/B;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, LaJ/B;-><init>(II)V

    invoke-virtual {v0, v2}, LaE/l;->a(LaJ/B;)V

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LaE/l;->a(J)V

    :cond_4a
    return-object v0

    :cond_4b
    move-object v1, v0

    goto :goto_24
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaG/a;->k:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, LaG/a;->l:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, LaE/b;->i()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, LaG/a;->k()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, LaG/a;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, LaG/a;->f()V

    :cond_b
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_d

    invoke-direct {p0}, LaG/a;->f()V

    :cond_d
    return-void
.end method

.method public q()Lam/b;
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide v4, 0x416312d000000000L

    iget-object v0, p0, LaG/a;->h:Landroid/location/Location;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lam/b;

    sget-object v1, Lbr/O;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const-string v1, "gps"

    invoke-virtual {v0, v7, v1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x6

    iget-object v2, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/16 v1, 0xd

    iget-object v2, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    new-instance v1, Lam/b;

    sget-object v2, Lbr/M;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lam/b;->h(II)V

    iget-object v2, p0, LaG/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Lam/b;->h(II)V

    invoke-virtual {v0, v6, v1}, Lam/b;->b(ILam/b;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    goto :goto_c
.end method
