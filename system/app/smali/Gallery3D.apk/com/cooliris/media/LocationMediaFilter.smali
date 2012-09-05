.class public Lcom/cooliris/media/LocationMediaFilter;
.super Lcom/cooliris/media/MediaFilter;
.source "LocationMediaFilter.java"


# instance fields
.field private mCenterLat:D

.field private mCenterLon:D

.field private mRadius:D


# direct methods
.method constructor <init>(DDDD)V
    .registers 11
    .parameter "latitude1"
    .parameter "longitude1"
    .parameter "latitude2"
    .parameter "longitude2"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cooliris/media/MediaFilter;-><init>()V

    .line 43
    invoke-static {p1, p2, p5, p6}, Lcom/cooliris/media/LocationMediaFilter;->centerLat(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cooliris/media/LocationMediaFilter;->mCenterLat:D

    .line 44
    invoke-static {p3, p4, p7, p8}, Lcom/cooliris/media/LocationMediaFilter;->centerLon(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cooliris/media/LocationMediaFilter;->mCenterLon:D

    .line 45
    invoke-static/range {p1 .. p8}, Lcom/cooliris/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cooliris/media/LocationMediaFilter;->mRadius:D

    .line 46
    return-void
.end method

.method public static final centerLat(DD)D
    .registers 6
    .parameter "lat1"
    .parameter "lat2"

    .prologue
    .line 49
    const/16 v0, 0x5a

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cooliris/media/LocationMediaFilter;->centerOfAngles(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final centerLon(DD)D
    .registers 6
    .parameter "lon1"
    .parameter "lon2"

    .prologue
    .line 53
    const/16 v0, 0xb4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cooliris/media/LocationMediaFilter;->centerOfAngles(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final centerOfAngles(DDI)D
    .registers 12
    .parameter "ang1"
    .parameter "ang2"
    .parameter "wrapAroundThreshold"

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, wrapAround:Z
    sub-double v3, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    int-to-double v5, p4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_d

    .line 59
    const/4 v2, 0x1

    .line 61
    :cond_d
    add-double v3, p0, p2

    const-wide/high16 v5, 0x3fe0

    mul-double v0, v3, v5

    .line 62
    .local v0, center:D
    if-eqz v2, :cond_19

    .line 63
    int-to-double v3, p4

    add-double/2addr v0, v3

    .line 64
    int-to-double v3, p4

    rem-double/2addr v0, v3

    .line 66
    :cond_19
    return-wide v0
.end method

.method public static distanceBetween(DDDD)D
    .registers 22
    .parameter "lat1"
    .parameter "lon1"
    .parameter "lat2"
    .parameter "lon2"

    .prologue
    .line 70
    sub-double v8, p4, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 71
    .local v4, dLat:D
    sub-double v8, p6, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 72
    .local v6, dLon:D
    const-wide/high16 v8, 0x4000

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000

    div-double v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000

    div-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000

    div-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    .line 74
    .local v0, a:D
    const-wide/high16 v8, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    mul-double v2, v8, v10

    .line 75
    .local v2, c:D
    const-wide v8, 0x415854a640000000L

    mul-double/2addr v8, v2

    return-wide v8
.end method

.method public static final toMile(D)D
    .registers 4
    .parameter "meter"

    .prologue
    .line 83
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method public pass(Lcom/cooliris/media/MediaItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/cooliris/media/LocationMediaFilter;->mCenterLat:D

    iget-wide v2, p0, Lcom/cooliris/media/LocationMediaFilter;->mCenterLon:D

    iget-wide v4, p1, Lcom/cooliris/media/MediaItem;->mLatitude:D

    iget-wide v6, p1, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-static/range {v0 .. v7}, Lcom/cooliris/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v8

    .line 89
    .local v8, radius:D
    iget-wide v0, p0, Lcom/cooliris/media/LocationMediaFilter;->mRadius:D

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_14

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
