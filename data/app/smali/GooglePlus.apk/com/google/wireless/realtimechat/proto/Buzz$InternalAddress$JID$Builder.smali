.class public final Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JIDOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JIDOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/Object;

.field private node_:Ljava/lang/Object;

.field private resource_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    .line 315
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->maybeForceBuilderInitialization()V

    .line 316
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 1

    .prologue
    .line 309
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 1

    .prologue
    .line 321
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 319
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    .line 345
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 346
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 348
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 6

    .prologue
    .line 362
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 363
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 364
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 365
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 366
    or-int/lit8 v2, v2, 0x1

    .line 368
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->access$302(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 370
    or-int/lit8 v2, v2, 0x2

    .line 372
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->access$402(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 374
    or-int/lit8 v2, v2, 0x4

    .line 376
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->access$502(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->access$602(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;I)I

    .line 378
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    .line 327
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    .line 329
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    .line 331
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public clearDomain()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 467
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    .line 469
    return-object p0
.end method

.method public clearNode()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 503
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getNode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    .line 505
    return-object p0
.end method

.method public clearResource()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 539
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    .line 541
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 3

    .prologue
    .line 336
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

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
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 2

    .prologue
    .line 340
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    .line 448
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 449
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    .line 453
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getNode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    .line 484
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 485
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    .line 489
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getResource()Ljava/lang/String;
    .registers 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    .line 520
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 521
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    .line 525
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasDomain()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 444
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNode()Z
    .registers 3

    .prologue
    .line 480
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

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

.method public hasResource()Z
    .registers 3

    .prologue
    .line 516
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

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
    .line 396
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->hasDomain()Z

    move-result v0

    if-nez v0, :cond_8

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 309
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 409
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 414
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    :sswitch_d
    return-object p0

    .line 421
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 422
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    goto :goto_0

    .line 426
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 427
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    goto :goto_0

    .line 431
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 432
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    goto :goto_0

    .line 409
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_1b
        0x22 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 382
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 392
    :cond_6
    :goto_6
    return-object p0

    .line 383
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->hasDomain()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 384
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->setDomain(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    .line 386
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->hasNode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 387
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getNode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->setNode(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    .line 389
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 390
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->setResource(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    goto :goto_6
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 457
    if-nez p1, :cond_8

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 460
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 461
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->domain_:Ljava/lang/Object;

    .line 463
    return-object p0
.end method

.method public setNode(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 493
    if-nez p1, :cond_8

    .line 494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 496
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 497
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->node_:Ljava/lang/Object;

    .line 499
    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 529
    if-nez p1, :cond_8

    .line 530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 532
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->bitField0_:I

    .line 533
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->resource_:Ljava/lang/Object;

    .line 535
    return-object p0
.end method
