.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private instanceId_:J

.field private inviteId_:Ljava/lang/Object;

.field private inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field private inviterId_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44507
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 44717
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    .line 44834
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44508
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->maybeForceBuilderInitialization()V

    .line 44509
    return-void
.end method

.method static synthetic access$61300()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 1

    .prologue
    .line 44502
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 1

    .prologue
    .line 44514
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44512
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 3

    .prologue
    .line 44543
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    .line 44544
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 44545
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 44547
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 6

    .prologue
    .line 44561
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 44562
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44563
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 44564
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 44565
    or-int/lit8 v2, v2, 0x1

    .line 44567
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$61502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44568
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 44569
    or-int/lit8 v2, v2, 0x2

    .line 44571
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$61602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44572
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 44573
    or-int/lit8 v2, v2, 0x4

    .line 44575
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$61702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44576
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 44577
    or-int/lit8 v2, v2, 0x8

    .line 44579
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$61802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44580
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 44581
    or-int/lit8 v2, v2, 0x10

    .line 44583
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->instanceId_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->instanceId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$61902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;J)J

    .line 44584
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 44585
    or-int/lit8 v2, v2, 0x20

    .line 44587
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$62002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44588
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->access$62102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;I)I

    .line 44589
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3

    .prologue
    .line 44518
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 44520
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44521
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44522
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44524
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    .line 44526
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->instanceId_:J

    .line 44528
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44529
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44530
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44531
    return-object p0
.end method

.method public clearInstanceId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3

    .prologue
    .line 44827
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44828
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->instanceId_:J

    .line 44830
    return-object p0
.end method

.method public clearInviteId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44706
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 44708
    return-object p0
.end method

.method public clearInviteeStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44734
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44735
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44737
    return-object p0
.end method

.method public clearInviterId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44802
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    .line 44804
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44766
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44768
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44870
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44873
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3

    .prologue
    .line 44535
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

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
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44502
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 44539
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()J
    .registers 3

    .prologue
    .line 44818
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->instanceId_:J

    return-wide v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44686
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 44687
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44688
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44689
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 44692
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

.method public getInviteeStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    .registers 2

    .prologue
    .line 44722
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    return-object v0
.end method

.method public getInviterId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44782
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    .line 44783
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44784
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44785
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    .line 44788
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

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44746
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44747
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44748
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44749
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44752
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
    .line 44839
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInstanceId()Z
    .registers 3

    .prologue
    .line 44815
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

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

.method public hasInviteId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44683
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviteeStatus()Z
    .registers 3

    .prologue
    .line 44719
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

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

.method public hasInviterId()Z
    .registers 3

    .prologue
    .line 44779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 44743
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 44836
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 44616
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
    .line 44502
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44502
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

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
    .line 44502
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44624
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 44625
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_72

    .line 44630
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44632
    :sswitch_d
    return-object p0

    .line 44637
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44638
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    goto :goto_0

    .line 44642
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 44643
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    move-result-object v3

    .line 44644
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    if-eqz v3, :cond_0

    .line 44645
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44646
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    goto :goto_0

    .line 44651
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44652
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 44656
    :sswitch_3b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 44657
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 44658
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 44660
    :cond_4c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 44661
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    goto :goto_0

    .line 44665
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    :sswitch_57
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    goto :goto_0

    .line 44670
    :sswitch_64
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->instanceId_:J

    goto :goto_0

    .line 44625
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_57
        0x30 -> :sswitch_64
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 44593
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 44612
    :cond_6
    :goto_6
    return-object p0

    .line 44594
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->hasInviteId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44595
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 44597
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->hasInviteeStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 44598
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviteeStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInviteeStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 44600
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 44601
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 44603
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->hasInviterId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 44604
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInviterId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 44606
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->hasInstanceId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 44607
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInstanceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInstanceId(J)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 44609
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44610
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 44858
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 44860
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44866
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44867
    return-object p0

    .line 44863
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setInstanceId(J)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 44821
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44822
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->instanceId_:J

    .line 44824
    return-object p0
.end method

.method public setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44696
    if-nez p1, :cond_8

    .line 44697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44699
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44700
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 44702
    return-object p0
.end method

.method public setInviteeStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44725
    if-nez p1, :cond_8

    .line 44726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44728
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44729
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44731
    return-object p0
.end method

.method public setInviterId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44792
    if-nez p1, :cond_8

    .line 44793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44795
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44796
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->inviterId_:Ljava/lang/Object;

    .line 44798
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44756
    if-nez p1, :cond_8

    .line 44757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44759
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44760
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44762
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 44852
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44854
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44855
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44842
    if-nez p1, :cond_8

    .line 44843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44845
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44847
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->bitField0_:I

    .line 44848
    return-object p0
.end method
