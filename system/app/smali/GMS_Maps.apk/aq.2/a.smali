.class public Laq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JLbd/b;Landroid/os/Bundle;Ljava/lang/String;)Landroid/location/Location;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v3, 0x416312d000000000L

    .line 38
    if-nez p2, :cond_9

    .line 39
    const/4 v0, 0x0

    .line 53
    :cond_8
    :goto_8
    return-object v0

    .line 41
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 42
    iget v1, p2, Lbd/b;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 43
    iget v1, p2, Lbd/b;->h:I

    .line 44
    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 45
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 47
    :cond_20
    iget v1, p2, Lbd/b;->b:I

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 48
    iget v1, p2, Lbd/b;->c:I

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 49
    const-wide/32 v1, 0xf4240

    div-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 50
    if-eqz p3, :cond_8

    .line 51
    invoke-virtual {v0, p3}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method public static a(Ln/B;)Landroid/os/Bundle;
    .registers 4
    .parameter

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v1, "networkLocationSource"

    const-string v2, "cached"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "networkLocationType"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p0, :cond_2b

    .line 85
    const-string v1, "levelId"

    invoke-virtual {p0}, Ln/B;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v2}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "levelNumberE3"

    invoke-virtual {p0}, Ln/B;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    :cond_2b
    return-object v0
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;F)Lbd/b;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x416312d000000000L

    .line 113
    if-nez p0, :cond_9

    .line 114
    const/4 v0, 0x0

    .line 130
    :goto_8
    return-object v0

    .line 116
    :cond_9
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v1, v0

    .line 117
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 118
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 119
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-int v6, v0

    .line 120
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_34

    .line 121
    :cond_33
    const/4 v6, -0x1

    .line 123
    :cond_34
    const/4 v7, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 125
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v7

    .line 130
    :cond_3f
    new-instance v0, Lbd/b;

    const-string v4, ""

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lbd/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IF)V

    goto :goto_8
.end method

.method public static a(Landroid/location/Location;Ln/B;F)Lbd/b;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_b

    .line 101
    invoke-virtual {p1}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-virtual {v0}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_b
    invoke-static {p0, v0, p2}, Laq/a;->a(Landroid/location/Location;Ljava/lang/String;F)Lbd/b;

    move-result-object v0

    return-object v0
.end method
