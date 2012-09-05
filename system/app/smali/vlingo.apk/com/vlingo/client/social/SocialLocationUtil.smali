.class public Lcom/vlingo/client/social/SocialLocationUtil;
.super Ljava/lang/Object;
.source "SocialLocationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Landroid/location/Location;FF)D
    .registers 19
    .parameter "currentLocation"
    .parameter "point_lat"
    .parameter "point_lon"

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    double-to-float v4, v14

    .line 34
    .local v4, lat_a:F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    double-to-float v6, v14

    .line 35
    .local v6, lng_a:F
    move/from16 v5, p1

    .line 36
    .local v5, lat_b:F
    move/from16 v7, p2

    .line 37
    .local v7, lng_b:F
    const v8, 0x42652d0f

    .line 38
    .local v8, pk:F
    div-float v0, v4, v8

    .line 39
    .local v0, a1:F
    div-float v1, v6, v8

    .line 40
    .local v1, a2:F
    div-float v2, v5, v8

    .line 41
    .local v2, b1:F
    div-float v3, v7, v8

    .line 42
    .local v3, b2:F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v14

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float/2addr v14, v15

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float/2addr v14, v15

    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float v9, v14, v15

    .line 43
    .local v9, t1:F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v14

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v15

    mul-float/2addr v14, v15

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float/2addr v14, v15

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v15

    mul-float v10, v14, v15

    .line 44
    .local v10, t2:F
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v14

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v15

    mul-float v11, v14, v15

    .line 45
    .local v11, t3:F
    add-float v14, v9, v10

    add-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    .line 46
    .local v12, tt:D
    const-wide v14, 0x415848cc00000000L

    mul-double/2addr v14, v12

    return-wide v14
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 17
    const-string v4, "location"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 18
    .local v2, lm:Landroid/location/LocationManager;
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 19
    .local v0, cr:Landroid/location/Criteria;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 20
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 21
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 22
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 23
    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 24
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, provider:Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 26
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 29
    :goto_29
    return-object v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method
