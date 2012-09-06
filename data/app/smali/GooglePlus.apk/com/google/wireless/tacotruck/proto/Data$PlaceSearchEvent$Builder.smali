.class public final Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private processId_:Ljava/lang/Object;

.field private serverIp_:Ljava/lang/Object;

.field private signature_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 22492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    .line 22528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    .line 22564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    .line 22319
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->maybeForceBuilderInitialization()V

    .line 22320
    return-void
.end method

.method static synthetic access$29600()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 1

    .prologue
    .line 22313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 1

    .prologue
    .line 22325
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22323
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 3

    .prologue
    .line 22350
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    .line 22351
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22352
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22354
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 6

    .prologue
    .line 22368
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 22369
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22370
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22371
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22372
    or-int/lit8 v2, v2, 0x1

    .line 22374
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->access$29802(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22375
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22376
    or-int/lit8 v2, v2, 0x2

    .line 22378
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->access$29902(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22379
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 22380
    or-int/lit8 v2, v2, 0x4

    .line 22382
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->access$30002(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22383
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 22384
    or-int/lit8 v2, v2, 0x8

    .line 22386
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->access$30102(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22387
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->access$30202(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;I)I

    .line 22388
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22329
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 22331
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    .line 22333
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    .line 22335
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    .line 22337
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22338
    return-object p0
.end method

.method public clearProcessId()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22553
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getProcessId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    .line 22555
    return-object p0
.end method

.method public clearServerIp()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22516
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22517
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getServerIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    .line 22519
    return-object p0
.end method

.method public clearSignature()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22588
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22589
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    .line 22591
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22480
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22481
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 22483
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 3

    .prologue
    .line 22342
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

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
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2

    .prologue
    .line 22346
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public getProcessId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22533
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    .line 22534
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22535
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22536
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    .line 22539
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

.method public getServerIp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22497
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    .line 22498
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22499
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22500
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    .line 22503
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

.method public getSignature()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22569
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    .line 22570
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22571
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22572
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    .line 22575
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

.method public getTimestamp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22461
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 22462
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22463
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22464
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 22467
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

.method public hasProcessId()Z
    .registers 3

    .prologue
    .line 22530
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

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

.method public hasServerIp()Z
    .registers 3

    .prologue
    .line 22494
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

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

.method public hasSignature()Z
    .registers 3

    .prologue
    .line 22566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22458
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

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
    .line 22409
    const/4 v0, 0x1

    return v0
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
    .line 22313
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22313
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

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
    .line 22313
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22418
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 22423
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22425
    :sswitch_d
    return-object p0

    .line 22430
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22431
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    goto :goto_0

    .line 22435
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22436
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    goto :goto_0

    .line 22440
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22441
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    goto :goto_0

    .line 22445
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22446
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    goto :goto_0

    .line 22418
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22392
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22405
    :cond_6
    :goto_6
    return-object p0

    .line 22393
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22394
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->setTimestamp(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    .line 22396
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->hasServerIp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22397
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getServerIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->setServerIp(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    .line 22399
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->hasProcessId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 22400
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getProcessId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->setProcessId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    .line 22402
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22403
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->setSignature(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    goto :goto_6
.end method

.method public setProcessId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22543
    if-nez p1, :cond_8

    .line 22544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22546
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22547
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->processId_:Ljava/lang/Object;

    .line 22549
    return-object p0
.end method

.method public setServerIp(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22507
    if-nez p1, :cond_8

    .line 22508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22510
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22511
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->serverIp_:Ljava/lang/Object;

    .line 22513
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22579
    if-nez p1, :cond_8

    .line 22580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22582
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22583
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->signature_:Ljava/lang/Object;

    .line 22585
    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22471
    if-nez p1, :cond_8

    .line 22472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22474
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->bitField0_:I

    .line 22475
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 22477
    return-object p0
.end method
