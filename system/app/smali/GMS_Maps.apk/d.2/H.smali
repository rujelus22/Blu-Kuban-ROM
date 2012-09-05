.class Ld/H;
.super Ld/al;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private final c:Landroid/location/LocationManager;

.field private d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLd/y;Ld/C;Lm/c;)V
    .registers 8

    invoke-direct {p0, p1, p4, p5, p6}, Ld/al;-><init>(Landroid/content/Context;Ld/y;Ld/C;Lm/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/H;->d:Z

    iput-boolean p2, p0, Ld/H;->e:Z

    iput-boolean p3, p0, Ld/H;->f:Z

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 8

    iget-boolean v0, p0, Ld/H;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    :cond_9
    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_20

    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ld/H;->f()Ld/y;

    move-result-object v5

    invoke-virtual {v5}, Ld/y;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_20
    iget-object v0, p0, Ld/H;->b:Ld/C;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ld/H;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->g()V

    :cond_29
    return-void
.end method

.method protected b()V
    .registers 2

    iget-boolean v0, p0, Ld/H;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_9
    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_12
    iget-object v0, p0, Ld/H;->b:Ld/C;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ld/H;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->h()V

    :cond_1b
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .registers 6

    iget-boolean v0, p0, Ld/H;->f:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Ld/H;->h()V

    invoke-virtual {p0}, Ld/H;->g()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Ld/H;->c:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    invoke-virtual {p0}, Ld/H;->f()Ld/y;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Ld/y;->a(Landroid/location/GpsStatus;J)V

    goto :goto_4
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8

    iget-boolean v0, p0, Ld/H;->e:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Ld/H;->h()V

    invoke-virtual {p0}, Ld/H;->g()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ld/H;->f()Ld/y;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ld/y;->a(Landroid/location/Location;J)V

    iget-boolean v0, p0, Ld/H;->d:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/H;->d:Z

    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {p0}, Ld/H;->f()Ld/y;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getZ()F

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Ld/y;->a(FFFF)V

    goto :goto_4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
