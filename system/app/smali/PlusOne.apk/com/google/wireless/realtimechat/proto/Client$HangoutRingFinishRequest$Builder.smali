.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private hangoutId_:Ljava/lang/Object;

.field private ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41444
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41612
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41636
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41445
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->maybeForceBuilderInitialization()V

    .line 41446
    return-void
.end method

.method static synthetic access$57100()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 1

    .prologue
    .line 41439
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 1

    .prologue
    .line 41451
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41449
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 3

    .prologue
    .line 41474
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    .line 41475
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41476
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41478
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 6

    .prologue
    .line 41492
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 41493
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41494
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41495
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41496
    or-int/lit8 v2, v2, 0x1

    .line 41498
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57302(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41499
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41500
    or-int/lit8 v2, v2, 0x2

    .line 41502
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57402(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41503
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41504
    or-int/lit8 v2, v2, 0x4

    .line 41506
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57502(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41507
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57602(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;I)I

    .line 41508
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41457
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41458
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41459
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41460
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41461
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41462
    return-object p0
.end method

.method public clearHangoutId()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41600
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41601
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getHangoutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41603
    return-object p0
.end method

.method public clearRingStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41629
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41630
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41632
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41672
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41675
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3

    .prologue
    .line 41466
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

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
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 41470
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41581
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41582
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41583
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41584
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41587
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

.method public getRingStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2

    .prologue
    .line 41617
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 41641
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasHangoutId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41578
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRingStatus()Z
    .registers 3

    .prologue
    .line 41614
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 41638
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

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
    .line 41439
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

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
    .line 41439
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41534
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41535
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 41540
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41542
    :sswitch_d
    return-object p0

    .line 41547
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41548
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    goto :goto_0

    .line 41552
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41553
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    move-result-object v3

    .line 41554
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    if-eqz v3, :cond_0

    .line 41555
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41556
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    goto :goto_0

    .line 41561
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 41562
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 41563
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 41565
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41566
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    goto :goto_0

    .line 41535
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 41512
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41522
    :cond_6
    :goto_6
    return-object p0

    .line 41513
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hasHangoutId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41514
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getHangoutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setHangoutId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 41516
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hasRingStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41517
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getRingStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setRingStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 41519
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41520
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41660
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 41662
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41668
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41669
    return-object p0

    .line 41665
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setHangoutId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41591
    if-nez p1, :cond_8

    .line 41592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41594
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41595
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41597
    return-object p0
.end method

.method public setRingStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41620
    if-nez p1, :cond_8

    .line 41621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41623
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41624
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41626
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 41654
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41656
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41657
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41644
    if-nez p1, :cond_8

    .line 41645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41647
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41649
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41650
    return-object p0
.end method
