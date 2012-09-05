.class public final Lcom/cooliris/media/ReverseGeocoder;
.super Ljava/lang/Thread;
.source "ReverseGeocoder.java"


# static fields
.field private static LOCATION_CRITERIA:Landroid/location/Criteria;

.field private static sCurrentAddress:Landroid/location/Address;

.field private static final sGeoCache:Lcom/cooliris/media/DiskCache;

.field private static final sQueue:Lcom/cooliris/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Deque",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/cooliris/media/Deque;

    invoke-direct {v0}, Lcom/cooliris/media/Deque;-><init>()V

    sput-object v0, Lcom/cooliris/media/ReverseGeocoder;->sQueue:Lcom/cooliris/media/Deque;

    .line 48
    new-instance v0, Lcom/cooliris/media/DiskCache;

    const-string v1, "geocoder-cache"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/media/ReverseGeocoder;->sGeoCache:Lcom/cooliris/media/DiskCache;

    .line 52
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/cooliris/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    .line 63
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 64
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 65
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 66
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 67
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 75
    const-string v0, "ReverseGeocoder"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/cooliris/media/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/cooliris/media/ReverseGeocoder;->start()V

    .line 78
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "locality"

    .prologue
    .line 320
    if-nez p1, :cond_5

    .line 321
    const-string p1, ""

    .line 324
    .end local p1
    :cond_4
    :goto_4
    return-object p1

    .line 322
    .restart local p1
    :cond_5
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    const-string p1, ""

    goto :goto_4
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .registers 7
    .parameter "addr"
    .parameter "approxLocation"

    .prologue
    .line 399
    if-nez p1, :cond_5

    .line 400
    const-string v1, ""

    .line 416
    :cond_4
    :goto_4
    return-object v1

    .line 401
    :cond_5
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, localityAdminStr:Ljava/lang/String;
    if-eqz v1, :cond_39

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 403
    if-eqz p2, :cond_15

    .line 410
    :cond_15
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, adminArea:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 416
    .end local v0           #adminArea:Ljava/lang/String;
    :cond_39
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private lookupAddress(DDI)Landroid/location/Address;
    .registers 34
    .parameter "latitude"
    .parameter "longitude"
    .parameter "retries"

    .prologue
    .line 421
    const-wide v3, 0x4056800000000000L

    add-double v3, v3, p1

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    const-wide v5, 0x4056800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    add-double v5, v5, p3

    add-double/2addr v3, v5

    const-wide v5, 0x415854a640000000L

    mul-double/2addr v3, v5

    double-to-long v0, v3

    move-wide/from16 v24, v0

    .line 423
    .local v24, locationKey:J
    :try_start_21
    sget-object v3, Lcom/cooliris/media/ReverseGeocoder;->sGeoCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v14

    .line 424
    .local v14, cachedLocation:[B
    const/4 v9, 0x0

    .line 425
    .local v9, address:Landroid/location/Address;
    if-eqz v14, :cond_31

    array-length v3, v14
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_11f

    if-nez v3, :cond_13c

    .line 426
    :cond_31
    const/4 v12, 0x0

    .line 427
    .local v12, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 429
    .local v18, dos:Ljava/io/DataOutputStream;
    :try_start_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v11

    .line 430
    .local v11, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_110

    .line 431
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/location/Address;

    move-object v9, v0

    .line 432
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_117

    .line 433
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .local v13, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_55
    new-instance v19, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x100

    invoke-direct {v3, v13, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_254

    .line 434
    .end local v18           #dos:Ljava/io/DataOutputStream;
    .local v19, dos:Ljava/io/DataOutputStream;
    :try_start_63
    invoke-virtual {v9}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v23

    .line 435
    .local v23, locale:Ljava/util/Locale;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v9}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v9}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v26

    .line 441
    .local v26, numAddressLines:I
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 442
    const/16 v21, 0x0

    .local v21, i:I
    :goto_98
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_ac

    .line 443
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 442
    add-int/lit8 v21, v21, 0x1

    goto :goto_98

    .line 445
    :cond_ac
    invoke-virtual {v9}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v9}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v9}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v9}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v9}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v9}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v9}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v9}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v9}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->flush()V

    .line 457
    sget-object v3, Lcom/cooliris/media/ReverseGeocoder;->sGeoCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide/from16 v4, v24

    invoke-virtual/range {v3 .. v8}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V
    :try_end_10d
    .catchall {:try_start_63 .. :try_end_10d} :catchall_258

    move-object/from16 v18, v19

    .end local v19           #dos:Ljava/io/DataOutputStream;
    .restart local v18       #dos:Ljava/io/DataOutputStream;
    move-object v12, v13

    .line 460
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v21           #i:I
    .end local v23           #locale:Ljava/util/Locale;
    .end local v26           #numAddressLines:I
    .restart local v12       #bos:Ljava/io/ByteArrayOutputStream;
    :cond_110
    :try_start_110
    invoke-static/range {v18 .. v18}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 461
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 522
    .end local v9           #address:Landroid/location/Address;
    .end local v11           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #cachedLocation:[B
    .end local v18           #dos:Ljava/io/DataOutputStream;
    :goto_116
    return-object v9

    .line 460
    .restart local v9       #address:Landroid/location/Address;
    .restart local v12       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #cachedLocation:[B
    .restart local v18       #dos:Ljava/io/DataOutputStream;
    :catchall_117
    move-exception v3

    :goto_118
    invoke-static/range {v18 .. v18}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 461
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11f} :catch_11f

    .line 515
    .end local v9           #address:Landroid/location/Address;
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #cachedLocation:[B
    .end local v18           #dos:Ljava/io/DataOutputStream;
    :catch_11f
    move-exception v20

    .line 520
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "ReverseGeocoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not get address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v9, 0x0

    goto :goto_116

    .line 465
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v9       #address:Landroid/location/Address;
    .restart local v14       #cachedLocation:[B
    :cond_13c
    const/16 v16, 0x0

    .line 467
    .local v16, dis:Ljava/io/DataInputStream;
    :try_start_13e
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v5, 0x100

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_151
    .catchall {:try_start_13e .. :try_end_151} :catchall_23d
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_151} :catch_21d

    .line 469
    .end local v16           #dis:Ljava/io/DataInputStream;
    .local v17, dis:Ljava/io/DataInputStream;
    :try_start_151
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v22

    .line 470
    .local v22, language:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 471
    .local v15, country:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v27

    .line 472
    .local v27, variant:Ljava/lang/String;
    const/16 v23, 0x0

    .line 473
    .restart local v23       #locale:Ljava/util/Locale;
    if-eqz v22, :cond_16c

    .line 474
    if-nez v15, :cond_19a

    .line 475
    new-instance v23, Ljava/util/Locale;

    .end local v23           #locale:Ljava/util/Locale;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v23       #locale:Ljava/util/Locale;
    :cond_16c
    :goto_16c
    if-eqz v23, :cond_1b2

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b2

    const/4 v3, 0x3

    move/from16 v0, p5

    if-ge v0, v3, :cond_1b2

    .line 485
    sget-object v3, Lcom/cooliris/media/ReverseGeocoder;->sGeoCache:Lcom/cooliris/media/DiskCache;

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lcom/cooliris/media/DiskCache;->delete(J)V

    .line 486
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 487
    add-int/lit8 p5, p5, 0x1

    .line 488
    invoke-direct/range {p0 .. p5}, Lcom/cooliris/media/ReverseGeocoder;->lookupAddress(DDI)Landroid/location/Address;
    :try_end_194
    .catchall {:try_start_151 .. :try_end_194} :catchall_242
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_194} :catch_24b

    move-result-object v9

    .line 511
    .end local v9           #address:Landroid/location/Address;
    :try_start_195
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_11f

    goto/16 :goto_116

    .line 476
    .restart local v9       #address:Landroid/location/Address;
    :cond_19a
    if-nez v27, :cond_1a6

    .line 477
    :try_start_19c
    new-instance v23, Ljava/util/Locale;

    .end local v23           #locale:Ljava/util/Locale;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v23       #locale:Ljava/util/Locale;
    goto :goto_16c

    .line 479
    :cond_1a6
    new-instance v23, Ljava/util/Locale;

    .end local v23           #locale:Ljava/util/Locale;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v15, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v23       #locale:Ljava/util/Locale;
    goto :goto_16c

    .line 490
    :cond_1b2
    new-instance v10, Landroid/location/Address;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
    :try_end_1b9
    .catchall {:try_start_19c .. :try_end_1b9} :catchall_242
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b9} :catch_24b

    .line 492
    .end local v9           #address:Landroid/location/Address;
    .local v10, address:Landroid/location/Address;
    :try_start_1b9
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 494
    .restart local v26       #numAddressLines:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1c6
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d8

    .line 495
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v10, v0, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 494
    add-int/lit8 v21, v21, 0x1

    goto :goto_1c6

    .line 497
    :cond_1d8
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 498
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 499
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 500
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 502
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 503
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 504
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 505
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 506
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V
    :try_end_217
    .catchall {:try_start_1b9 .. :try_end_217} :catchall_246
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_217} :catch_24f

    .line 511
    :try_start_217
    invoke-static/range {v17 .. v17}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21a} :catch_11f

    move-object v9, v10

    .line 512
    .end local v10           #address:Landroid/location/Address;
    .restart local v9       #address:Landroid/location/Address;
    goto/16 :goto_116

    .line 507
    .end local v15           #country:Ljava/lang/String;
    .end local v17           #dis:Ljava/io/DataInputStream;
    .end local v21           #i:I
    .end local v22           #language:Ljava/lang/String;
    .end local v23           #locale:Ljava/util/Locale;
    .end local v26           #numAddressLines:I
    .end local v27           #variant:Ljava/lang/String;
    .restart local v16       #dis:Ljava/io/DataInputStream;
    :catch_21d
    move-exception v20

    .line 509
    .restart local v20       #e:Ljava/lang/Exception;
    :goto_21e
    :try_start_21e
    const-string v3, "ReverseGeocoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not get address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_238
    .catchall {:try_start_21e .. :try_end_238} :catchall_23d

    .line 511
    :try_start_238
    invoke-static/range {v16 .. v16}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_116

    .end local v20           #e:Ljava/lang/Exception;
    :catchall_23d
    move-exception v3

    :goto_23e
    invoke-static/range {v16 .. v16}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_242} :catch_11f

    .end local v16           #dis:Ljava/io/DataInputStream;
    .restart local v17       #dis:Ljava/io/DataInputStream;
    :catchall_242
    move-exception v3

    move-object/from16 v16, v17

    .end local v17           #dis:Ljava/io/DataInputStream;
    .restart local v16       #dis:Ljava/io/DataInputStream;
    goto :goto_23e

    .end local v9           #address:Landroid/location/Address;
    .end local v16           #dis:Ljava/io/DataInputStream;
    .restart local v10       #address:Landroid/location/Address;
    .restart local v15       #country:Ljava/lang/String;
    .restart local v17       #dis:Ljava/io/DataInputStream;
    .restart local v22       #language:Ljava/lang/String;
    .restart local v23       #locale:Ljava/util/Locale;
    .restart local v27       #variant:Ljava/lang/String;
    :catchall_246
    move-exception v3

    move-object/from16 v16, v17

    .end local v17           #dis:Ljava/io/DataInputStream;
    .restart local v16       #dis:Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10           #address:Landroid/location/Address;
    .restart local v9       #address:Landroid/location/Address;
    goto :goto_23e

    .line 507
    .end local v15           #country:Ljava/lang/String;
    .end local v16           #dis:Ljava/io/DataInputStream;
    .end local v22           #language:Ljava/lang/String;
    .end local v23           #locale:Ljava/util/Locale;
    .end local v27           #variant:Ljava/lang/String;
    .restart local v17       #dis:Ljava/io/DataInputStream;
    :catch_24b
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #dis:Ljava/io/DataInputStream;
    .restart local v16       #dis:Ljava/io/DataInputStream;
    goto :goto_21e

    .end local v9           #address:Landroid/location/Address;
    .end local v16           #dis:Ljava/io/DataInputStream;
    .restart local v10       #address:Landroid/location/Address;
    .restart local v15       #country:Ljava/lang/String;
    .restart local v17       #dis:Ljava/io/DataInputStream;
    .restart local v22       #language:Ljava/lang/String;
    .restart local v23       #locale:Ljava/util/Locale;
    .restart local v27       #variant:Ljava/lang/String;
    :catch_24f
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #dis:Ljava/io/DataInputStream;
    .restart local v16       #dis:Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10           #address:Landroid/location/Address;
    .restart local v9       #address:Landroid/location/Address;
    goto :goto_21e

    .line 460
    .end local v15           #country:Ljava/lang/String;
    .end local v16           #dis:Ljava/io/DataInputStream;
    .end local v22           #language:Ljava/lang/String;
    .end local v23           #locale:Ljava/util/Locale;
    .end local v27           #variant:Ljava/lang/String;
    .restart local v11       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #dos:Ljava/io/DataOutputStream;
    :catchall_254
    move-exception v3

    move-object v12, v13

    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_118

    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #dos:Ljava/io/DataOutputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #dos:Ljava/io/DataOutputStream;
    :catchall_258
    move-exception v3

    move-object/from16 v18, v19

    .end local v19           #dos:Ljava/io/DataOutputStream;
    .restart local v18       #dos:Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_118
.end method

.method private process(Lcom/cooliris/media/MediaSet;)Z
    .registers 4
    .parameter "set"

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-boolean v1, p1, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    if-nez v1, :cond_9

    .line 123
    iput-boolean v0, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 124
    const/4 v0, 0x0

    .line 128
    :goto_8
    return v0

    .line 126
    :cond_9
    invoke-virtual {p0, p1}, Lcom/cooliris/media/ReverseGeocoder;->computeMostGranularCommonLocation(Lcom/cooliris/media/MediaSet;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 127
    iput-boolean v0, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    goto :goto_8
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 526
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1
    :goto_a
    return-object p1

    .restart local p1
    :cond_b
    const/4 p1, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected computeMostGranularCommonLocation(Lcom/cooliris/media/MediaSet;)Ljava/lang/String;
    .registers 47
    .parameter "set"

    .prologue
    .line 133
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/cooliris/media/MediaSet;->mMinLatLatitude:D

    .line 134
    .local v4, setMinLatitude:D
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/cooliris/media/MediaSet;->mMinLatLongitude:D

    .line 135
    .local v6, setMinLongitude:D
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/cooliris/media/MediaSet;->mMaxLatLatitude:D

    .line 136
    .local v9, setMaxLatitude:D
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/cooliris/media/MediaSet;->mMaxLatLongitude:D

    .line 137
    .local v11, setMaxLongitude:D
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/cooliris/media/MediaSet;->mMinLatLatitude:D

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/cooliris/media/MediaSet;->mMaxLonLongitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/cooliris/media/MediaSet;->mMinLonLongitude:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v3, v13, v15

    if-gez v3, :cond_41

    .line 139
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/cooliris/media/MediaSet;->mMinLonLatitude:D

    .line 140
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/cooliris/media/MediaSet;->mMinLonLongitude:D

    .line 141
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/cooliris/media/MediaSet;->mMaxLonLatitude:D

    .line 142
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/cooliris/media/MediaSet;->mMaxLonLongitude:D

    .line 144
    :cond_41
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/cooliris/media/ReverseGeocoder;->lookupAddress(DDI)Landroid/location/Address;

    move-result-object v21

    .line 145
    .local v21, addr1:Landroid/location/Address;
    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/cooliris/media/ReverseGeocoder;->lookupAddress(DDI)Landroid/location/Address;

    move-result-object v26

    .line 146
    .local v26, addr2:Landroid/location/Address;
    if-nez v21, :cond_53

    .line 147
    move-object/from16 v21, v26

    .line 148
    :cond_53
    if-nez v26, :cond_57

    .line 149
    move-object/from16 v26, v21

    .line 150
    :cond_57
    if-eqz v21, :cond_5b

    if-nez v26, :cond_5e

    .line 151
    :cond_5b
    const/16 v32, 0x0

    .line 316
    :cond_5d
    :goto_5d
    return-object v32

    .line 156
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v8, "location"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/location/LocationManager;

    .line 158
    .local v41, locationManager:Landroid/location/LocationManager;
    const/16 v40, 0x0

    .line 159
    .local v40, location:Landroid/location/Location;
    invoke-virtual/range {v41 .. v41}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v44

    .line 160
    .local v44, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v39, 0x0

    .local v39, i:I
    :goto_72
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v39

    if-ge v0, v3, :cond_90

    .line 161
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 162
    .local v43, provider:Ljava/lang/String;
    if-eqz v43, :cond_1b2

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v40

    .line 163
    :goto_8e
    if-eqz v40, :cond_1b6

    .line 166
    .end local v43           #provider:Ljava/lang/String;
    :cond_90
    const-string v36, ""

    .line 167
    .local v36, currentCity:Ljava/lang/String;
    const-string v35, ""

    .line 168
    .local v35, currentAdminArea:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v37

    .line 169
    .local v37, currentCountry:Ljava/lang/String;
    if-eqz v40, :cond_d8

    .line 170
    invoke-virtual/range {v40 .. v40}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {v40 .. v40}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/cooliris/media/ReverseGeocoder;->lookupAddress(DDI)Landroid/location/Address;

    move-result-object v34

    .line 172
    .local v34, currentAddress:Landroid/location/Address;
    if-nez v34, :cond_1ba

    .line 173
    sget-object v34, Lcom/cooliris/media/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 177
    :goto_b2
    if-eqz v34, :cond_d8

    invoke-virtual/range {v34 .. v34}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 178
    invoke-virtual/range {v34 .. v34}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 179
    invoke-virtual/range {v34 .. v34}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 180
    invoke-virtual/range {v34 .. v34}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 184
    .end local v34           #currentAddress:Landroid/location/Address;
    :cond_d8
    const/16 v32, 0x0

    .line 185
    .local v32, closestCommonLocation:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 186
    .local v25, addr1Locality:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 187
    .local v30, addr2Locality:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 188
    .local v22, addr1AdminArea:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 189
    .local v27, addr2AdminArea:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 190
    .local v24, addr1CountryCode:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 192
    .local v29, addr2CountryCode:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_228

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 193
    move-object/from16 v42, v36

    .line 194
    .local v42, otherCity:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 195
    move-object/from16 v42, v30

    .line 196
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_165

    .line 197
    move-object/from16 v42, v27

    .line 198
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_165

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 202
    :cond_165
    move-object/from16 v30, v25

    .line 203
    move-object/from16 v27, v22

    .line 204
    move-object/from16 v29, v24

    .line 218
    :goto_16b
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/cooliris/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 219
    if-eqz v32, :cond_20e

    const-string v3, "null"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20e

    .line 220
    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    .line 162
    .end local v22           #addr1AdminArea:Ljava/lang/String;
    .end local v24           #addr1CountryCode:Ljava/lang/String;
    .end local v25           #addr1Locality:Ljava/lang/String;
    .end local v27           #addr2AdminArea:Ljava/lang/String;
    .end local v29           #addr2CountryCode:Ljava/lang/String;
    .end local v30           #addr2Locality:Ljava/lang/String;
    .end local v32           #closestCommonLocation:Ljava/lang/String;
    .end local v35           #currentAdminArea:Ljava/lang/String;
    .end local v36           #currentCity:Ljava/lang/String;
    .end local v37           #currentCountry:Ljava/lang/String;
    .end local v42           #otherCity:Ljava/lang/String;
    .restart local v43       #provider:Ljava/lang/String;
    :cond_1b2
    const/16 v40, 0x0

    goto/16 :goto_8e

    .line 160
    :cond_1b6
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_72

    .line 175
    .end local v43           #provider:Ljava/lang/String;
    .restart local v34       #currentAddress:Landroid/location/Address;
    .restart local v35       #currentAdminArea:Ljava/lang/String;
    .restart local v36       #currentCity:Ljava/lang/String;
    .restart local v37       #currentCountry:Ljava/lang/String;
    :cond_1ba
    sput-object v34, Lcom/cooliris/media/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_b2

    .line 206
    .end local v34           #currentAddress:Landroid/location/Address;
    .restart local v22       #addr1AdminArea:Ljava/lang/String;
    .restart local v24       #addr1CountryCode:Ljava/lang/String;
    .restart local v25       #addr1Locality:Ljava/lang/String;
    .restart local v27       #addr2AdminArea:Ljava/lang/String;
    .restart local v29       #addr2CountryCode:Ljava/lang/String;
    .restart local v30       #addr2Locality:Ljava/lang/String;
    .restart local v32       #closestCommonLocation:Ljava/lang/String;
    .restart local v42       #otherCity:Ljava/lang/String;
    :cond_1be
    move-object/from16 v42, v25

    .line 207
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_206

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 210
    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_206

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 214
    :cond_206
    move-object/from16 v25, v30

    .line 215
    move-object/from16 v22, v27

    .line 216
    move-object/from16 v24, v29

    goto/16 :goto_16b

    .line 227
    :cond_20e
    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/cooliris/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 228
    if-eqz v32, :cond_228

    const-string v3, "null"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 234
    .end local v42           #otherCity:Ljava/lang/String;
    :cond_228
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 235
    if-eqz v32, :cond_29a

    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29a

    .line 236
    move-object/from16 v31, v22

    .line 237
    .local v31, adminArea:Ljava/lang/String;
    move-object/from16 v33, v24

    .line 238
    .local v33, countryCode:Ljava/lang/String;
    if-eqz v31, :cond_5d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    .line 239
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27d

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    .line 242
    :cond_27d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    .line 250
    .end local v31           #adminArea:Ljava/lang/String;
    .end local v33           #countryCode:Ljava/lang/String;
    :cond_29a
    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_314

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_314

    .line 251
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ba

    .line 252
    move-object/from16 v25, v30

    .line 254
    :cond_2ba
    const-string v3, ""

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c6

    .line 255
    move-object/from16 v30, v25

    .line 257
    :cond_2c6
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_314

    .line 258
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    .line 261
    :cond_2f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    :cond_314
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    .line 269
    invoke-static/range {v13 .. v20}, Lcom/cooliris/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/cooliris/media/LocationMediaFilter;->toMile(D)D

    move-result-wide v13

    double-to-int v0, v13

    move/from16 v38, v0

    .line 271
    .local v38, distance:I
    const/16 v3, 0x14

    move/from16 v0, v38

    if-ge v0, v3, :cond_341

    .line 274
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v32

    .line 275
    if-nez v32, :cond_5d

    .line 278
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v32

    .line 279
    if-nez v32, :cond_5d

    .line 285
    :cond_341
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 286
    if-eqz v32, :cond_388

    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_388

    .line 287
    move-object/from16 v33, v24

    .line 288
    .restart local v33       #countryCode:Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 289
    if-eqz v33, :cond_5d

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    .line 297
    .end local v33           #countryCode:Ljava/lang/String;
    :cond_388
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 298
    if-eqz v32, :cond_39e

    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 302
    :cond_39e
    invoke-virtual/range {v21 .. v21}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v23

    .line 303
    .local v23, addr1Country:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v28

    .line 304
    .local v28, addr2Country:Ljava/lang/String;
    if-nez v23, :cond_3aa

    .line 305
    move-object/from16 v23, v24

    .line 306
    :cond_3aa
    if-nez v28, :cond_3ae

    .line 307
    move-object/from16 v28, v29

    .line 308
    :cond_3ae
    if-eqz v23, :cond_3b2

    if-nez v28, :cond_3b6

    .line 309
    :cond_3b2
    const/16 v32, 0x0

    goto/16 :goto_5d

    .line 310
    :cond_3b6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-gt v3, v8, :cond_3c6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-le v3, v8, :cond_3e3

    .line 312
    :cond_3c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d

    .line 314
    :cond_3e3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5d
.end method

.method public enqueue(Lcom/cooliris/media/MediaSet;)V
    .registers 4
    .parameter "set"

    .prologue
    .line 81
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->sQueue:Lcom/cooliris/media/Deque;

    .line 82
    .local v0, inQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/MediaSet;>;"
    monitor-enter v0

    .line 83
    :try_start_3
    invoke-virtual {v0, p1}, Lcom/cooliris/media/Deque;->addFirst(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public flushCache()V
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->sGeoCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 113
    return-void
.end method

.method protected getReverseGeocodedLocation(DDI)Ljava/lang/String;
    .registers 20
    .parameter "latitude"
    .parameter "longitude"
    .parameter "desiredNumDetails"

    .prologue
    .line 329
    const/4 v12, 0x0

    .line 330
    .local v12, location:Ljava/lang/String;
    const/4 v13, 0x0

    .line 332
    .local v13, numDetails:I
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/cooliris/media/ReverseGeocoder;->lookupAddress(DDI)Landroid/location/Address;

    move-result-object v7

    .line 334
    .local v7, addr:Landroid/location/Address;
    if-eqz v7, :cond_d4

    .line 338
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v12

    .line 340
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v12

    .line 341
    if-eqz v12, :cond_28

    const-string v1, "null"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 342
    add-int/lit8 v13, v13, 0x1

    .line 350
    :cond_22
    :goto_22
    move/from16 v0, p5

    if-ne v13, v0, :cond_39

    move-object v1, v12

    .line 394
    .end local v7           #addr:Landroid/location/Address;
    :goto_27
    return-object v1

    .line 344
    .restart local v7       #addr:Landroid/location/Address;
    :cond_28
    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v12

    .line 345
    if-eqz v12, :cond_22

    const-string v1, "null"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 346
    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    .line 354
    :cond_39
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, locality:Ljava/lang/String;
    if-eqz v11, :cond_68

    const-string v1, "null"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 356
    if-eqz v12, :cond_6e

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6e

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 361
    :goto_66
    add-int/lit8 v13, v13, 0x1

    .line 364
    :cond_68
    move/from16 v0, p5

    if-ne v13, v0, :cond_70

    move-object v1, v12

    .line 365
    goto :goto_27

    .line 359
    :cond_6e
    move-object v12, v11

    goto :goto_66

    .line 368
    :cond_70
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, adminArea:Ljava/lang/String;
    if-eqz v8, :cond_9f

    const-string v1, "null"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 370
    if-eqz v12, :cond_a5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a5

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 375
    :goto_9d
    add-int/lit8 v13, v13, 0x1

    .line 378
    :cond_9f
    move/from16 v0, p5

    if-ne v13, v0, :cond_a7

    move-object v1, v12

    .line 379
    goto :goto_27

    .line 373
    :cond_a5
    move-object v12, v8

    goto :goto_9d

    .line 382
    :cond_a7
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, countryCode:Ljava/lang/String;
    if-eqz v9, :cond_d4

    const-string v1, "null"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 384
    if-eqz v12, :cond_d7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d7

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .end local v8           #adminArea:Ljava/lang/String;
    .end local v9           #countryCode:Ljava/lang/String;
    .end local v11           #locality:Ljava/lang/String;
    :cond_d4
    :goto_d4
    move-object v1, v12

    .line 392
    goto/16 :goto_27

    .line 387
    .restart local v8       #adminArea:Ljava/lang/String;
    .restart local v9       #countryCode:Ljava/lang/String;
    .restart local v11       #locality:Ljava/lang/String;
    :cond_d7
    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_da} :catch_dc

    move-result-object v12

    goto :goto_d4

    .line 393
    .end local v7           #addr:Landroid/location/Address;
    .end local v8           #adminArea:Ljava/lang/String;
    .end local v9           #countryCode:Ljava/lang/String;
    .end local v11           #locality:Ljava/lang/String;
    :catch_dc
    move-exception v10

    .line 394
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto/16 :goto_27
.end method

.method public run()V
    .registers 5

    .prologue
    .line 90
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 91
    sget-object v0, Lcom/cooliris/media/ReverseGeocoder;->sQueue:Lcom/cooliris/media/Deque;

    .line 92
    .local v0, queue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/MediaSet;>;"
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/cooliris/media/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cooliris/media/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 93
    invoke-virtual {v0}, Lcom/cooliris/media/Deque;->clear()V

    .line 98
    :goto_13
    :try_start_13
    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_23

    .line 99
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Lcom/cooliris/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaSet;

    .local v1, set:Lcom/cooliris/media/MediaSet;
    if-nez v1, :cond_25

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_14

    .line 102
    .end local v1           #set:Lcom/cooliris/media/MediaSet;
    :catchall_20
    move-exception v2

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    :try_start_22
    throw v2
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_23} :catch_23

    .line 106
    :catch_23
    move-exception v2

    .line 109
    return-void

    .line 102
    .restart local v1       #set:Lcom/cooliris/media/MediaSet;
    :cond_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_20

    .line 104
    :try_start_26
    invoke-direct {p0, v1}, Lcom/cooliris/media/ReverseGeocoder;->process(Lcom/cooliris/media/MediaSet;)Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_23

    goto :goto_13
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/cooliris/media/ReverseGeocoder;->flushCache()V

    .line 117
    invoke-virtual {p0}, Lcom/cooliris/media/ReverseGeocoder;->interrupt()V

    .line 118
    return-void
.end method
