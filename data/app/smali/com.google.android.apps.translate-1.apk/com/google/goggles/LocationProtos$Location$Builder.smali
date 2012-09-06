.class public final Lcom/google/goggles/LocationProtos$Location$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationProtos.java"

# interfaces
.implements Lcom/google/goggles/LocationProtos$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/LocationProtos$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/LocationProtos$Location;",
        "Lcom/google/goggles/LocationProtos$Location$Builder;",
        ">;",
        "Lcom/google/goggles/LocationProtos$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private altitudeAccuracyMeters_:F

.field private altitudeMeters_:F

.field private bitField0_:I

.field private latLngAccuracyMeters_:F

.field private latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

.field private timestampMs_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 423
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 262
    invoke-direct {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->maybeForceBuilderInitialization()V

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 1

    .prologue
    .line 256
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location$Builder;->create()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/LocationProtos$Location;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildPartial()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/goggles/LocationProtos$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 306
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 309
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 1

    .prologue
    .line 268
    new-instance v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    invoke-direct {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 266
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/LocationProtos$Location;
    .registers 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildPartial()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/google/goggles/LocationProtos$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 297
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 299
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->build()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/LocationProtos$Location;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 313
    new-instance v2, Lcom/google/goggles/LocationProtos$Location;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/LocationProtos$Location;-><init>(Lcom/google/goggles/LocationProtos$Location$Builder;Lcom/google/goggles/LocationProtos$1;)V

    .line 314
    iget v3, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 315
    const/4 v1, 0x0

    .line 316
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_49

    .line 319
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    #setter for: Lcom/google/goggles/LocationProtos$Location;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v2, v1}, Lcom/google/goggles/LocationProtos$Location;->access$302(Lcom/google/goggles/LocationProtos$Location;Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng;

    .line 320
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 321
    or-int/lit8 v0, v0, 0x2

    .line 323
    :cond_1a
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLngAccuracyMeters_:F

    #setter for: Lcom/google/goggles/LocationProtos$Location;->latLngAccuracyMeters_:F
    invoke-static {v2, v1}, Lcom/google/goggles/LocationProtos$Location;->access$402(Lcom/google/goggles/LocationProtos$Location;F)F

    .line 324
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 325
    or-int/lit8 v0, v0, 0x4

    .line 327
    :cond_26
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeMeters_:F

    #setter for: Lcom/google/goggles/LocationProtos$Location;->altitudeMeters_:F
    invoke-static {v2, v1}, Lcom/google/goggles/LocationProtos$Location;->access$502(Lcom/google/goggles/LocationProtos$Location;F)F

    .line 328
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 329
    or-int/lit8 v0, v0, 0x8

    .line 331
    :cond_33
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeAccuracyMeters_:F

    #setter for: Lcom/google/goggles/LocationProtos$Location;->altitudeAccuracyMeters_:F
    invoke-static {v2, v1}, Lcom/google/goggles/LocationProtos$Location;->access$602(Lcom/google/goggles/LocationProtos$Location;F)F

    .line 332
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_40

    .line 333
    or-int/lit8 v0, v0, 0x10

    .line 335
    :cond_40
    iget-wide v3, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->timestampMs_:J

    #setter for: Lcom/google/goggles/LocationProtos$Location;->timestampMs_:J
    invoke-static {v2, v3, v4}, Lcom/google/goggles/LocationProtos$Location;->access$702(Lcom/google/goggles/LocationProtos$Location;J)J

    .line 336
    #setter for: Lcom/google/goggles/LocationProtos$Location;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/LocationProtos$Location;->access$802(Lcom/google/goggles/LocationProtos$Location;I)I

    .line 337
    return-object v2

    :cond_49
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildPartial()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 273
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 274
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 275
    iput v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLngAccuracyMeters_:F

    .line 276
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 277
    iput v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeMeters_:F

    .line 278
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 279
    iput v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeAccuracyMeters_:F

    .line 280
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->timestampMs_:J

    .line 282
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->clear()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->clear()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAltitudeAccuracyMeters()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeAccuracyMeters_:F

    .line 525
    return-object p0
.end method

.method public clearAltitudeMeters()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2

    .prologue
    .line 501
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeMeters_:F

    .line 504
    return-object p0
.end method

.method public clearLatLng()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2

    .prologue
    .line 459
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 461
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 462
    return-object p0
.end method

.method public clearLatLngAccuracyMeters()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLngAccuracyMeters_:F

    .line 483
    return-object p0
.end method

.method public clearTimestampMs()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3

    .prologue
    .line 543
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 544
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->timestampMs_:J

    .line 546
    return-object p0
.end method

.method public clone()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3

    .prologue
    .line 287
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location$Builder;->create()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildPartial()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->clone()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->clone()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->clone()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->clone()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAltitudeAccuracyMeters()F
    .registers 2

    .prologue
    .line 513
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeAccuracyMeters_:F

    return v0
.end method

.method public getAltitudeMeters()F
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeMeters_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/LocationProtos$Location;
    .registers 2

    .prologue
    .line 291
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->getDefaultInstanceForType()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->getDefaultInstanceForType()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getLatLngAccuracyMeters()F
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLngAccuracyMeters_:F

    return v0
.end method

.method public getTimestampMs()J
    .registers 3

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->timestampMs_:J

    return-wide v0
.end method

.method public hasAltitudeAccuracyMeters()Z
    .registers 3

    .prologue
    .line 510
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasAltitudeMeters()Z
    .registers 3

    .prologue
    .line 489
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLatLng()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 425
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLatLngAccuracyMeters()Z
    .registers 3

    .prologue
    .line 468
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTimestampMs()Z
    .registers 3

    .prologue
    .line 531
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 362
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 364
    const/4 v0, 0x0

    .line 367
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 4
    .parameter

    .prologue
    .line 341
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 357
    :cond_6
    :goto_6
    return-object p0

    .line 342
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 343
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 345
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->hasLatLngAccuracyMeters()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 346
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->getLatLngAccuracyMeters()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->setLatLngAccuracyMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 348
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->hasAltitudeMeters()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 349
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->getAltitudeMeters()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->setAltitudeMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 351
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->hasAltitudeAccuracyMeters()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 352
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->getAltitudeAccuracyMeters()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->setAltitudeAccuracyMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 354
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->hasTimestampMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 355
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location;->getTimestampMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/LocationProtos$Location$Builder;->setTimestampMs(J)Lcom/google/goggles/LocationProtos$Location$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 376
    sparse-switch v0, :sswitch_data_5e

    .line 381
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    :sswitch_d
    return-object p0

    .line 388
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->hasLatLng()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 390
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    .line 392
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 393
    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->setLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LocationProtos$Location$Builder;

    goto :goto_0

    .line 397
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 398
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLngAccuracyMeters_:F

    goto :goto_0

    .line 402
    :sswitch_37
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 403
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->timestampMs_:J

    goto :goto_0

    .line 407
    :sswitch_44
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 408
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeMeters_:F

    goto :goto_0

    .line 412
    :sswitch_51
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 413
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeAccuracyMeters_:F

    goto :goto_0

    .line 376
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x15 -> :sswitch_2a
        0x18 -> :sswitch_37
        0x25 -> :sswitch_44
        0x2d -> :sswitch_51
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 256
    check-cast p1, Lcom/google/goggles/LocationProtos$Location;

    invoke-virtual {p0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 4
    .parameter

    .prologue
    .line 447
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 449
    iget-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 455
    :goto_1f
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 456
    return-object p0

    .line 452
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    goto :goto_1f
.end method

.method public setAltitudeAccuracyMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3
    .parameter

    .prologue
    .line 516
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 517
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeAccuracyMeters_:F

    .line 519
    return-object p0
.end method

.method public setAltitudeMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3
    .parameter

    .prologue
    .line 495
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 496
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->altitudeMeters_:F

    .line 498
    return-object p0
.end method

.method public setLatLng(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3
    .parameter

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->build()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 443
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 444
    return-object p0
.end method

.method public setLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3
    .parameter

    .prologue
    .line 431
    if-nez p1, :cond_8

    .line 432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 434
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 436
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 437
    return-object p0
.end method

.method public setLatLngAccuracyMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 3
    .parameter

    .prologue
    .line 474
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 475
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->latLngAccuracyMeters_:F

    .line 477
    return-object p0
.end method

.method public setTimestampMs(J)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 4
    .parameter

    .prologue
    .line 537
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->bitField0_:I

    .line 538
    iput-wide p1, p0, Lcom/google/goggles/LocationProtos$Location$Builder;->timestampMs_:J

    .line 540
    return-object p0
.end method
