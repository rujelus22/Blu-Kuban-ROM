.class public Lcom/android/calendar/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/calendar/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mHandler:Landroid/os/Handler;

.field private mLocation:Ljava/lang/String;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mResearch:Z

.field private mSearchButton:Landroid/widget/Button;

.field mSearchRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 121
    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/calendar/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/SelectMapActivity;->mResearch:Z

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mHandler:Landroid/os/Handler;

    .line 525
    new-instance v0, Lcom/android/calendar/SelectMapActivity$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/SelectMapActivity$3;-><init>(Lcom/android/calendar/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 940
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SelectMapActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/calendar/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/SelectMapActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/calendar/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/SelectMapActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/calendar/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/SelectMapActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/SelectMapActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/calendar/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/SelectMapActivity;)Landroid/location/Geocoder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/SelectMapActivity;D)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/SelectMapActivity;IILjava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/SelectMapActivity;IIII)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/calendar/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .registers 7
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 685
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    .line 687
    .local v0, itemizedOverlay:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/calendar/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 695
    const/4 v2, 0x1

    return v2
.end method

.method private convToDouble(I)D
    .registers 6
    .parameter "i"

    .prologue
    .line 655
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .registers 5
    .parameter "d"

    .prologue
    .line 647
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .registers 19
    .parameter "location"

    .prologue
    .line 425
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_a

    .line 427
    :cond_8
    const/4 v14, 0x0

    .line 519
    :goto_9
    return v14

    .line 433
    :cond_a
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v3, geo:Landroid/location/Geocoder;
    const v12, 0x55d4a80

    .local v12, minLat:I
    const v10, -0x55d4a80

    .line 437
    .local v10, maxLat:I
    const v13, 0xaba9500

    .local v13, minLon:I
    const v11, -0xaba9500

    .line 443
    .local v11, maxLon:I
    const/4 v14, 0x5

    :try_start_1e
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 449
    .local v7, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_83

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v14}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v9

    .line 455
    .local v9, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    .line 457
    .local v5, itemizedOverlay:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v5}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 461
    const/4 v1, 0x0

    .line 463
    .local v1, addr:Landroid/location/Address;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_7a

    .line 465
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #addr:Landroid/location/Address;
    check-cast v1, Landroid/location/Address;

    .line 467
    .restart local v1       #addr:Landroid/location/Address;
    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/calendar/SelectMapActivity;->convToInt(D)I

    move-result v6

    .line 469
    .local v6, lat:I
    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/calendar/SelectMapActivity;->convToInt(D)I

    move-result v8

    .line 471
    .local v8, lon:I
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v14}, Lcom/android/calendar/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 473
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 475
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 477
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 479
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 493
    .end local v6           #lat:I
    .end local v8           #lon:I
    :cond_7a
    if-eqz v1, :cond_81

    .line 499
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v11}, Lcom/android/calendar/SelectMapActivity;->moveToMarker(IIII)Z

    .line 519
    .end local v1           #addr:Landroid/location/Address;
    .end local v4           #i:I
    .end local v5           #itemizedOverlay:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;
    .end local v7           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_81
    :goto_81
    const/4 v14, 0x1

    goto :goto_9

    .line 505
    .restart local v7       #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_83
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a008b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_b1} :catch_b2

    goto :goto_81

    .line 513
    .end local v7           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_b2
    move-exception v2

    .line 515
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .registers 8
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 703
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 705
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .local v0, overlay:Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 709
    return-object v0
.end method

.method private initMarker()Z
    .registers 6

    .prologue
    .line 663
    iget-object v3, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 667
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 669
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/calendar/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 671
    .local v1, itemizedOverlay:Lcom/android/calendar/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(IIII)Z
    .registers 10
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    .line 737
    sub-int v0, p2, p1

    .line 739
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 741
    .local v1, lon_span:I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 749
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 753
    iget-object v3, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 755
    iget-object v3, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 765
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .registers 6
    .parameter "point"

    .prologue
    const/4 v3, 0x1

    .line 717
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 719
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 725
    new-instance v0, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/calendar/SelectMapActivity;Lcom/android/calendar/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 729
    return v3
.end method

.method private searchLocation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 417
    :cond_13
    :goto_13
    return-void

    .line 333
    :cond_14
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lcom/android/calendar/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_13

    .line 341
    :cond_20
    iput-object v1, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 343
    iput-boolean v5, p0, Lcom/android/calendar/SelectMapActivity;->mResearch:Z

    .line 401
    new-instance v2, Lcom/android/calendar/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/calendar/SelectMapActivity;Lcom/android/calendar/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/calendar/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 407
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_13
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .registers 15
    .parameter "point"

    .prologue
    .line 872
    const-string v12, ""

    .line 874
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 880
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_3
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 882
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/calendar/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 888
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_61

    .line 890
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 898
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 900
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_33
    if-gt v11, v8, :cond_61

    .line 902
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 906
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 908
    if-nez v11, :cond_45

    .line 910
    move-object v12, v7

    .line 900
    :cond_42
    :goto_42
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 914
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5b} :catch_5d

    move-result-object v12

    goto :goto_42

    .line 926
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    :catch_5d
    move-exception v10

    .line 928
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 934
    .end local v10           #e:Ljava/io/IOException;
    :cond_61
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 773
    iget-object v4, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 775
    iget-object v4, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 779
    .local v0, saved:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 781
    .local v1, x:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 787
    .local v2, y:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_26

    .line 788
    const/4 v3, 0x0

    .line 797
    :goto_25
    return v3

    .line 791
    :cond_26
    iget v4, p0, Lcom/android/calendar/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/calendar/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_25
.end method

.method protected doFinish()V
    .registers 4

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 807
    .local v0, result:Landroid/content/Intent;
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v1, "map"

    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity;->captureMap()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 818
    const-string v1, "map"

    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 820
    :cond_3e
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity;->finish()V

    .line 824
    return-void
.end method

.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"

    .prologue
    const/4 v4, 0x4

    .line 181
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 191
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectMapActivity;->setContentView(I)V

    .line 195
    new-instance v2, Landroid/location/Geocoder;

    invoke-direct {v2, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 199
    const v2, 0x7f0f00cf

    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/MapView;

    iput-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 201
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 205
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v2

    if-ge v2, v4, :cond_3f

    .line 206
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 211
    :cond_3f
    const v2, 0x7f0f002b

    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 213
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 219
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/calendar/SelectMapActivity$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/SelectMapActivity$1;-><init>(Lcom/android/calendar/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 233
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_72

    .line 235
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 239
    .local v1, length:I
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v1, :cond_a2

    .end local v1           #length:I
    :goto_6f
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    :cond_72
    const v2, 0x7f0f00ce

    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mSearchButton:Landroid/widget/Button;

    .line 247
    iget-object v2, p0, Lcom/android/calendar/SelectMapActivity;->mSearchButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/calendar/SelectMapActivity$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/SelectMapActivity$2;-><init>(Lcom/android/calendar/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/SelectMapActivity;->mCaptureHeight:I

    .line 261
    invoke-virtual {p0}, Lcom/android/calendar/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/SelectMapActivity;->mCaptureWidth:I

    .line 269
    return-void

    .line 239
    .restart local v1       #length:I
    :cond_a2
    const/4 v1, 0x0

    goto :goto_6f
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 315
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 281
    invoke-direct {p0}, Lcom/android/calendar/SelectMapActivity;->initMarker()Z

    .line 283
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/calendar/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    .line 287
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/calendar/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method
