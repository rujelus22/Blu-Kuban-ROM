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
    .line 42405
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42633
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42705
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42406
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->maybeForceBuilderInitialization()V

    .line 42407
    return-void
.end method

.method static synthetic access$58400()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 1

    .prologue
    .line 42400
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 1

    .prologue
    .line 42412
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42410
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 3

    .prologue
    .line 42439
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    .line 42440
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42441
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42443
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 6

    .prologue
    .line 42457
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 42458
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42459
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42460
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42461
    or-int/lit8 v2, v2, 0x1

    .line 42463
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42464
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 42465
    or-int/lit8 v2, v2, 0x2

    .line 42467
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42468
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 42469
    or-int/lit8 v2, v2, 0x4

    .line 42471
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42472
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 42473
    or-int/lit8 v2, v2, 0x8

    .line 42475
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$58902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42476
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 42477
    or-int/lit8 v2, v2, 0x10

    .line 42479
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$59002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42480
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->access$59102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;I)I

    .line 42481
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42416
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42417
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42418
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42420
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42422
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42424
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42425
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42426
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42427
    return-object p0
.end method

.method public clearInviteClientId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42585
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42586
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviteClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42588
    return-object p0
.end method

.method public clearInviterJid()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42694
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42696
    return-object p0
.end method

.method public clearInviterMucJid()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42657
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42658
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterMucJid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42660
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42621
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42622
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42624
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42741
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42743
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42744
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3

    .prologue
    .line 42431
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
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42400
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 42435
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInviteClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42566
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42567
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42568
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42569
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42572
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
    .line 42674
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42675
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42676
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42677
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42680
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
    .line 42638
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42639
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42640
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42641
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42644
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
    .line 42602
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42603
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42604
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42605
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42608
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
    .line 42710
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInviteClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42563
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
    .line 42671
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
    .line 42635
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
    .line 42599
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
    .line 42707
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
    .line 42400
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

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
    .line 42400
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
    .line 42513
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42514
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 42519
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42521
    :sswitch_d
    return-object p0

    .line 42526
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 42531
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 42536
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    goto :goto_0

    .line 42541
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 42542
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 42543
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 42545
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42546
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    goto :goto_0

    .line 42550
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42551
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    goto :goto_0

    .line 42514
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
    .line 42485
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42501
    :cond_6
    :goto_6
    return-object p0

    .line 42486
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasInviteClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42487
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviteClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviteClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42489
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 42490
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42492
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasInviterMucJid()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 42493
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviterMucJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42495
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasInviterJid()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 42496
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviterJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 42498
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42499
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 42729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 42731
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42737
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42738
    return-object p0

    .line 42734
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setInviteClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42576
    if-nez p1, :cond_8

    .line 42577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42579
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42580
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviteClientId_:Ljava/lang/Object;

    .line 42582
    return-object p0
.end method

.method public setInviterJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42684
    if-nez p1, :cond_8

    .line 42685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42687
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42688
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterJid_:Ljava/lang/Object;

    .line 42690
    return-object p0
.end method

.method public setInviterMucJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42648
    if-nez p1, :cond_8

    .line 42649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42651
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42652
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->inviterMucJid_:Ljava/lang/Object;

    .line 42654
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42612
    if-nez p1, :cond_8

    .line 42613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42615
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42616
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 42618
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 42723
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42725
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42726
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42713
    if-nez p1, :cond_8

    .line 42714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42716
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42718
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->bitField0_:I

    .line 42719
    return-object p0
.end method
