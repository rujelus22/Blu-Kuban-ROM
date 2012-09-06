.class public final Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "GogglesConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesConfigProtos$GogglesConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;",
        "Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesConfigProtos$GogglesConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private canLogImage_:Z

.field private canStoreToSearchHistory_:Z

.field private country_:Ljava/lang/Object;

.field private languagePref_:Ljava/lang/Object;

.field private maxResults_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 465
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 309
    invoke-direct {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maybeForceBuilderInitialization()V

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 1

    .prologue
    .line 304
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->create()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 353
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 356
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 1

    .prologue
    .line 315
    new-instance v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 313
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 344
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 346
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->build()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 360
    new-instance v2, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;-><init>(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;Lcom/google/goggles/GogglesConfigProtos$1;)V

    .line 361
    iget v3, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 362
    const/4 v1, 0x0

    .line 363
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_49

    .line 366
    :goto_e
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    #setter for: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->maxResults_:I
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->access$302(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;I)I

    .line 367
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 368
    or-int/lit8 v0, v0, 0x2

    .line 370
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->access$402(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 372
    or-int/lit8 v0, v0, 0x4

    .line 374
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->access$502(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 376
    or-int/lit8 v0, v0, 0x8

    .line 378
    :cond_33
    iget-boolean v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canStoreToSearchHistory_:Z

    #setter for: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canStoreToSearchHistory_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->access$602(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Z)Z

    .line 379
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_40

    .line 380
    or-int/lit8 v0, v0, 0x10

    .line 382
    :cond_40
    iget-boolean v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canLogImage_:Z

    #setter for: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canLogImage_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->access$702(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Z)Z

    .line 383
    #setter for: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->access$802(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;I)I

    .line 384
    return-object v2

    :cond_49
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 320
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    .line 321
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 323
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 325
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 326
    iput-boolean v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canStoreToSearchHistory_:Z

    .line 327
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 328
    iput-boolean v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canLogImage_:Z

    .line 329
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 330
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clear()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clear()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clear()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanLogImage()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canLogImage_:Z

    .line 596
    return-object p0
.end method

.method public clearCanStoreToSearchHistory()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 572
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canStoreToSearchHistory_:Z

    .line 575
    return-object p0
.end method

.method public clearCountry()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 546
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 547
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 549
    return-object p0
.end method

.method public clearLanguagePref()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 510
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 511
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getLanguagePref()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 513
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 480
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    .line 482
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3

    .prologue
    .line 334
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->create()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clone()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clone()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clone()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clone()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

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
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->clone()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanLogImage()Z
    .registers 2

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canLogImage_:Z

    return v0
.end method

.method public getCanStoreToSearchHistory()Z
    .registers 2

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canStoreToSearchHistory_:Z

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 528
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 529
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 530
    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 533
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2

    .prologue
    .line 338
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagePref()Ljava/lang/String;
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 492
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 493
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 494
    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 497
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getMaxResults()I
    .registers 2

    .prologue
    .line 470
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    return v0
.end method

.method public hasCanLogImage()Z
    .registers 3

    .prologue
    .line 581
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

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

.method public hasCanStoreToSearchHistory()Z
    .registers 3

    .prologue
    .line 560
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

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

.method public hasCountry()Z
    .registers 3

    .prologue
    .line 524
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

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

.method public hasLanguagePref()Z
    .registers 3

    .prologue
    .line 488
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

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

.method public hasMaxResults()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 467
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

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
    .line 409
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 388
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 405
    :goto_6
    return-object p0

    .line 389
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->hasMaxResults()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 390
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getMaxResults()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setMaxResults(I)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 392
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->hasLanguagePref()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 393
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getLanguagePref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setLanguagePref(Ljava/lang/String;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 395
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 396
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCountry(Ljava/lang/String;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 398
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->hasCanStoreToSearchHistory()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 399
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getCanStoreToSearchHistory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCanStoreToSearchHistory(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 401
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->hasCanLogImage()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 402
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getCanLogImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->setCanLogImage(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 404
    :cond_48
    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 422
    sparse-switch v0, :sswitch_data_50

    .line 427
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :sswitch_d
    return-object p0

    .line 434
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 435
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    goto :goto_0

    .line 439
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    goto :goto_0

    .line 444
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canStoreToSearchHistory_:Z

    goto :goto_0

    .line 449
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 450
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    goto :goto_0

    .line 454
    :sswitch_42
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 455
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canLogImage_:Z

    goto :goto_0

    .line 422
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x22 -> :sswitch_1b
        0x28 -> :sswitch_28
        0x32 -> :sswitch_35
        0x38 -> :sswitch_42
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
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 304
    check-cast p1, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

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
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCanLogImage(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 587
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 588
    iput-boolean p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canLogImage_:Z

    .line 590
    return-object p0
.end method

.method public setCanStoreToSearchHistory(Z)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 566
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 567
    iput-boolean p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->canStoreToSearchHistory_:Z

    .line 569
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 537
    if-nez p1, :cond_8

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 540
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 541
    iput-object p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 543
    return-object p0
.end method

.method setCountry(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 552
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 553
    iput-object p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->country_:Ljava/lang/Object;

    .line 555
    return-void
.end method

.method public setLanguagePref(Ljava/lang/String;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 501
    if-nez p1, :cond_8

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 504
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 505
    iput-object p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 507
    return-object p0
.end method

.method setLanguagePref(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 516
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 517
    iput-object p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->languagePref_:Ljava/lang/Object;

    .line 519
    return-void
.end method

.method public setMaxResults(I)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 473
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->bitField0_:I

    .line 474
    iput p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->maxResults_:I

    .line 476
    return-object p0
.end method
