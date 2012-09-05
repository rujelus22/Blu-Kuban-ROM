.class public LF/c;
.super LF/b;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private final b:Laf/a;


# direct methods
.method public constructor <init>(LF/T;Landroid/content/Context;Laf/a;)V
    .registers 5

    const-string v0, "gps"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    iput-object p3, p0, LF/c;->b:Laf/a;

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, LF/c;->a:Landroid/location/LocationManager;

    return-void
.end method

.method private static a()I
    .registers 1

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->c:I

    return v0
.end method


# virtual methods
.method public b()V
    .registers 8

    invoke-virtual {p0}, LF/c;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, LF/c;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, LF/c;->a()I

    move-result v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v0, p0, LF/c;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-long v2, v2

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-super {p0}, LF/b;->b()V

    goto :goto_6
.end method

.method public d()V
    .registers 2

    invoke-virtual {p0}, LF/c;->e()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-super {p0}, LF/b;->d()V

    iget-object v0, p0, LF/c;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_6
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    new-instance v0, LF/R;

    invoke-direct {v0, p1}, LF/R;-><init>(Landroid/location/Location;)V

    sget-object v1, LF/S;->a:LF/S;

    invoke-virtual {v0, v1}, LF/R;->a(LF/S;)V

    iget-object v1, p0, LF/c;->b:Laf/a;

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LF/R;->setTime(J)V

    invoke-super {p0, v0}, LF/b;->a(LF/R;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1, p1}, LF/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1, p1}, LF/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p1, p2}, LF/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
