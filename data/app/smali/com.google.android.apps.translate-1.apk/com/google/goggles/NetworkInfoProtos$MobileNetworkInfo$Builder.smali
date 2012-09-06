.class public final Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;",
        "Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;",
        ">;",
        "Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private carrierName_:Ljava/lang/Object;

.field private type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 410
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 297
    invoke-direct {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->maybeForceBuilderInitialization()V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 1

    .prologue
    .line 291
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->create()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 335
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 338
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 1

    .prologue
    .line 303
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 301
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 326
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 328
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 342
    new-instance v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;-><init>(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;Lcom/google/goggles/NetworkInfoProtos$1;)V

    .line 343
    iget v3, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 344
    const/4 v1, 0x0

    .line 345
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 348
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    #setter for: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    invoke-static {v2, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->access$302(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 349
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 350
    or-int/lit8 v0, v0, 0x2

    .line 352
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->access$402(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    #setter for: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->access$502(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;I)I

    .line 354
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 308
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 309
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 311
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 312
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->clear()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->clear()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCarrierName()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 459
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 461
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 428
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 430
    return-object p0
.end method

.method public clone()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 3

    .prologue
    .line 316
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->create()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

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
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 440
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 441
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 442
    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 445
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    return-object v0
.end method

.method public hasCarrierName()Z
    .registers 3

    .prologue
    .line 436
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 412
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

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
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 358
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 365
    :cond_6
    :goto_6
    return-object p0

    .line 359
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 360
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    .line 362
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->hasCarrierName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 363
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->setCarrierName(Ljava/lang/String;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 378
    sparse-switch v0, :sswitch_data_2e

    .line 383
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :sswitch_d
    return-object p0

    .line 390
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 391
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->valueOf(I)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 394
    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_0

    .line 399
    :sswitch_21
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 400
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    goto :goto_0

    .line 378
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
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
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 291
    check-cast p1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

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
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCarrierName(Ljava/lang/String;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 449
    if-nez p1, :cond_8

    .line 450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 452
    :cond_8
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 453
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 455
    return-object p0
.end method

.method setCarrierName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 464
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 465
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->carrierName_:Ljava/lang/Object;

    .line 467
    return-void
.end method

.method public setType(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 418
    if-nez p1, :cond_8

    .line 419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 421
    :cond_8
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->bitField0_:I

    .line 422
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 424
    return-object p0
.end method
