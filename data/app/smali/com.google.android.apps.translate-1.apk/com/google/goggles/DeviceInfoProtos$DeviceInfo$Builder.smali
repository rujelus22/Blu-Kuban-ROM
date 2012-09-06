.class public final Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeviceInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/DeviceInfoProtos$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;",
        "Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;",
        ">;",
        "Lcom/google/goggles/DeviceInfoProtos$DeviceInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private buildVersion_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private platform_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 278
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->maybeForceBuilderInitialization()V

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 1

    .prologue
    .line 272
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->create()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 318
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 321
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 1

    .prologue
    .line 284
    new-instance v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    invoke-direct {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 282
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 309
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 311
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->build()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 325
    new-instance v2, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;-><init>(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;Lcom/google/goggles/DeviceInfoProtos$1;)V

    .line 326
    iget v3, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 327
    const/4 v1, 0x0

    .line 328
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 331
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->access$302(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 333
    or-int/lit8 v0, v0, 0x2

    .line 335
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->access$402(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 337
    or-int/lit8 v0, v0, 0x4

    .line 339
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->access$502(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    #setter for: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->access$602(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;I)I

    .line 341
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 290
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 292
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 294
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 295
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->clear()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->clear()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBuildVersion()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 462
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 464
    return-object p0
.end method

.method public clearModel()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 497
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 498
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 500
    return-object p0
.end method

.method public clearPlatform()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 425
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 426
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 428
    return-object p0
.end method

.method public clone()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 3

    .prologue
    .line 299
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->create()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildPartial()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->clone()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->clone()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->clone()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

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
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->clone()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 443
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 444
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 445
    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 448
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2

    .prologue
    .line 303
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 479
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 480
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 481
    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 484
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 407
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 408
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 409
    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 412
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasBuildVersion()Z
    .registers 3

    .prologue
    .line 439
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasModel()Z
    .registers 3

    .prologue
    .line 475
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasPlatform()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 403
    iget v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 345
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 355
    :cond_6
    :goto_6
    return-object p0

    .line 346
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->hasPlatform()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 347
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->setPlatform(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    .line 349
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->hasBuildVersion()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 350
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->setBuildVersion(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    .line 352
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 353
    invoke-virtual {p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->setModel(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 368
    sparse-switch v0, :sswitch_data_36

    .line 373
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :sswitch_d
    return-object p0

    .line 380
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 381
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    goto :goto_0

    .line 385
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 390
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 391
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    goto :goto_0

    .line 368
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x22 -> :sswitch_28
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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 272
    check-cast p1, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBuildVersion(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 452
    if-nez p1, :cond_8

    .line 453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 455
    :cond_8
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 456
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 458
    return-object p0
.end method

.method setBuildVersion(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 467
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 468
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildVersion_:Ljava/lang/Object;

    .line 470
    return-void
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 488
    if-nez p1, :cond_8

    .line 489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 491
    :cond_8
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 492
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 494
    return-object p0
.end method

.method setModel(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 504
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->model_:Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 416
    if-nez p1, :cond_8

    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 419
    :cond_8
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 420
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 422
    return-object p0
.end method

.method setPlatform(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 431
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->bitField0_:I

    .line 432
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->platform_:Ljava/lang/Object;

    .line 434
    return-void
.end method
