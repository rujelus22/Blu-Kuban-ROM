.class Lm/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/w;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private b:Landroid/location/GpsStatus;

.field private final c:Lm/x;

.field private final d:LaB/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    new-instance v0, Lm/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/x;-><init>(Lm/p;)V

    iput-object v0, p0, Lm/y;->c:Lm/x;

    .line 858
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    .line 861
    new-instance v0, Lm/z;

    invoke-direct {v0, p0}, Lm/z;-><init>(Lm/y;)V

    .line 881
    new-instance v1, LaB/a;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LaB/a;-><init>(LaB/e;Lcom/google/googlenav/common/a;)V

    .line 883
    invoke-virtual {v1, p1}, LaB/a;->a(Landroid/content/Context;)V

    .line 884
    iput-object v1, p0, Lm/y;->d:LaB/h;

    .line 885
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lm/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lm/y;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lm/y;)Landroid/location/LocationManager;
    .registers 2
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .registers 3
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 894
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JFLm/c;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 916
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 917
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 920
    :cond_15
    return-void
.end method

.method public a(Lm/c;)V
    .registers 3
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 906
    return-void
.end method

.method public a(Lm/t;)V
    .registers 3
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lm/y;->c:Lm/x;

    invoke-virtual {v0, p1}, Lm/x;->a(Lm/t;)V

    .line 976
    return-void
.end method

.method public a(Landroid/location/GpsStatus$Listener;)Z
    .registers 3
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 910
    iget-object v0, p0, Lm/y;->d:LaB/h;

    iget-object v1, p0, Lm/y;->c:Lm/x;

    invoke-virtual {v0, v1}, LaB/h;->b(LaB/i;)V

    .line 911
    return-void
.end method

.method public b(Landroid/location/GpsStatus$Listener;)V
    .registers 3
    .parameter

    .prologue
    .line 935
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 936
    return-void
.end method

.method public b(Lm/c;)V
    .registers 4
    .parameter

    .prologue
    .line 924
    iget-object v0, p0, Lm/y;->c:Lm/x;

    invoke-virtual {v0, p1}, Lm/x;->a(Lm/c;)V

    .line 925
    iget-object v0, p0, Lm/y;->d:LaB/h;

    iget-object v1, p0, Lm/y;->c:Lm/x;

    invoke-virtual {v0, v1}, LaB/h;->a(LaB/i;)V

    .line 926
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lm/y;->a:Landroid/location/LocationManager;

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

.method public c()Lm/u;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 941
    iget-object v1, p0, Lm/y;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lm/y;->b:Landroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    iput-object v1, p0, Lm/y;->b:Landroid/location/GpsStatus;

    .line 944
    iget-object v1, p0, Lm/y;->b:Landroid/location/GpsStatus;

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

    .line 945
    add-int/lit8 v2, v2, 0x1

    .line 946
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 947
    add-int/lit8 v0, v1, 0x1

    :goto_2d
    move v1, v0

    goto :goto_17

    .line 950
    :cond_2f
    new-instance v0, Lm/u;

    invoke-direct {v0, v2, v1}, Lm/u;-><init>(II)V

    return-object v0

    :cond_35
    move v0, v1

    goto :goto_2d
.end method

.method public d()F
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lm/y;->d:LaB/h;

    invoke-virtual {v0}, LaB/h;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lm/y;->d:LaB/h;

    invoke-virtual {v0}, LaB/h;->d()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/high16 v0, -0x4080

    goto :goto_e
.end method

.method public e()V
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lm/y;->d:LaB/h;

    invoke-virtual {v0}, LaB/h;->g()V

    .line 962
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 966
    iget-object v0, p0, Lm/y;->d:LaB/h;

    invoke-virtual {v0}, LaB/h;->h()V

    .line 969
    iget-object v0, p0, Lm/y;->d:LaB/h;

    sget-object v1, LaB/j;->c:LaB/j;

    invoke-virtual {v0, v1}, LaB/h;->a(LaB/j;)V

    .line 971
    return-void
.end method
