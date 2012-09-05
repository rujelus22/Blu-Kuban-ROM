.class public Lcom/android/email/activity/FindLocationActivity;
.super Lcom/google/android/maps/MapActivity;
.source "FindLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/FindLocationActivity$LocationData;,
        Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;,
        Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;
    }
.end annotation


# instance fields
.field private isFromMap:Z

.field private final mLocationListenerForGPS:Landroid/location/LocationListener;

.field private final mLocationListenerForNetwork:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMapController:Lcom/google/android/maps/MapController;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mNetworkLocation:Landroid/location/Location;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectBtn:Landroid/widget/Button;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 413
    new-instance v0, Lcom/android/email/activity/FindLocationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/FindLocationActivity$2;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForGPS:Landroid/location/LocationListener;

    .line 449
    new-instance v0, Lcom/android/email/activity/FindLocationActivity$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/FindLocationActivity$3;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForNetwork:Landroid/location/LocationListener;

    .line 675
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/FindLocationActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mNetworkLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity;->mNetworkLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/email/activity/FindLocationActivity;->getAddressFromLocation(Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method private getAddressFromGeoPoint(Lcom/google/android/maps/GeoPoint;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    .registers 21
    .parameter "p"

    .prologue
    .line 477
    new-instance v13, Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/email/activity/FindLocationActivity$LocationData;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    .line 478
    .local v13, retData:Lcom/android/email/activity/FindLocationActivity$LocationData;
    if-nez p1, :cond_b

    .line 479
    const/4 v13, 0x0

    .line 517
    .end local v13           #retData:Lcom/android/email/activity/FindLocationActivity$LocationData;
    :goto_a
    return-object v13

    .line 482
    .restart local v13       #retData:Lcom/android/email/activity/FindLocationActivity$LocationData;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    int-to-double v15, v6

    const-wide v17, 0x412e848000000000L

    div-double v2, v15, v17

    .line 483
    .local v2, latitude:D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    int-to-double v15, v6

    const-wide v17, 0x412e848000000000L

    div-double v4, v15, v17

    .line 485
    .local v4, longitude:D
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 486
    .local v1, gc:Landroid/location/Geocoder;
    const/4 v9, 0x0

    .line 490
    .local v9, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v6, 0x1

    :try_start_30
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_33} :catch_66

    move-result-object v9

    .line 497
    :goto_34
    if-eqz v9, :cond_71

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 498
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 500
    .local v7, addr:Landroid/location/Address;
    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v12

    .line 502
    .local v12, maxIndex:I
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 504
    .local v8, addressString:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4f
    if-gt v11, v12, :cond_6b

    .line 506
    invoke-virtual {v7, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v15, 0x20

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    .line 491
    .end local v7           #addr:Landroid/location/Address;
    .end local v8           #addressString:Ljava/lang/StringBuffer;
    .end local v11           #i:I
    .end local v12           #maxIndex:I
    :catch_61
    move-exception v10

    .line 492
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 493
    .end local v10           #e:Ljava/io/IOException;
    :catch_66
    move-exception v10

    .line 494
    .local v10, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_34

    .line 510
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #addr:Landroid/location/Address;
    .restart local v8       #addressString:Ljava/lang/StringBuffer;
    .restart local v11       #i:I
    .restart local v12       #maxIndex:I
    :cond_6b
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    .line 512
    .end local v7           #addr:Landroid/location/Address;
    .end local v8           #addressString:Ljava/lang/StringBuffer;
    .end local v11           #i:I
    .end local v12           #maxIndex:I
    :cond_71
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v15, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-direct {v6, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 514
    .local v14, webLink:Ljava/lang/String;
    const-string v6, "<a href = %s>%s</a>"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 516
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    goto/16 :goto_a
.end method

.method private getAddressFromLocation(Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    .registers 19
    .parameter "location"

    .prologue
    .line 521
    new-instance v13, Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/email/activity/FindLocationActivity$LocationData;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    .line 523
    .local v13, retData:Lcom/android/email/activity/FindLocationActivity$LocationData;
    if-nez p1, :cond_b

    .line 524
    const/4 v13, 0x0

    .line 564
    .end local v13           #retData:Lcom/android/email/activity/FindLocationActivity$LocationData;
    :goto_a
    return-object v13

    .line 527
    .restart local v13       #retData:Lcom/android/email/activity/FindLocationActivity$LocationData;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 528
    .local v2, latitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 530
    .local v4, longitude:D
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 531
    .local v1, gc:Landroid/location/Geocoder;
    const/4 v9, 0x0

    .line 535
    .local v9, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v6, 0x1

    :try_start_20
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_23} :catch_56

    move-result-object v9

    .line 542
    :goto_24
    if-eqz v9, :cond_61

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_61

    .line 543
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 545
    .local v7, addr:Landroid/location/Address;
    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v12

    .line 547
    .local v12, maxIndex:I
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 549
    .local v8, addressString:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3f
    if-gt v11, v12, :cond_5b

    .line 551
    invoke-virtual {v7, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v15, 0x20

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 549
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    .line 536
    .end local v7           #addr:Landroid/location/Address;
    .end local v8           #addressString:Ljava/lang/StringBuffer;
    .end local v11           #i:I
    .end local v12           #maxIndex:I
    :catch_51
    move-exception v10

    .line 537
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 538
    .end local v10           #e:Ljava/io/IOException;
    :catch_56
    move-exception v10

    .line 539
    .local v10, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_24

    .line 555
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #addr:Landroid/location/Address;
    .restart local v8       #addressString:Ljava/lang/StringBuffer;
    .restart local v11       #i:I
    .restart local v12       #maxIndex:I
    :cond_5b
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    .line 558
    .end local v7           #addr:Landroid/location/Address;
    .end local v8           #addressString:Ljava/lang/StringBuffer;
    .end local v11           #i:I
    .end local v12           #maxIndex:I
    :cond_61
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v15, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-direct {v6, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 560
    .local v14, webLink:Ljava/lang/String;
    const-string v6, "<a href = %s>%s</a>"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 562
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    goto/16 :goto_a
.end method

.method private getBestProvider()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, provider:Ljava/lang/String;
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 348
    .local v0, criteria:Landroid/location/Criteria;
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 349
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 350
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 351
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 353
    if-nez v1, :cond_1b

    .line 354
    const-string v1, "gps"

    .line 357
    :cond_1b
    const-string v2, "FindLocation >>"

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-object v1
.end method

.method private getGeoPointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;
    .registers 8
    .parameter "location"

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 568
    if-nez p1, :cond_9

    .line 569
    const/4 v2, 0x0

    .line 575
    :goto_8
    return-object v2

    .line 572
    :cond_9
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 573
    .local v0, lat:Ljava/lang/Double;
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 575
    .local v1, lng:Ljava/lang/Double;
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    goto :goto_8
.end method

.method private initializeLocationManager()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_e

    .line 339
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/FindLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 341
    :cond_e
    return-void
.end method

.method private showToast(II)V
    .registers 4
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_14

    .line 665
    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    .line 672
    :goto_e
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 673
    return-void

    .line 667
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 668
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 669
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_e
.end method

.method private startReceivingLocationUpdates()V
    .registers 8

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForNetwork:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_35

    .line 392
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForGPS:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1a} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1a} :catch_6d

    .line 399
    :goto_1a
    return-void

    .line 386
    :catch_1b
    move-exception v6

    .line 387
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to request location update, ignore \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 388
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_35
    move-exception v6

    .line 389
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 394
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_53
    move-exception v6

    .line 395
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to request location update, ignore \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 396
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_6d
    move-exception v6

    .line 397
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private stopReceivingLocationUpdates()V
    .registers 5

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_12

    .line 404
    :try_start_4
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForGPS:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 405
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForNetwork:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 411
    :cond_12
    :goto_12
    return-void

    .line 406
    :catch_13
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FindLocation >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to remove location listners, ignore \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_5a

    .line 335
    :goto_7
    return-void

    .line 309
    :pswitch_8
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    .line 310
    .local v4, projection:Lcom/google/android/maps/Projection;
    const/4 v1, 0x0

    .line 311
    .local v1, gp:Lcom/google/android/maps/GeoPoint;
    const/4 v3, 0x0

    .line 313
    .local v3, p:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    invoke-virtual {v5}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->getPixelPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 315
    if-eqz v3, :cond_44

    .line 316
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v4, v5, v6}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 321
    :goto_20
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V

    .line 323
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v2, i:Landroid/content/Intent;
    if-eqz v1, :cond_3c

    .line 325
    invoke-direct {p0, v1}, Lcom/android/email/activity/FindLocationActivity;->getAddressFromGeoPoint(Lcom/google/android/maps/GeoPoint;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    .line 326
    .local v0, data:Lcom/android/email/activity/FindLocationActivity$LocationData;
    const-string v5, "location-char"

    iget-object v6, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 327
    const-string v5, "location-string"

    iget-object v6, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .end local v0           #data:Lcom/android/email/activity/FindLocationActivity$LocationData;
    :cond_3c
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/android/email/activity/FindLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    goto :goto_7

    .line 318
    .end local v2           #i:Landroid/content/Intent;
    :cond_44
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    goto :goto_20

    .line 307
    nop

    :pswitch_data_5a
    .packed-switch 0x7f100158
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget-boolean v5, p0, Lcom/android/email/activity/FindLocationActivity;->isFromMap:Z

    if-eqz v5, :cond_3f

    .line 251
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/FindLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 253
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 254
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 256
    .local v1, height:I
    const/4 v3, 0x0

    .line 257
    .local v3, newWidth:I
    const/4 v2, 0x0

    .line 259
    .local v2, newHeight:I
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_44

    .line 260
    if-lt v4, v1, :cond_40

    move v3, v4

    .line 261
    :goto_25
    if-gt v4, v1, :cond_42

    move v2, v4

    .line 266
    :goto_28
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    new-instance v6, Landroid/graphics/Point;

    div-int/lit8 v7, v3, 0x2

    add-int/lit16 v8, v2, -0x82

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->setPixelPoint(Landroid/graphics/Point;)V

    .line 268
    const v5, 0x7f080305

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/email/activity/FindLocationActivity;->showToast(II)V

    .line 270
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #width:I
    :cond_3f
    return-void

    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #height:I
    .restart local v2       #newHeight:I
    .restart local v3       #newWidth:I
    .restart local v4       #width:I
    :cond_40
    move v3, v1

    .line 260
    goto :goto_25

    :cond_42
    move v2, v1

    .line 261
    goto :goto_28

    .line 263
    :cond_44
    if-gt v4, v1, :cond_4b

    move v3, v4

    .line 264
    :goto_47
    if-lt v4, v1, :cond_4d

    move v2, v4

    :goto_4a
    goto :goto_28

    :cond_4b
    move v3, v1

    .line 263
    goto :goto_47

    :cond_4d
    move v2, v1

    .line 264
    goto :goto_4a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 111
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 112
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 115
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->initializeLocationManager()V

    .line 117
    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.android.email.intent.extra.is_from_map"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/FindLocationActivity;->isFromMap:Z

    .line 120
    iget-boolean v6, p0, Lcom/android/email/activity/FindLocationActivity;->isFromMap:Z

    if-eqz v6, :cond_db

    .line 124
    const v6, 0x7f040076

    invoke-virtual {p0, v6}, Lcom/android/email/activity/FindLocationActivity;->setContentView(I)V

    .line 126
    const v6, 0x7f100158

    invoke-virtual {p0, v6}, Lcom/android/email/activity/FindLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mSelectBtn:Landroid/widget/Button;

    .line 127
    const v6, 0x7f100157

    invoke-virtual {p0, v6}, Lcom/android/email/activity/FindLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/maps/MapView;

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 129
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mSelectBtn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapController:Lcom/google/android/maps/MapController;

    .line 132
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    .line 133
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    .line 134
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6, v11}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 135
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 137
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    new-instance v6, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v7, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v6, p0, v7}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 139
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v6}, Lcom/google/android/maps/MyLocationOverlay;->disableCompass()V

    .line 140
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v6}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 142
    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 143
    .local v0, display:Landroid/view/Display;
    new-instance v6, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    const v7, 0x7f0203cc

    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v10

    add-int/lit16 v10, v10, -0x82

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v6, p0, v7, v8}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;-><init>(Lcom/android/email/activity/FindLocationActivity;ILandroid/graphics/Point;)V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    .line 146
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->getBestProvider()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, provider:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 151
    .local v2, location:Landroid/location/Location;
    if-eqz v2, :cond_d4

    .line 152
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-direct {p0, v2}, Lcom/android/email/activity/FindLocationActivity;->getGeoPointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 154
    :cond_d4
    const v6, 0x7f080305

    invoke-direct {p0, v6, v11}, Lcom/android/email/activity/FindLocationActivity;->showToast(II)V

    .line 182
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #location:Landroid/location/Location;
    .end local v3           #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    .end local v4           #provider:Ljava/lang/String;
    :goto_da
    return-void

    .line 156
    :cond_db
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f080303

    invoke-virtual {p0, v7}, Lcom/android/email/activity/FindLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 159
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v7, Lcom/android/email/activity/FindLocationActivity$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/FindLocationActivity$1;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->startReceivingLocationUpdates()V

    .line 177
    new-instance v5, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;

    invoke-direct {v5, p0}, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    .line 179
    .local v5, timerTask:Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    .line 180
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    const-wide/32 v7, 0x9c40

    invoke-virtual {v6, v5, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_da
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_18

    .line 197
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_7
    return-object v1

    .line 189
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_7

    .line 187
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 296
    const v0, 0x7f080306

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 298
    return v2
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V

    .line 210
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_11

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 212
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableCompass()V

    .line 215
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 219
    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_27

    .line 220
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 223
    :cond_27
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_30

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 227
    :cond_30
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 228
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 233
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 234
    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    .line 235
    const/4 v0, 0x1

    .line 238
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    .line 288
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 277
    :pswitch_d
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 278
    .local v0, point:Lcom/google/android/maps/GeoPoint;
    if-eqz v0, :cond_1a

    .line 279
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 281
    :cond_1a
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->setPixelPoint(Landroid/graphics/Point;)V

    .line 284
    const v2, 0x7f080305

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/FindLocationActivity;->showToast(II)V

    goto :goto_c

    .line 274
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 203
    return-void
.end method
