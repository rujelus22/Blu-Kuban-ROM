.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;
.super Ljava/lang/Object;
.source "MapBiller.java"


# instance fields
.field private lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

.field private previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 26
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 27
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    .line 31
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 32
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-void
.end method

.method private static isBillingRequiredForSatellite()Z
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 7
    .parameter "billPoint"
    .parameter "locationDisplayed"
    .parameter "routeDisplayed"
    .parameter "map"

    .prologue
    .line 129
    invoke-virtual {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    .line 131
    .local v0, mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 132
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 133
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 134
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 135
    invoke-static {p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    .line 138
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    if-eqz v1, :cond_20

    .line 139
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;->billingPointSent(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    .line 141
    :cond_20
    return-void
.end method

.method private static sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 12
    .parameter "billPoint"
    .parameter "locationDisplayed"
    .parameter "routeDisplayed"
    .parameter "map"

    .prologue
    const/4 v7, 0x0

    .line 155
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v3

    .line 156
    .local v3, mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_f
    invoke-static {p0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    .line 162
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    .line 164
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 171
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_38} :catch_45

    .line 177
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V

    .line 179
    return-void

    .line 172
    :catch_45
    move-exception v2

    .line 174
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 21
    .parameter "locationDisplayed"
    .parameter "routeDisplayed"
    .parameter "map"

    .prologue
    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v8

    .line 47
    .local v8, mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->isBillingRequiredForSatellite()Z

    move-result v13

    if-nez v13, :cond_11

    .line 123
    :cond_10
    :goto_10
    return-void

    .line 71
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v14

    if-eq v13, v14, :cond_31

    .line 73
    :cond_21
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v13, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    goto :goto_10

    .line 75
    :cond_31
    const/4 v9, 0x0

    .line 76
    .local v9, newBillPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    move-result-object v12

    .line 80
    .local v12, pixelOffset:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getWidth()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 81
    .local v11, pageWidth:I
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getHeight()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 82
    .local v10, pageHeight:I
    div-int/lit8 v7, v11, 0x2

    .line 83
    .local v7, halfWidth:I
    div-int/lit8 v6, v10, 0x2

    .line 84
    .local v6, halfHeight:I
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v11, :cond_68

    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v10, :cond_a5

    .line 87
    :cond_68
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v9

    .line 116
    :cond_6c
    :goto_6c
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    if-eqz v13, :cond_98

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    if-ne v13, v14, :cond_98

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    move-result-wide v13

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_10

    .line 120
    :cond_98
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v9, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    goto/16 :goto_10

    .line 93
    :cond_a5
    const/4 v4, 0x0

    .line 94
    .local v4, dx:I
    const/4 v5, 0x0

    .line 95
    .local v5, dy:I
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v14, v7

    if-ge v13, v14, :cond_c4

    .line 96
    move v4, v11

    .line 101
    :cond_ad
    :goto_ad
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    neg-int v14, v6

    if-ge v13, v14, :cond_ca

    .line 102
    move v5, v10

    .line 107
    :cond_b3
    :goto_b3
    if-nez v5, :cond_b7

    if-eqz v4, :cond_6c

    .line 109
    :cond_b7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v14

    invoke-virtual {v13, v4, v5, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v9

    goto :goto_6c

    .line 97
    :cond_c4
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    if-le v13, v7, :cond_ad

    .line 98
    neg-int v4, v11

    goto :goto_ad

    .line 103
    :cond_ca
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    if-le v13, v6, :cond_b3

    .line 104
    neg-int v5, v10

    goto :goto_b3
.end method
