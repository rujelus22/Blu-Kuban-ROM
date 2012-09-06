.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inviteClientId_:Ljava/lang/Object;

.field private inviterJid_:Ljava/lang/Object;

.field private inviterMucJid_:Ljava/lang/Object;

.field private participantId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42510
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42774
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42511
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->maybeForceBuilderInitialization()V

    .line 42512
    return-void
.end method

.method static synthetic access$58500()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 1

    .prologue
    .line 42505
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 1

    .prologue
    .line 42517
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42515
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 3

    .prologue
    .line 42544
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    .line 42545
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42546
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42548
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 6

    .prologue
    .line 42562
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 42563
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42564
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42565
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42566
    or-int/lit8 v2, v2, 0x1

    .line 42568
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42569
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 42570
    or-int/lit8 v2, v2, 0x2

    .line 42572
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42573
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 42574
    or-int/lit8 v2, v2, 0x4

    .line 42576
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42577
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 42578
    or-int/lit8 v2, v2, 0x8

    .line 42580
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$59002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42581
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 42582
    or-int/lit8 v2, v2, 0x10

    .line 42584
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$59102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42585
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$59202(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;I)I

    .line 42586
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42521
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42523
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42525
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42527
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42530
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42531
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42532
    return-object p0
.end method

.method public clearInviteClientId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42690
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42691
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviteClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42693
    return-object p0
.end method

.method public clearInviterJid()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42798
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42799
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42801
    return-object p0
.end method

.method public clearInviterMucJid()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42762
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42763
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterMucJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42765
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42726
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42727
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42729
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42846
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42848
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42849
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3

    .prologue
    .line 42536
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

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
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 42540
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInviteClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42671
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42672
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42673
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42674
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42677
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

.method public getInviterJid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42779
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42780
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42781
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42782
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42785
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

.method public getInviterMucJid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42743
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42744
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42745
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42746
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42749
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

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42707
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42708
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42710
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42713
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

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 42815
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInviteClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42668
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviterJid()Z
    .registers 3

    .prologue
    .line 42776
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

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

.method public hasInviterMucJid()Z
    .registers 3

    .prologue
    .line 42740
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    .line 42704
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

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
    .line 42812
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 42610
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
    .line 42505
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42505
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

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
    .line 42505
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42618
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42619
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 42624
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42626
    :sswitch_d
    return-object p0

    .line 42631
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42632
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 42636
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42637
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 42641
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42642
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    goto :goto_0

    .line 42646
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 42647
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 42648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 42650
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42651
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    goto :goto_0

    .line 42655
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42656
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    goto :goto_0

    .line 42619
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 42590
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42606
    :cond_6
    :goto_6
    return-object p0

    .line 42591
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasInviteClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42592
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviteClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviteClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42594
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 42595
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42597
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasInviterMucJid()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 42598
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviterMucJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42600
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasInviterJid()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 42601
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviterJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42603
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42604
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 42834
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 42836
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42842
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42843
    return-object p0

    .line 42839
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setInviteClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42681
    if-nez p1, :cond_8

    .line 42682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42684
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42685
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42687
    return-object p0
.end method

.method public setInviterJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42789
    if-nez p1, :cond_8

    .line 42790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42792
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42793
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42795
    return-object p0
.end method

.method public setInviterMucJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42753
    if-nez p1, :cond_8

    .line 42754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42756
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42757
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42759
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42717
    if-nez p1, :cond_8

    .line 42718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42720
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42721
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42723
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 42828
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42830
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42831
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42818
    if-nez p1, :cond_8

    .line 42819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42821
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42823
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42824
    return-object p0
.end method
