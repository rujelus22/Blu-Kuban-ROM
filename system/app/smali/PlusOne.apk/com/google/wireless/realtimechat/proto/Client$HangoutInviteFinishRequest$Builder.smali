.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inviteId_:Ljava/lang/Object;

.field private inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 45621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 45657
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45681
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45490
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->maybeForceBuilderInitialization()V

    .line 45491
    return-void
.end method

.method static synthetic access$62900()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 1

    .prologue
    .line 45484
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 1

    .prologue
    .line 45496
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 45494
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 3

    .prologue
    .line 45519
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    .line 45520
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 45521
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 45523
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 6

    .prologue
    .line 45537
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 45538
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45539
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 45540
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 45541
    or-int/lit8 v2, v2, 0x1

    .line 45543
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->access$63102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45544
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 45545
    or-int/lit8 v2, v2, 0x2

    .line 45547
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->access$63202(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45548
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 45549
    or-int/lit8 v2, v2, 0x4

    .line 45551
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->access$63302(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45552
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->access$63402(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;I)I

    .line 45553
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2

    .prologue
    .line 45500
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 45501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 45502
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45503
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45505
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45506
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45507
    return-object p0
.end method

.method public clearInviteId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2

    .prologue
    .line 45645
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45646
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getInviteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 45648
    return-object p0
.end method

.method public clearInviteStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2

    .prologue
    .line 45674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45675
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45677
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 2

    .prologue
    .line 45717
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45719
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45720
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 3

    .prologue
    .line 45511
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

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
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 45515
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45626
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 45627
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 45628
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 45629
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 45632
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

.method public getInviteStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    .registers 2

    .prologue
    .line 45662
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 45686
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45623
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviteStatus()Z
    .registers 3

    .prologue
    .line 45659
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

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
    .line 45683
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

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
    .line 45484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

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
    .line 45484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 45580
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 45585
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45587
    :sswitch_d
    return-object p0

    .line 45592
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    goto :goto_0

    .line 45597
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 45598
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    move-result-object v3

    .line 45599
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    if-eqz v3, :cond_0

    .line 45600
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45601
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    goto :goto_0

    .line 45606
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 45607
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 45608
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 45610
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 45611
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    goto :goto_0

    .line 45580
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 45557
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 45567
    :cond_6
    :goto_6
    return-object p0

    .line 45558
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->hasInviteId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45559
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getInviteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    .line 45561
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->hasInviteStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 45562
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getInviteStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->setInviteStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    .line 45564
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45565
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 45705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 45707
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45713
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45714
    return-object p0

    .line 45710
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45636
    if-nez p1, :cond_8

    .line 45637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45639
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45640
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 45642
    return-object p0
.end method

.method public setInviteStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45665
    if-nez p1, :cond_8

    .line 45666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45668
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45669
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->inviteStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45671
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 45699
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45702
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45689
    if-nez p1, :cond_8

    .line 45690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45692
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 45694
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->bitField0_:I

    .line 45695
    return-object p0
.end method
