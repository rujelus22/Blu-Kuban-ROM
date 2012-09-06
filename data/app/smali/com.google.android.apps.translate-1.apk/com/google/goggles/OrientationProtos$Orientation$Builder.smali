.class public final Lcom/google/goggles/OrientationProtos$Orientation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OrientationProtos.java"

# interfaces
.implements Lcom/google/goggles/OrientationProtos$OrientationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/OrientationProtos$Orientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/OrientationProtos$Orientation;",
        "Lcom/google/goggles/OrientationProtos$Orientation$Builder;",
        ">;",
        "Lcom/google/goggles/OrientationProtos$OrientationOrBuilder;"
    }
.end annotation


# instance fields
.field private azimuthDegrees_:F

.field private bitField0_:I

.field private pitchDegrees_:F

.field private rollDegrees_:F

.field private sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 438
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 234
    invoke-direct {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->maybeForceBuilderInitialization()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 1

    .prologue
    .line 228
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->create()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/goggles/OrientationProtos$Orientation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 276
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 279
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 1

    .prologue
    .line 240
    new-instance v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/google/goggles/OrientationProtos$Orientation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 267
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 269
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->build()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 283
    new-instance v2, Lcom/google/goggles/OrientationProtos$Orientation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/OrientationProtos$Orientation;-><init>(Lcom/google/goggles/OrientationProtos$Orientation$Builder;Lcom/google/goggles/OrientationProtos$1;)V

    .line 284
    iget v3, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 285
    const/4 v1, 0x0

    .line 286
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 289
    :goto_e
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->azimuthDegrees_:F

    #setter for: Lcom/google/goggles/OrientationProtos$Orientation;->azimuthDegrees_:F
    invoke-static {v2, v1}, Lcom/google/goggles/OrientationProtos$Orientation;->access$302(Lcom/google/goggles/OrientationProtos$Orientation;F)F

    .line 290
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 291
    or-int/lit8 v0, v0, 0x2

    .line 293
    :cond_1a
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->pitchDegrees_:F

    #setter for: Lcom/google/goggles/OrientationProtos$Orientation;->pitchDegrees_:F
    invoke-static {v2, v1}, Lcom/google/goggles/OrientationProtos$Orientation;->access$402(Lcom/google/goggles/OrientationProtos$Orientation;F)F

    .line 294
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 295
    or-int/lit8 v0, v0, 0x4

    .line 297
    :cond_26
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->rollDegrees_:F

    #setter for: Lcom/google/goggles/OrientationProtos$Orientation;->rollDegrees_:F
    invoke-static {v2, v1}, Lcom/google/goggles/OrientationProtos$Orientation;->access$502(Lcom/google/goggles/OrientationProtos$Orientation;F)F

    .line 298
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 299
    or-int/lit8 v0, v0, 0x8

    .line 301
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    #setter for: Lcom/google/goggles/OrientationProtos$Orientation;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v2, v1}, Lcom/google/goggles/OrientationProtos$Orientation;->access$602(Lcom/google/goggles/OrientationProtos$Orientation;Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 302
    #setter for: Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/OrientationProtos$Orientation;->access$702(Lcom/google/goggles/OrientationProtos$Orientation;I)I

    .line 303
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 245
    iput v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->azimuthDegrees_:F

    .line 246
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 247
    iput v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->pitchDegrees_:F

    .line 248
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 249
    iput v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->rollDegrees_:F

    .line 250
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 251
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 252
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->clear()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->clear()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAzimuthDegrees()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->azimuthDegrees_:F

    .line 392
    return-object p0
.end method

.method public clearPitchDegrees()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->pitchDegrees_:F

    .line 413
    return-object p0
.end method

.method public clearRollDegrees()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2

    .prologue
    .line 431
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->rollDegrees_:F

    .line 434
    return-object p0
.end method

.method public clearSensorAccuracy()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2

    .prologue
    .line 474
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 476
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 477
    return-object p0
.end method

.method public clone()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3

    .prologue
    .line 257
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->create()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->clone()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->clone()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->clone()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

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
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->clone()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAzimuthDegrees()F
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->azimuthDegrees_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getPitchDegrees()F
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->pitchDegrees_:F

    return v0
.end method

.method public getRollDegrees()F
    .registers 2

    .prologue
    .line 422
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->rollDegrees_:F

    return v0
.end method

.method public getSensorAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    return-object v0
.end method

.method public hasAzimuthDegrees()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 377
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPitchDegrees()Z
    .registers 3

    .prologue
    .line 398
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

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

.method public hasRollDegrees()Z
    .registers 3

    .prologue
    .line 419
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

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

.method public hasSensorAccuracy()Z
    .registers 3

    .prologue
    .line 440
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 307
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 320
    :cond_6
    :goto_6
    return-object p0

    .line 308
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->hasAzimuthDegrees()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 309
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->getAzimuthDegrees()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setAzimuthDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 311
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->hasPitchDegrees()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 312
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->getPitchDegrees()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setPitchDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 314
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->hasRollDegrees()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 315
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->getRollDegrees()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setRollDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 317
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->hasSensorAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation;->getSensorAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeSensorAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 333
    sparse-switch v0, :sswitch_data_52

    .line 338
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    :sswitch_d
    return-object p0

    .line 345
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->azimuthDegrees_:F

    goto :goto_0

    .line 350
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->pitchDegrees_:F

    goto :goto_0

    .line 355
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->rollDegrees_:F

    goto :goto_0

    .line 360
    :sswitch_35
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->hasSensorAccuracy()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 362
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->getSensorAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    .line 364
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 365
    invoke-virtual {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->setSensorAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    goto :goto_0

    .line 333
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xd -> :sswitch_e
        0x15 -> :sswitch_1b
        0x1d -> :sswitch_28
        0x22 -> :sswitch_35
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
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 228
    check-cast p1, Lcom/google/goggles/OrientationProtos$Orientation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

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
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSensorAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 462
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 464
    iget-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 470
    :goto_20
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 471
    return-object p0

    .line 467
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    goto :goto_20
.end method

.method public setAzimuthDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 383
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 384
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->azimuthDegrees_:F

    .line 386
    return-object p0
.end method

.method public setPitchDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 404
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 405
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->pitchDegrees_:F

    .line 407
    return-object p0
.end method

.method public setRollDegrees(F)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 425
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 426
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->rollDegrees_:F

    .line 428
    return-object p0
.end method

.method public setSensorAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->build()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 458
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 459
    return-object p0
.end method

.method public setSensorAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 446
    if-nez p1, :cond_8

    .line 447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 449
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 451
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->bitField0_:I

    .line 452
    return-object p0
.end method
