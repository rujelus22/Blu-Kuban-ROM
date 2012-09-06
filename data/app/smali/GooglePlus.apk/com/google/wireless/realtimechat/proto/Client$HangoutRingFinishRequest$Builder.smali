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
    .line 41549
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41717
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41741
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41550
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->maybeForceBuilderInitialization()V

    .line 41551
    return-void
.end method

.method static synthetic access$57200()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 1

    .prologue
    .line 41544
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 1

    .prologue
    .line 41556
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41554
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 3

    .prologue
    .line 41579
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    .line 41580
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41581
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41583
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 6

    .prologue
    .line 41597
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 41598
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41599
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41600
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41601
    or-int/lit8 v2, v2, 0x1

    .line 41603
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hangoutId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57402(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41604
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41605
    or-int/lit8 v2, v2, 0x2

    .line 41607
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57502(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41608
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41609
    or-int/lit8 v2, v2, 0x4

    .line 41611
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57602(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41612
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->access$57702(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;I)I

    .line 41613
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41560
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41562
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41563
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41564
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41565
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41567
    return-object p0
.end method

.method public clearHangoutId()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41706
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getHangoutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41708
    return-object p0
.end method

.method public clearRingStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41734
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41735
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41737
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 2

    .prologue
    .line 41777
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41780
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3

    .prologue
    .line 41571
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
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 41575
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41686
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41687
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41688
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41689
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41692
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
    .line 41722
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 41746
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasHangoutId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41683
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
    .line 41719
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
    .line 41743
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 41631
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
    .line 41544
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41544
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

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
    .line 41544
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
    .line 41639
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41640
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 41645
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41647
    :sswitch_d
    return-object p0

    .line 41652
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    goto :goto_0

    .line 41657
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41658
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    move-result-object v3

    .line 41659
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    if-eqz v3, :cond_0

    .line 41660
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41661
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    goto :goto_0

    .line 41666
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 41667
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 41668
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 41670
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41671
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    goto :goto_0

    .line 41640
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
    .line 41617
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41627
    :cond_6
    :goto_6
    return-object p0

    .line 41618
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hasHangoutId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41619
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getHangoutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setHangoutId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 41621
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hasRingStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41622
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getRingStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setRingStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 41624
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41625
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 41767
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41773
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41774
    return-object p0

    .line 41770
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setHangoutId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41696
    if-nez p1, :cond_8

    .line 41697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41699
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41700
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->hangoutId_:Ljava/lang/Object;

    .line 41702
    return-object p0
.end method

.method public setRingStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41725
    if-nez p1, :cond_8

    .line 41726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41728
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41729
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->ringStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41731
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 41759
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41761
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41762
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41749
    if-nez p1, :cond_8

    .line 41750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41752
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 41754
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->bitField0_:I

    .line 41755
    return-object p0
.end method
