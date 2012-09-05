.class Ls/x;
.super Ljava/lang/Object;

# interfaces
.implements Ls/v;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private b:Landroid/location/GpsStatus;

.field private final c:Ls/w;

.field private final d:LaP/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls/w;-><init>(Ls/p;)V

    iput-object v0, p0, Ls/x;->c:Ls/w;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    new-instance v0, Ls/y;

    invoke-direct {v0, p0}, Ls/y;-><init>(Ls/x;)V

    new-instance v1, LaP/a;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LaP/a;-><init>(LaP/e;Laf/a;)V

    invoke-virtual {v1, p1}, LaP/a;->a(Landroid/content/Context;)V

    iput-object v1, p0, Ls/x;->d:LaP/h;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ls/p;)V
    .registers 3

    invoke-direct {p0, p1}, Ls/x;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Ls/x;)Landroid/location/LocationManager;
    .registers 2

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JFLs/c;)V
    .registers 12

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_15
    return-void
.end method

.method public a(Ls/c;)V
    .registers 3

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public a(Ls/s;)V
    .registers 3

    iget-object v0, p0, Ls/x;->c:Ls/w;

    invoke-virtual {v0, p1}, Ls/w;->a(Ls/s;)V

    return-void
.end method

.method public a(Landroid/location/GpsStatus$Listener;)Z
    .registers 3

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Ls/x;->d:LaP/h;

    iget-object v1, p0, Ls/x;->c:Ls/w;

    invoke-virtual {v0, v1}, LaP/h;->b(LaP/i;)V

    return-void
.end method

.method public b(Landroid/location/GpsStatus$Listener;)V
    .registers 3

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    return-void
.end method

.method public b(Ls/c;)V
    .registers 4

    iget-object v0, p0, Ls/x;->c:Ls/w;

    invoke-virtual {v0, p1}, Ls/w;->a(Ls/c;)V

    iget-object v0, p0, Ls/x;->d:LaP/h;

    iget-object v1, p0, Ls/x;->c:Ls/w;

    invoke-virtual {v0, v1}, LaP/h;->a(LaP/i;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ls/x;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c()Ls/t;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Ls/x;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Ls/x;->b:Landroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    iput-object v1, p0, Ls/x;->b:Landroid/location/GpsStatus;

    iget-object v1, p0, Ls/x;->b:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_35

    add-int/lit8 v0, v1, 0x1

    :goto_2d
    move v1, v0

    goto :goto_17

    :cond_2f
    new-instance v0, Ls/t;

    invoke-direct {v0, v2, v1}, Ls/t;-><init>(II)V

    return-object v0

    :cond_35
    move v0, v1

    goto :goto_2d
.end method

.method public d()F
    .registers 2

    iget-object v0, p0, Ls/x;->d:LaP/h;

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ls/x;->d:LaP/h;

    invoke-virtual {v0}, LaP/h;->d()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/high16 v0, -0x4080

    goto :goto_e
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Ls/x;->d:LaP/h;

    invoke-virtual {v0}, LaP/h;->g()V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Ls/x;->d:LaP/h;

    invoke-virtual {v0}, LaP/h;->h()V

    iget-object v0, p0, Ls/x;->d:LaP/h;

    sget-object v1, LaP/j;->c:LaP/j;

    invoke-virtual {v0, v1}, LaP/h;->a(LaP/j;)V

    return-void
.end method
