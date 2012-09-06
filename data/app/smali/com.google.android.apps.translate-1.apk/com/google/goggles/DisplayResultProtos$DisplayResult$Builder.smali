.class public final Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DisplayResultProtos.java"

# interfaces
.implements Lcom/google/goggles/DisplayResultProtos$DisplayResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/DisplayResultProtos$DisplayResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/DisplayResultProtos$DisplayResult;",
        "Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;",
        ">;",
        "Lcom/google/goggles/DisplayResultProtos$DisplayResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private subtitle_:Ljava/lang/Object;

.field private subtype_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->maybeForceBuilderInitialization()V

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 1

    .prologue
    .line 317
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->create()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildPartial()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 365
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 368
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 1

    .prologue
    .line 329
    new-instance v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    invoke-direct {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 327
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildPartial()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 356
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 358
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->build()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 372
    new-instance v2, Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;-><init>(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;Lcom/google/goggles/DisplayResultProtos$1;)V

    .line 373
    iget v3, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 374
    const/4 v1, 0x0

    .line 375
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 378
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->access$302(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 380
    or-int/lit8 v0, v0, 0x2

    .line 382
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->access$402(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 384
    or-int/lit8 v0, v0, 0x4

    .line 386
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->access$502(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 388
    or-int/lit8 v0, v0, 0x8

    .line 390
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->access$602(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    #setter for: Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->access$702(Lcom/google/goggles/DisplayResultProtos$DisplayResult;I)I

    .line 392
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildPartial()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 335
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 337
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 339
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 341
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 342
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->clear()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->clear()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSubtitle()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 521
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 523
    return-object p0
.end method

.method public clearSubtype()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 592
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 593
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 595
    return-object p0
.end method

.method public clearTitle()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 484
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 485
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 487
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 557
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 559
    return-object p0
.end method

.method public clone()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 3

    .prologue
    .line 346
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->create()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildPartial()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/goggles/DisplayResultProtos$DisplayResult;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->clone()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->clone()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->clone()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

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
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->clone()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2

    .prologue
    .line 350
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 502
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 503
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 504
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 507
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 574
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 575
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 576
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 579
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 466
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 467
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 471
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 538
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 539
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 540
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 543
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasSubtitle()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

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

.method public hasSubtype()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 462
    iget v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/DisplayResultProtos$DisplayResult;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 396
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 409
    :cond_6
    :goto_6
    return-object p0

    .line 397
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 398
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->setTitle(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    .line 400
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->hasSubtitle()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 401
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->setSubtitle(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    .line 403
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 404
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->setType(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    .line 406
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->hasSubtype()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 407
    invoke-virtual {p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->setSubtype(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
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
    sparse-switch v0, :sswitch_data_42

    .line 427
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :sswitch_d
    return-object p0

    .line 434
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 435
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 439
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    goto :goto_0

    .line 444
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 449
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 450
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    goto :goto_0

    .line 422
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 317
    check-cast p1, Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    invoke-virtual {p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/goggles/DisplayResultProtos$DisplayResult;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

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
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    if-nez p1, :cond_8

    .line 512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 514
    :cond_8
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 515
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 517
    return-object p0
.end method

.method setSubtitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 526
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 527
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtitle_:Ljava/lang/Object;

    .line 529
    return-void
.end method

.method public setSubtype(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    if-nez p1, :cond_8

    .line 584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 586
    :cond_8
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 587
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 589
    return-object p0
.end method

.method setSubtype(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 598
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 599
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->subtype_:Ljava/lang/Object;

    .line 601
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 475
    if-nez p1, :cond_8

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_8
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 479
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 481
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 490
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 491
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->title_:Ljava/lang/Object;

    .line 493
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    if-nez p1, :cond_8

    .line 548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 550
    :cond_8
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 551
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 553
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 562
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->bitField0_:I

    .line 563
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->type_:Ljava/lang/Object;

    .line 565
    return-void
.end method
