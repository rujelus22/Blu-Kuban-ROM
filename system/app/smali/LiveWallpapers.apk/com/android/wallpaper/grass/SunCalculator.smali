.class Lcom/android/wallpaper/grass/SunCalculator;
.super Ljava/lang/Object;
.source "SunCalculator.java"


# instance fields
.field private mLocation:Landroid/location/Location;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .registers 4
    .parameter "location"
    .parameter "timeZoneIdentifier"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/wallpaper/grass/SunCalculator;->mLocation:Landroid/location/Location;

    .line 48
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/SunCalculator;->mTimeZone:Ljava/util/TimeZone;

    .line 49
    return-void
.end method

.method private adjustForDST(DLjava/util/Calendar;)D
    .registers 10
    .parameter "localMeanTime"
    .parameter "date"

    .prologue
    const-wide/high16 v4, 0x4038

    .line 285
    move-wide v0, p1

    .line 286
    .local v0, localTime:D
    iget-object v2, p0, Lcom/android/wallpaper/grass/SunCalculator;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 287
    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    .line 289
    :cond_12
    cmpl-double v2, v0, v4

    if-lez v2, :cond_17

    .line 290
    sub-double/2addr v0, v4

    .line 292
    :cond_17
    return-wide v0
.end method

.method private computeSolarEventTime(DLjava/util/Calendar;Z)D
    .registers 22
    .parameter "solarZenith"
    .parameter "date"
    .parameter "isSunrise"

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/wallpaper/grass/SunCalculator;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/wallpaper/grass/SunCalculator;->getLongitudeHour(Ljava/util/Calendar;Ljava/lang/Boolean;)D

    move-result-wide v5

    .line 124
    .local v5, longitudeHour:D
    invoke-static {v5, v6}, Lcom/android/wallpaper/grass/SunCalculator;->getMeanAnomaly(D)D

    move-result-wide v13

    .line 125
    .local v13, meanAnomaly:D
    invoke-static {v13, v14}, Lcom/android/wallpaper/grass/SunCalculator;->getSunTrueLongitude(D)D

    move-result-wide v3

    .line 126
    .local v3, sunTrueLong:D
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/wallpaper/grass/SunCalculator;->getCosineSunLocalHour(DD)D

    move-result-wide v9

    .line 127
    .local v9, cosineSunLocalHour:D
    const-wide/high16 v15, -0x4010

    cmpg-double v15, v9, v15

    if-ltz v15, :cond_31

    const-wide/high16 v15, 0x3ff0

    cmpl-double v15, v9, v15

    if-lez v15, :cond_34

    .line 128
    :cond_31
    const-wide/16 v15, 0x0

    .line 133
    :goto_33
    return-wide v15

    .line 131
    :cond_34
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v9, v10, v15}, Lcom/android/wallpaper/grass/SunCalculator;->getSunLocalHour(DLjava/lang/Boolean;)D

    move-result-wide v7

    .line 132
    .local v7, sunLocalHour:D
    invoke-static/range {v3 .. v8}, Lcom/android/wallpaper/grass/SunCalculator;->getLocalMeanTime(DDD)D

    move-result-wide v11

    .line 133
    .local v11, localMeanTime:D
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v12, v1}, Lcom/android/wallpaper/grass/SunCalculator;->getLocalTime(DLjava/util/Calendar;)D

    move-result-wide v15

    goto :goto_33
.end method

.method private getBaseLongitudeHour()D
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/wallpaper/grass/SunCalculator;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x402e

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static getCosineOfSunDeclination(D)D
    .registers 6
    .parameter "sinSunDeclination"

    .prologue
    .line 248
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 249
    .local v0, arcSinOfSinDeclination:D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private getCosineSunLocalHour(DD)D
    .registers 28
    .parameter "sunTrueLong"
    .parameter "zenith"

    .prologue
    .line 225
    invoke-static/range {p1 .. p2}, Lcom/android/wallpaper/grass/SunCalculator;->getSinOfSunDeclination(D)D

    move-result-wide v17

    .line 226
    .local v17, sinSunDeclination:D
    invoke-static/range {v17 .. v18}, Lcom/android/wallpaper/grass/SunCalculator;->getCosineOfSunDeclination(D)D

    move-result-wide v3

    .line 228
    .local v3, cosineSunDeclination:D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 229
    .local v19, zenithInRads:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/grass/SunCalculator;->mLocation:Landroid/location/Location;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->getLatitude()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 231
    .local v11, latitude:D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 232
    .local v5, cosineZenith:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 233
    .local v15, sinLatitude:D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 235
    .local v1, cosLatitude:D
    mul-double v13, v17, v15

    .line 236
    .local v13, sinDeclinationTimesSinLat:D
    sub-double v7, v5, v13

    .line 237
    .local v7, dividend:D
    mul-double v9, v3, v1

    .line 239
    .local v9, divisor:D
    div-double v21, v7, v9

    return-wide v21
.end method

.method private static getDayOfYear(Ljava/util/Calendar;)D
    .registers 3
    .parameter "date"

    .prologue
    .line 300
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method private static getLocalMeanTime(DDD)D
    .registers 16
    .parameter "sunTrueLong"
    .parameter "longitudeHour"
    .parameter "sunLocalHour"

    .prologue
    const-wide/high16 v8, 0x4038

    .line 264
    invoke-static {p0, p1}, Lcom/android/wallpaper/grass/SunCalculator;->getRightAscension(D)D

    move-result-wide v4

    .line 265
    .local v4, rightAscension:D
    const-wide v6, 0x3fb0d25edd052935L

    mul-double v0, p2, v6

    .line 266
    .local v0, innerParens:D
    add-double v6, p4, v4

    sub-double v2, v6, v0

    .line 267
    .local v2, localMeanTime:D
    const-wide v6, 0x401a7ced916872b0L

    sub-double/2addr v2, v6

    .line 269
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1f

    .line 270
    add-double/2addr v2, v8

    .line 274
    :cond_1e
    :goto_1e
    return-wide v2

    .line 271
    :cond_1f
    cmpl-double v6, v2, v8

    if-lez v6, :cond_1e

    .line 272
    sub-double/2addr v2, v8

    goto :goto_1e
.end method

.method private getLocalTime(DLjava/util/Calendar;)D
    .registers 12
    .parameter "localMeanTime"
    .parameter "date"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/wallpaper/grass/SunCalculator;->getBaseLongitudeHour()D

    move-result-wide v6

    sub-double v4, p1, v6

    .line 279
    .local v4, utcTime:D
    invoke-static {p3}, Lcom/android/wallpaper/grass/SunCalculator;->getUTCOffSet(Ljava/util/Calendar;)D

    move-result-wide v0

    .line 280
    .local v0, utcOffSet:D
    add-double v2, v4, v0

    .line 281
    .local v2, utcOffSetTime:D
    invoke-direct {p0, v2, v3, p3}, Lcom/android/wallpaper/grass/SunCalculator;->adjustForDST(DLjava/util/Calendar;)D

    move-result-wide v6

    return-wide v6
.end method

.method private getLongitudeHour(Ljava/util/Calendar;Ljava/lang/Boolean;)D
    .registers 12
    .parameter "date"
    .parameter "isSunrise"

    .prologue
    .line 152
    const/16 v4, 0x12

    .line 153
    .local v4, offset:I
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 154
    const/4 v4, 0x6

    .line 156
    :cond_9
    int-to-double v5, v4

    invoke-direct {p0}, Lcom/android/wallpaper/grass/SunCalculator;->getBaseLongitudeHour()D

    move-result-wide v7

    sub-double v2, v5, v7

    .line 157
    .local v2, dividend:D
    const-wide/high16 v5, 0x4038

    div-double v0, v2, v5

    .line 158
    .local v0, addend:D
    invoke-static {p1}, Lcom/android/wallpaper/grass/SunCalculator;->getDayOfYear(Ljava/util/Calendar;)D

    move-result-wide v5

    add-double/2addr v5, v0

    return-wide v5
.end method

.method private static getMeanAnomaly(D)D
    .registers 6
    .parameter "longitudeHour"

    .prologue
    .line 167
    const-wide v0, 0x3fef8a0902de00d2L

    mul-double/2addr v0, p0

    const-wide v2, 0x400a4fdf3b645a1dL

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static getRightAscension(D)D
    .registers 20
    .parameter "sunTrueLong"

    .prologue
    .line 201
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    .line 203
    .local v12, tanL:D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    const-wide v16, 0x3fed5d4e8fb00bccL

    mul-double v2, v14, v16

    .line 204
    .local v2, innerParens:D
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 205
    .local v8, rightAscension:D
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    .line 207
    const-wide/16 v14, 0x0

    cmpg-double v14, v8, v14

    if-gez v14, :cond_43

    .line 208
    const-wide v14, 0x4076800000000000L

    add-double/2addr v8, v14

    .line 213
    :cond_2b
    :goto_2b
    const-wide v6, 0x4056800000000000L

    .line 214
    .local v6, ninety:D
    div-double v14, p0, v6

    double-to-int v14, v14

    int-to-double v4, v14

    .line 215
    .local v4, longitudeQuadrant:D
    mul-double/2addr v4, v6

    .line 217
    div-double v14, v8, v6

    double-to-int v14, v14

    int-to-double v10, v14

    .line 218
    .local v10, rightAscensionQuadrant:D
    mul-double/2addr v10, v6

    .line 220
    sub-double v0, v4, v10

    .line 221
    .local v0, augend:D
    add-double v14, v8, v0

    const-wide/high16 v16, 0x402e

    div-double v14, v14, v16

    return-wide v14

    .line 209
    .end local v0           #augend:D
    .end local v4           #longitudeQuadrant:D
    .end local v6           #ninety:D
    .end local v10           #rightAscensionQuadrant:D
    :cond_43
    const-wide v14, 0x4076800000000000L

    cmpl-double v14, v8, v14

    if-lez v14, :cond_2b

    .line 210
    const-wide v14, 0x4076800000000000L

    sub-double/2addr v8, v14

    goto :goto_2b
.end method

.method private static getSinOfSunDeclination(D)D
    .registers 6
    .parameter "sunTrueLong"

    .prologue
    .line 243
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 244
    .local v0, sinTrueLongitude:D
    const-wide v2, 0x3fd975e2046c764bL

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private static getSunLocalHour(DLjava/lang/Boolean;)D
    .registers 9
    .parameter "cosineSunLocalHour"
    .parameter "isSunrise"

    .prologue
    .line 253
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 254
    .local v0, arcCosineOfCosineHourAngle:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 255
    .local v2, localHour:D
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 256
    const-wide v4, 0x4076800000000000L

    sub-double v2, v4, v2

    .line 258
    :cond_15
    const-wide/high16 v4, 0x402e

    div-double v4, v2, v4

    return-wide v4
.end method

.method private static getSunTrueLongitude(D)D
    .registers 18
    .parameter "meanAnomaly"

    .prologue
    .line 178
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 179
    .local v2, meanRadians:D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 180
    .local v8, sinMeanAnomaly:D
    const-wide/high16 v12, 0x4000

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 182
    .local v6, sinDoubleMeanAnomaly:D
    const-wide v12, 0x3ffea7ef9db22d0eL

    mul-double/2addr v12, v8

    add-double v0, p0, v12

    .line 183
    .local v0, firstPart:D
    const-wide v12, 0x3f947ae147ae147bL

    mul-double/2addr v12, v6

    const-wide v14, 0x4071aa24dd2f1aa0L

    add-double v4, v12, v14

    .line 184
    .local v4, secondPart:D
    add-double v10, v0, v4

    .line 186
    .local v10, trueLongitude:D
    const-wide v12, 0x4076800000000000L

    cmpl-double v12, v10, v12

    if-lez v12, :cond_35

    .line 187
    const-wide v12, 0x4076800000000000L

    sub-double/2addr v10, v12

    .line 189
    :cond_35
    return-wide v10
.end method

.method private static getUTCOffSet(Ljava/util/Calendar;)D
    .registers 4
    .parameter "date"

    .prologue
    .line 304
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 305
    .local v0, offSetInMillis:I
    const v1, 0x36ee80

    div-int v1, v0, v1

    int-to-double v1, v1

    return-wide v1
.end method

.method public static timeToDayFraction(D)F
    .registers 8
    .parameter "time"

    .prologue
    .line 100
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 101
    .local v0, hour:I
    int-to-double v2, v0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x404e

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 102
    .local v1, minute:I
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_17

    .line 103
    const/4 v1, 0x0

    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 106
    :cond_17
    mul-int/lit8 v2, v0, 0x3c

    add-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x44b4

    div-float/2addr v2, v3

    return v2
.end method


# virtual methods
.method public computeSunriseTime(DLjava/util/Calendar;)D
    .registers 6
    .parameter "solarZenith"
    .parameter "date"

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wallpaper/grass/SunCalculator;->computeSolarEventTime(DLjava/util/Calendar;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public computeSunsetTime(DLjava/util/Calendar;)D
    .registers 6
    .parameter "solarZenith"
    .parameter "date"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wallpaper/grass/SunCalculator;->computeSolarEventTime(DLjava/util/Calendar;Z)D

    move-result-wide v0

    return-wide v0
.end method
