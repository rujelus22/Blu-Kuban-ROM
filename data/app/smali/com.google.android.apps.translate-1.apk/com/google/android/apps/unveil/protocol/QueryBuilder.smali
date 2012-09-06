.class public Lcom/google/android/apps/unveil/protocol/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;
    }
.end annotation


# static fields
.field private static final ONE_POINT_NINE:J = 0x3L

.field private static final ONE_POINT_SEVEN:J = 0x2L

.field private static final ONE_POINT_SIX:J = 0x1L

.field protected static final ORIENTATION_NOT_PROVIDED:I = -0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field public static final serialVersionUID:J = 0x6cccd2abf56325ceL

.field private static final subVersionUID:J = 0x3L


# instance fields
.field protected barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

.field private canLogImage:Z

.field private cropContextSize:Lcom/google/android/apps/unveil/env/Size;

.field private cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private docid:Ljava/lang/String;

.field protected imageData:[B

.field private imageRotated:Z

.field protected imageSize:Lcom/google/android/apps/unveil/env/Size;

.field private imageUrl:Ljava/lang/String;

.field private jpegQuality:I

.field protected location:Lcom/google/goggles/LocationProtos$Location;

.field protected msSinceEpoch:Ljava/lang/Long;

.field protected orientationRelativeToCamera:I

.field private orientationRelativeToDevice:I

.field private queryId:Ljava/lang/String;

.field private queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field private restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

.field private sequenceNumber:I

.field protected source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

.field private sourceLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    .line 149
    iput v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    .line 150
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 158
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 907
    return-void
.end method

.method protected static addEncryptedLocation(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;Lcom/google/goggles/LocationProtos$Location;Lcom/google/android/apps/unveil/network/LatLngEncrypter;)V
    .registers 5
    .parameter "extendedGogglesRequestBuilder"
    .parameter "userLocation"
    .parameter "latLngEncrypter"

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->encryptLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 377
    .local v0, encryptedLocation:Lcom/google/protobuf/ByteString;
    if-eqz v0, :cond_d

    .line 378
    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setEncryptedLatLng(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 380
    :cond_d
    return-void
.end method

.method private buildWithContextualDependencies(Lcom/google/android/apps/unveil/env/Viewport;Lcom/google/android/apps/unveil/sensors/UnveilSensor;Lcom/google/android/apps/unveil/network/NetworkInfoProvider;Lcom/google/android/apps/unveil/network/LatLngEncrypter;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 23
    .parameter "viewport"
    .parameter "orientationSensor"
    .parameter "networkInfoProvider"
    .parameter "latLngEncrypter"
    .parameter "gogglesRequest"
    .parameter "extendedGogglesRequestBuilder"

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    if-eqz v11, :cond_3e

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    .line 295
    .local v2, barcode:Lcom/google/android/apps/unveil/barcode/Barcode;
    sget-object v11, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v12, "Sending a client-detected barcode"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v11, :cond_df

    .line 298
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2b

    .line 299
    sget-object v11, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v12, "Sending an image and local barcode without orientation relative to camera."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_2b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v11, v12, v0}, Lcom/google/android/apps/unveil/barcode/Barcode;->toRotatedClientAnnotation(Lcom/google/android/apps/unveil/env/Size;ILcom/google/android/apps/unveil/env/Viewport;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v3

    .line 309
    .local v3, clientAnnotation:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    :goto_39
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->addClientAnnotations(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 312
    .end local v2           #barcode:Lcom/google/android/apps/unveil/barcode/Barcode;
    .end local v3           #clientAnnotation:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    :cond_3e
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v8

    .line 313
    .local v8, pose:Lcom/google/goggles/PoseProtos$Pose$Builder;
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v5

    .line 316
    .local v5, fineOrientation:Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->getValues()[F

    move-result-object v10

    .line 317
    .local v10, values:[F
    if-eqz v10, :cond_76

    .line 318
    const/4 v11, 0x0

    aget v11, v10, v11

    invoke-virtual {v5, v11}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setAzimuthDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 319
    const/4 v11, 0x1

    aget v11, v10, v11

    invoke-virtual {v5, v11}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setPitchDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 320
    const/4 v11, 0x2

    aget v11, v10, v11

    invoke-virtual {v5, v11}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setRollDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 322
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    .line 323
    .local v4, deviceAccuracy:I
    const/4 v6, 0x0

    .line 324
    .local v6, gogglesAccuracy:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    const/4 v11, 0x3

    if-ne v4, v11, :cond_e5

    .line 325
    sget-object v6, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->HIGH:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 337
    :goto_68
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->setDiscreteAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setSensorAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 340
    invoke-virtual {v8, v5}, Lcom/google/goggles/PoseProtos$Pose$Builder;->setOrientation(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    .line 343
    .end local v4           #deviceAccuracy:I
    .end local v6           #gogglesAccuracy:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    :cond_76
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    if-eqz v11, :cond_a3

    .line 344
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    .line 346
    .local v9, userLocation:Lcom/google/goggles/LocationProtos$Location;
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-static {v0, v9, v1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addEncryptedLocation(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;Lcom/google/goggles/LocationProtos$Location;Lcom/google/android/apps/unveil/network/LatLngEncrypter;)V

    .line 348
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v7

    .line 349
    .local v7, locationProto:Lcom/google/goggles/LocationProtos$Location$Builder;
    invoke-virtual {v9}, Lcom/google/goggles/LocationProtos$Location;->getLatLngAccuracyMeters()F

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/goggles/LocationProtos$Location$Builder;->setLatLngAccuracyMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 350
    invoke-virtual {v9}, Lcom/google/goggles/LocationProtos$Location;->getAltitudeMeters()F

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/goggles/LocationProtos$Location$Builder;->setAltitudeMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 351
    invoke-virtual {v9}, Lcom/google/goggles/LocationProtos$Location;->getTimestampMs()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/goggles/LocationProtos$Location$Builder;->setTimestampMs(J)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 353
    invoke-virtual {v8, v7}, Lcom/google/goggles/PoseProtos$Pose$Builder;->setLocation(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    .line 356
    .end local v7           #locationProto:Lcom/google/goggles/LocationProtos$Location$Builder;
    .end local v9           #userLocation:Lcom/google/goggles/LocationProtos$Location;
    :cond_a3
    sget-object v11, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v12, "Pose: %s %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v8}, Lcom/google/goggles/PoseProtos$Pose$Builder;->hasLocation()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v8}, Lcom/google/goggles/PoseProtos$Pose$Builder;->hasOrientation()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setPose(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 359
    if-eqz p3, :cond_d3

    .line 360
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 363
    :cond_d3
    sget-object v11, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual/range {p6 .. p6}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 366
    return-object p5

    .line 307
    .end local v5           #fineOrientation:Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .end local v8           #pose:Lcom/google/goggles/PoseProtos$Pose$Builder;
    .end local v10           #values:[F
    .restart local v2       #barcode:Lcom/google/android/apps/unveil/barcode/Barcode;
    :cond_df
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/barcode/Barcode;->toClientAnnotation()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v3

    .restart local v3       #clientAnnotation:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    goto/16 :goto_39

    .line 326
    .end local v2           #barcode:Lcom/google/android/apps/unveil/barcode/Barcode;
    .end local v3           #clientAnnotation:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .restart local v4       #deviceAccuracy:I
    .restart local v5       #fineOrientation:Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .restart local v6       #gogglesAccuracy:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .restart local v8       #pose:Lcom/google/goggles/PoseProtos$Pose$Builder;
    .restart local v10       #values:[F
    :cond_e5
    const/4 v11, 0x2

    if-ne v4, v11, :cond_ec

    .line 327
    sget-object v6, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto/16 :goto_68

    .line 328
    :cond_ec
    const/4 v11, 0x1

    if-ne v4, v11, :cond_f3

    .line 329
    sget-object v6, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->LOW:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto/16 :goto_68

    .line 330
    :cond_f3
    if-nez v4, :cond_f9

    .line 331
    sget-object v6, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->UNRELIABLE:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto/16 :goto_68

    .line 333
    :cond_f9
    sget-object v11, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v12, "Couldn\'t get orientation accuracy; assuming Medium."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sget-object v6, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto/16 :goto_68
.end method

.method private buildWithoutDependencies(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)V
    .registers 8
    .parameter "gogglesRequest"
    .parameter "extendedGogglesRequestBuilder"

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildImageBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setImage(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    if-eqz v0, :cond_4f

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 272
    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 273
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Force source language to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setSourceLanguage(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 277
    :cond_30
    invoke-static {}, Lcom/google/android/apps/unveil/env/InfoProvider;->getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {p1, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    if-eqz v0, :cond_45

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {p1, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 284
    :cond_45
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 286
    return-void

    .line 268
    :cond_4f
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "No msSinceEpoch set, assuming currentTimeMillis()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    goto :goto_15
.end method

.method public static from(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 6
    .parameter "c"

    .prologue
    .line 896
    new-instance v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;-><init>()V

    .line 898
    .local v1, queryBuilder:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    :try_start_5
    invoke-virtual {v1, p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->setValuesFromCursor(Landroid/database/Cursor;)V
    :try_end_8
    .catch Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException; {:try_start_5 .. :try_end_8} :catch_9

    .line 903
    .end local v1           #queryBuilder:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    :goto_8
    return-object v1

    .line 899
    .restart local v1       #queryBuilder:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    :catch_9
    move-exception v0

    .line 900
    .local v0, e:Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;
    sget-object v2, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Could not parse query from the given cursor."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getCWOffsetFromRightSideUp(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 7
    .parameter "orientationRelativeToCamera"

    .prologue
    .line 217
    sparse-switch p1, :sswitch_data_24

    .line 227
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Unexpected orientation value: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    :goto_16
    return-object v0

    .line 219
    :sswitch_17
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_16

    .line 221
    :sswitch_1a
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->TWO_SEVENTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_16

    .line 223
    :sswitch_1d
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ONE_EIGHTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_16

    .line 225
    :sswitch_20
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->NINETY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_16

    .line 217
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_17
        0x5a -> :sswitch_1a
        0xb4 -> :sswitch_1d
        0x10e -> :sswitch_20
    .end sparse-switch
.end method

.method public static parseFrom([B)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 9
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 598
    const/4 v1, 0x0

    .line 600
    .local v1, in:Ljava/io/ObjectInputStream;
    :try_start_3
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_d} :catch_42

    .line 601
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .local v2, in:Ljava/io/ObjectInputStream;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_71
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_13} :catch_74

    .line 610
    if-eqz v2, :cond_18

    .line 611
    :try_start_15
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    :cond_18
    :goto_18
    move-object v1, v2

    .line 615
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :goto_19
    return-object v3

    .line 613
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_1a
    move-exception v0

    .line 614
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not close ObjectInputStream"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 602
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :catch_25
    move-exception v0

    .line 603
    .restart local v0       #e:Ljava/io/IOException;
    :goto_26
    :try_start_26
    sget-object v3, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not deserialize a QueryBuilder due to an IO Exception"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5f

    .line 610
    if-eqz v1, :cond_35

    .line 611
    :try_start_32
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    :cond_35
    :goto_35
    move-object v3, v4

    .line 615
    goto :goto_19

    .line 613
    :catch_37
    move-exception v0

    .line 614
    sget-object v3, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not close ObjectInputStream"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_35

    .line 605
    .end local v0           #e:Ljava/io/IOException;
    :catch_42
    move-exception v0

    .line 606
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_43
    :try_start_43
    sget-object v3, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not deserialize a QueryBuilder."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_5f

    .line 610
    if-eqz v1, :cond_52

    .line 611
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_54

    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_52
    :goto_52
    move-object v3, v4

    .line 615
    goto :goto_19

    .line 613
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    :catch_54
    move-exception v0

    .line 614
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not close ObjectInputStream"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    .line 609
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5f
    move-exception v3

    .line 610
    :goto_60
    if-eqz v1, :cond_65

    .line 611
    :try_start_62
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 615
    :cond_65
    :goto_65
    throw v3

    .line 613
    :catch_66
    move-exception v0

    .line 614
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not close ObjectInputStream"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65

    .line 609
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catchall_71
    move-exception v3

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_60

    .line 605
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_74
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_43

    .line 602
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_77
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_26
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readPreOnePointSixFields(Ljava/io/ObjectInputStream;)V

    .line 674
    const-wide/16 v0, 0x0

    .line 676
    .local v0, subVersion:J
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    .line 677
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 678
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readOnePointSixFields(Ljava/io/ObjectInputStream;)V

    .line 690
    :cond_12
    :goto_12
    return-void

    .line 679
    :cond_13
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_22

    .line 680
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readOnePointSixFields(Ljava/io/ObjectInputStream;)V

    .line 681
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readOnePointSevenFields(Ljava/io/ObjectInputStream;)V

    goto :goto_12

    .line 687
    :catch_20
    move-exception v2

    goto :goto_12

    .line 682
    :cond_22
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 683
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readOnePointSixFields(Ljava/io/ObjectInputStream;)V

    .line 684
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readOnePointSevenFields(Ljava/io/ObjectInputStream;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->readOnePointNineFields(Ljava/io/ObjectInputStream;)V
    :try_end_31
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_31} :catch_20

    goto :goto_12
.end method

.method private readOnePointNineFields(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts;

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 706
    return-void
.end method

.method private readOnePointSevenFields(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/Size;

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    .line 701
    return-void
.end method

.method private readOnePointSixFields(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    .line 695
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 696
    return-void
.end method

.method private readPreOnePointSixFields(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    .line 711
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    .line 713
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 715
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/barcode/Barcode;

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    .line 717
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/goggles/LocationProtos$Location;

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    .line 719
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    .line 721
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 724
    .local v1, flashMode:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 727
    .local v2, focusStateString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 728
    .local v3, imageDataByteLength:I
    if-lez v3, :cond_46

    .line 729
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    .line 732
    :cond_46
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    .line 735
    :try_start_4c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->safeValueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    :try_end_58
    .catch Ljava/io/OptionalDataException; {:try_start_4c .. :try_end_58} :catch_74

    .line 741
    :goto_58
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/env/Size;

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    .line 744
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    .line 750
    :try_start_70
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_80

    .line 755
    :goto_73
    return-void

    .line 736
    :catch_74
    move-exception v0

    .line 738
    .local v0, e:Ljava/io/OptionalDataException;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->valueOf(I)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    goto :goto_58

    .line 751
    .end local v0           #e:Ljava/io/OptionalDataException;
    :catch_80
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "failed to deserialize camera config protos."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_73
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->writePreOneSixFields(Ljava/io/ObjectOutputStream;)V

    .line 622
    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 623
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->writeOnePointSixFields(Ljava/io/ObjectOutputStream;)V

    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->writeOnePointSevenFields(Ljava/io/ObjectOutputStream;)V

    .line 625
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->writeOnePointNineFields(Ljava/io/ObjectOutputStream;)V

    .line 627
    return-void
.end method

.method private writeOnePointNineFields(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 640
    return-void
.end method

.method private writeOnePointSevenFields(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 636
    return-void
.end method

.method private writeOnePointSixFields(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 631
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 632
    return-void
.end method

.method private writePreOneSixFields(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 644
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 646
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 650
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 651
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 653
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v0, :cond_59

    .line 656
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 657
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 662
    :goto_37
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 663
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 665
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 669
    return-void

    .line 659
    :cond_59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_37
.end method


# virtual methods
.method public addCropRect(Landroid/graphics/Rect;II)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 5
    .parameter "cropRect"
    .parameter "contextWidth"
    .parameter "contextHeight"

    .prologue
    const/4 v0, 0x0

    .line 425
    if-nez p1, :cond_8

    .line 426
    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 427
    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    .line 432
    :goto_7
    return-object p0

    .line 430
    :cond_8
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/GeometryUtils;->toBoundingBox(Landroid/graphics/Rect;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 431
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    goto :goto_7
.end method

.method public addDocid(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "docid"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->docid:Ljava/lang/String;

    .line 539
    return-object p0
.end method

.method public addImageData([BLcom/google/android/apps/unveil/env/Size;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 4
    .parameter "imageData"
    .parameter "size"

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addImageData([BLcom/google/android/apps/unveil/env/Size;Z)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImageData([BLcom/google/android/apps/unveil/env/Size;Z)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 4
    .parameter "imageData"
    .parameter "size"
    .parameter "imageRotated"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    .line 527
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    .line 528
    iput-boolean p3, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    .line 529
    return-object p0
.end method

.method public addImageUrl(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "imageUrl"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageUrl:Ljava/lang/String;

    .line 534
    return-object p0
.end method

.method public addJpegQuality(I)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "jpegQuality"

    .prologue
    .line 502
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    .line 503
    return-object p0
.end method

.method public addLocalBarcode(Lcom/google/android/apps/unveil/barcode/Barcode;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "barcode"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    .line 449
    return-object p0
.end method

.method public addLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "location"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    .line 454
    return-object p0
.end method

.method public addMsSinceEpoch(Ljava/lang/Long;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "msSinceEpoch"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    .line 463
    return-object p0
.end method

.method public addOrientationRelativeToCamera(I)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "orientationRelativeToCamera"

    .prologue
    .line 403
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    .line 404
    return-object p0
.end method

.method public addOrientationRelativeToDevice(I)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "orientationRelativeToDevice"

    .prologue
    .line 394
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    .line 395
    return-object p0
.end method

.method public addQueryId(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "queryId"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public addRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "restricts"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 584
    return-object p0
.end method

.method public addSourceLanguage(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "sourceLanguage"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    .line 468
    return-object p0
.end method

.method public buildGogglesRequestBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 5

    .prologue
    .line 233
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v1

    .line 234
    .local v1, gogglesRequest:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    .line 237
    .local v0, extendedGogglesRequestBuilder:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    if-eqz v2, :cond_14

    .line 238
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot attach barcode parameter without UnveilContext"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    if-eqz v2, :cond_20

    .line 242
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot attach location parameter without UnveilContext"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_20
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildWithoutDependencies(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)V

    .line 246
    return-object v1
.end method

.method public buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 9
    .parameter "context"

    .prologue
    .line 250
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v5

    .line 251
    .local v5, gogglesRequest:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v6

    .line 254
    .local v6, extendedGogglesRequestBuilder:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildWithoutDependencies(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)V

    .line 256
    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getViewport()Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getSensorProvider()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getOrientationSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getNetworkInfoProvider()Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/apps/unveil/UnveilContext;->getLatLngEncrypter()Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->buildWithContextualDependencies(Lcom/google/android/apps/unveil/env/Viewport;Lcom/google/android/apps/unveil/sensors/UnveilSensor;Lcom/google/android/apps/unveil/network/NetworkInfoProvider;Lcom/google/android/apps/unveil/network/LatLngEncrypter;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected buildImageBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 7

    .prologue
    .line 167
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v1

    .line 169
    .local v1, imageBuilder:Lcom/google/goggles/GogglesProtos$Image$Builder;
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v4, :cond_27

    .line 170
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v2

    .line 171
    .local v2, imageDataBuilder:Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setEncodedImage(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 172
    sget-object v4, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    invoke-virtual {v2, v4}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setImageEncoding(Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 173
    iget v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 174
    iget v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    invoke-virtual {v2, v4}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setQuality(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 176
    :cond_24
    invoke-virtual {v1, v2}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setImageData(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 179
    .end local v2           #imageDataBuilder:Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    :cond_27
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v3

    .line 180
    .local v3, imageRotation:Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    invoke-virtual {v3, v4}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->setOffsetAlreadyApplied(Z)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    .line 181
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    if-nez v4, :cond_3d

    .line 182
    iget v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getCWOffsetFromRightSideUp(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->setImageOffsetFromRightSideUp(Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    .line 185
    :cond_3d
    sget-object v4, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v3}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->build()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 187
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v4, :cond_65

    .line 188
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    .line 189
    .local v0, cropRegion:Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {v0, v4}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    .line 190
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-virtual {v0, v4}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->setWidth(I)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    .line 191
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-virtual {v0, v4}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->setHeight(I)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    .line 194
    .end local v0           #cropRegion:Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    :cond_65
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 195
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 198
    :cond_72
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->docid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 199
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->docid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/goggles/GogglesProtos$Image$Builder;->setDocid(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 202
    :cond_7f
    return-object v1
.end method

.method protected buildReplayRequestBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 5

    .prologue
    .line 383
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    .line 384
    .local v0, builder:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 385
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->setQueryId(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    .line 389
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    .line 390
    return-object v0

    .line 387
    :cond_15
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Creating a GogglesReplayRequest without a queryId."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public canGeneratePicture()Z
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getCanLogImage()Z
    .registers 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canLogImage:Z

    return v0
.end method

.method protected getCropContextSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    return-object v0
.end method

.method protected getCropRect()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method protected getImageSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    return-object v0
.end method

.method getLocalBarcode()Lcom/google/android/apps/unveil/barcode/Barcode;
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    return-object v0
.end method

.method protected getOrientationRelativeToCamera()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    return v0
.end method

.method protected getOrientationRelativeToDevice()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    return v0
.end method

.method public getQueryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-object v0
.end method

.method public getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 491
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    return v0
.end method

.method public getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    return-object v0
.end method

.method public hasLocation()Z
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAsReplayType()V
    .registers 2

    .prologue
    .line 563
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->REPLAY:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 564
    return-void
.end method

.method public setCanLogImage(Z)Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2
    .parameter "enabled"

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canLogImage:Z

    .line 473
    return-object p0
.end method

.method public setQueryType(Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;)V
    .registers 2
    .parameter "queryType"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 560
    return-void
.end method

.method protected setSequenceNumber(I)V
    .registers 2
    .parameter "seqNum"

    .prologue
    .line 487
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    .line 488
    return-void
.end method

.method public setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 576
    return-void
.end method

.method protected setValuesFromCursor(Landroid/database/Cursor;)V
    .registers 31
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;
        }
    .end annotation

    .prologue
    .line 914
    const-string v26, "orientation_relative_to_device"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 916
    .local v18, orientationRelativeToDevice:I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    .line 918
    const-string v26, "orientation_relative_to_camera"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 920
    .local v17, orientationRelativeToCamera:I
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    .line 924
    const-string v26, "crop_rect"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 925
    .local v7, cropRectBlob:[B
    if-eqz v7, :cond_211

    .line 927
    :try_start_44
    invoke-static {v7}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->parseFrom([B)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v6

    .line 928
    .local v6, cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    :try_end_4c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_44 .. :try_end_4c} :catch_1f3

    .line 937
    :goto_4c
    const-string v26, "crop_context_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/apps/unveil/env/Size;->parseFromString(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    .line 940
    const-string v26, "barcode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 941
    .local v4, barcodeBlob:[B
    if-eqz v4, :cond_84

    .line 942
    invoke-static {v4}, Lcom/google/android/apps/unveil/barcode/Barcode;->parseFrom([B)Lcom/google/android/apps/unveil/barcode/Barcode;

    move-result-object v3

    .line 943
    .local v3, barcode:Lcom/google/android/apps/unveil/barcode/Barcode;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    .line 946
    .end local v3           #barcode:Lcom/google/android/apps/unveil/barcode/Barcode;
    :cond_84
    const-string v26, "sequence_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 947
    .local v23, sequenceNumber:I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    .line 949
    const-string v26, "image_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 950
    .local v10, imageData:[B
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    .line 952
    const-string v26, "jpeg_quality"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 953
    .local v14, jpegQuality:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    .line 955
    const-string v26, "query_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 956
    .local v20, queryType:I
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->valueOf(I)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 958
    const-string v26, "replay_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 959
    .local v19, queryId:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    .line 961
    const-string v26, "image_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/apps/unveil/env/Size;->parseFromString(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v12

    .line 963
    .local v12, imageSize:Lcom/google/android/apps/unveil/env/Size;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    .line 965
    const-string v26, "ms_since_epoch"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 966
    .local v15, msSinceEpoch:J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    .line 968
    const-string v26, "image_rotated"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_214

    const/4 v11, 0x1

    .line 969
    .local v11, imageRotated:Z
    :goto_14d
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    .line 971
    const-string v26, "source"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 972
    .local v25, sourceString:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_217

    .line 973
    sget-object v26, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 984
    :goto_171
    const-string v26, "restricts"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 985
    .local v22, restrictsBlob:[B
    if-eqz v22, :cond_24c

    .line 987
    :try_start_185
    invoke-static/range {v22 .. v22}, Lcom/google/goggles/RestrictsProtos$Restricts;->parseFrom([B)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v21

    .line 988
    .local v21, restricts:Lcom/google/goggles/RestrictsProtos$Restricts;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;
    :try_end_18f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_185 .. :try_end_18f} :catch_22e

    .line 997
    :goto_18f
    const-string v26, "image_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 998
    .local v13, imageUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageUrl:Ljava/lang/String;

    .line 1000
    const-string v26, "docid"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1001
    .local v8, docid:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->docid:Ljava/lang/String;

    .line 1003
    const-string v26, "source_language"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1004
    .local v24, sourceLanguage:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    .line 1006
    const-string v26, "can_log_image"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_250

    const/4 v5, 0x1

    .line 1008
    .local v5, canLogImage:Z
    :goto_1ee
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canLogImage:Z

    .line 1009
    return-void

    .line 929
    .end local v4           #barcodeBlob:[B
    .end local v5           #canLogImage:Z
    .end local v6           #cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .end local v8           #docid:Ljava/lang/String;
    .end local v10           #imageData:[B
    .end local v11           #imageRotated:Z
    .end local v12           #imageSize:Lcom/google/android/apps/unveil/env/Size;
    .end local v13           #imageUrl:Ljava/lang/String;
    .end local v14           #jpegQuality:I
    .end local v15           #msSinceEpoch:J
    .end local v19           #queryId:Ljava/lang/String;
    .end local v20           #queryType:I
    .end local v21           #restricts:Lcom/google/goggles/RestrictsProtos$Restricts;
    .end local v22           #restrictsBlob:[B
    .end local v23           #sequenceNumber:I
    .end local v24           #sourceLanguage:Ljava/lang/String;
    .end local v25           #sourceString:Ljava/lang/String;
    :catch_1f3
    move-exception v9

    .line 930
    .local v9, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v26, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v27, "Could not read a bounding box from the given cursor."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    new-instance v26, Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;-><init>(Ljava/lang/Exception;)V

    throw v26

    .line 934
    .end local v9           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_211
    const/4 v6, 0x0

    .restart local v6       #cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    goto/16 :goto_4c

    .line 968
    .restart local v4       #barcodeBlob:[B
    .restart local v10       #imageData:[B
    .restart local v12       #imageSize:Lcom/google/android/apps/unveil/env/Size;
    .restart local v14       #jpegQuality:I
    .restart local v15       #msSinceEpoch:J
    .restart local v19       #queryId:Ljava/lang/String;
    .restart local v20       #queryType:I
    .restart local v23       #sequenceNumber:I
    :cond_214
    const/4 v11, 0x0

    goto/16 :goto_14d

    .line 976
    .restart local v11       #imageRotated:Z
    .restart local v25       #sourceString:Ljava/lang/String;
    :cond_217
    :try_start_217
    invoke-static/range {v25 .. v25}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->valueOf(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    :try_end_221
    .catch Ljava/lang/IllegalArgumentException; {:try_start_217 .. :try_end_221} :catch_223

    goto/16 :goto_171

    .line 977
    :catch_223
    move-exception v9

    .line 978
    .local v9, e:Ljava/lang/IllegalArgumentException;
    sget-object v26, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto/16 :goto_171

    .line 989
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #restrictsBlob:[B
    :catch_22e
    move-exception v9

    .line 990
    .local v9, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v26, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v27, "Could not read restricts from the given cursor."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    new-instance v26, Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;-><init>(Ljava/lang/Exception;)V

    throw v26

    .line 994
    .end local v9           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_24c
    const/16 v21, 0x0

    .restart local v21       #restricts:Lcom/google/goggles/RestrictsProtos$Restricts;
    goto/16 :goto_18f

    .line 1006
    .restart local v8       #docid:Ljava/lang/String;
    .restart local v13       #imageUrl:Ljava/lang/String;
    .restart local v24       #sourceLanguage:Ljava/lang/String;
    :cond_250
    const/4 v5, 0x0

    goto :goto_1ee
.end method

.method public toByteArray()[B
    .registers 8

    .prologue
    .line 811
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 812
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 813
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 814
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v3

    .line 817
    .end local v0           #bytes:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_11
    return-object v3

    .line 815
    :catch_12
    move-exception v1

    .line 816
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Could not serialize %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    const/4 v3, 0x0

    goto :goto_11
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .local v0, queryValues:Landroid/content/ContentValues;
    const-string v1, "orientation_relative_to_device"

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v1, "orientation_relative_to_camera"

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    if-eqz v1, :cond_2a

    .line 833
    const-string v1, "crop_rect"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 836
    :cond_2a
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v1, :cond_39

    .line 837
    const-string v1, "crop_context_size"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_39
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    if-eqz v1, :cond_48

    .line 841
    const-string v1, "barcode"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/barcode/Barcode;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 844
    :cond_48
    const-string v1, "sequence_number"

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v1, :cond_5e

    .line 847
    const-string v1, "image_data"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 850
    :cond_5e
    const-string v1, "jpeg_quality"

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v1, "query_type"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    iget v2, v2, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v1, "replay_id"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v1, :cond_8c

    .line 857
    const-string v1, "image_size"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_8c
    const-string v1, "ms_since_epoch"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v2, "image_rotated"

    iget-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    if-eqz v1, :cond_f0

    const/4 v1, 0x0

    :goto_9a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v1, "source"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    if-eqz v1, :cond_bb

    .line 867
    const-string v1, "restricts"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->restricts:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {v2}, Lcom/google/goggles/RestrictsProtos$Restricts;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 870
    :cond_bb
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_c6

    .line 871
    const-string v1, "image_url"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_c6
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->docid:Ljava/lang/String;

    if-eqz v1, :cond_d1

    .line 875
    const-string v1, "docid"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->docid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_d1
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 879
    const-string v1, "source_language"

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_e0
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canLogImage:Z

    if-eqz v1, :cond_ef

    .line 883
    const-string v1, "can_log_image"

    iget-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canLogImage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 886
    :cond_ef
    return-object v0

    .line 862
    :cond_f0
    const/4 v1, 0x1

    goto :goto_9a
.end method

.method public toPicture()Lcom/google/android/apps/unveil/env/Picture;
    .registers 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v0, :cond_21

    .line 544
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot recover a Picture from this QueryBuilder because addImageData has not been called. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    iget v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/PictureFactory;->createJpeg([BI)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "QueryBuilder [orientationRelativeToDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientationRelativeToCamera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->orientationRelativeToCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    if-eqz v1, :cond_37

    .line 767
    const-string v1, "cropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropRect:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v1, :cond_4c

    .line 770
    const-string v1, "cropContextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->cropContextSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_4c
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    if-eqz v1, :cond_61

    .line 773
    const-string v1, "barcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->barcode:Lcom/google/android/apps/unveil/barcode/Barcode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_61
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    if-eqz v1, :cond_76

    .line 776
    const-string v1, "location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->location:Lcom/google/goggles/LocationProtos$Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_76
    const-string v1, "sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v1, "jpegQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->jpegQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", queryType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    if-eqz v1, :cond_b9

    .line 786
    const-string v1, "queryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->queryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_b9
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    if-eqz v1, :cond_d5

    .line 789
    const-string v1, "imageData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_d5
    const-string v1, "imageRotated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageRotated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    if-eqz v1, :cond_fb

    .line 793
    const-string v1, "imageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_fb
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    if-eqz v1, :cond_110

    .line 796
    const-string v1, "msSinceEpoch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->msSinceEpoch:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_110
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_129

    .line 799
    const-string v1, "sourceLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_129
    const-string v1, "canLogImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canLogImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-eqz v1, :cond_149

    .line 803
    const-string v1, "source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 805
    :cond_149
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
