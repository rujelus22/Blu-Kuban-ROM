.class public LaH/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLbp/b;LaH/c;)Landroid/location/Location;
    .registers 9

    const-wide v3, 0x416312d000000000L

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Landroid/location/Location;

    const-string v1, "ParticleFilterLocationProvider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lbp/b;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    iget v1, p2, Lbp/b;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    :cond_22
    iget v1, p2, Lbp/b;->a:I

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget v1, p2, Lbp/b;->b:I

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const-wide/32 v1, 0xf4240

    div-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    invoke-virtual {p3}, LaH/c;->f()Lt/y;

    move-result-object v1

    invoke-static {v1}, LaH/a;->a(Lt/y;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method public static a(Lt/y;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "networkLocationSource"

    const-string v2, "cached"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkLocationType"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2b

    const-string v1, "levelId"

    invoke-virtual {p0}, Lt/y;->a()Lt/r;

    move-result-object v2

    invoke-virtual {v2}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "levelNumberE3"

    invoke-virtual {p0}, Lt/y;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2b
    return-object v0
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;F)Lbp/b;
    .registers 11

    const-wide v4, 0x416312d000000000L

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v1, v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2e

    const/4 v6, -0x1

    :cond_2e
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v7

    :cond_39
    new-instance v0, Lbp/b;

    const-string v4, ""

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lbp/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IF)V

    goto :goto_8
.end method

.method public static a(Landroid/location/Location;Lt/y;F)Lbp/b;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lt/y;->a()Lt/r;

    move-result-object v0

    invoke-virtual {v0}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-static {p0, v0, p2}, LaH/a;->a(Landroid/location/Location;Ljava/lang/String;F)Lbp/b;

    move-result-object v0

    return-object v0
.end method
