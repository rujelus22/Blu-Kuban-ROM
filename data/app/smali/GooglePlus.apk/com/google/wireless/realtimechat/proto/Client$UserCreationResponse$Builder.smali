.class public final Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private participantId_:Ljava/lang/Object;

.field private participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29591
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29737
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 29782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    .line 29818
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29592
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 29593
    return-void
.end method

.method static synthetic access$40200()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 1

    .prologue
    .line 29586
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 1

    .prologue
    .line 29598
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29596
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 3

    .prologue
    .line 29623
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    .line 29624
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29625
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29627
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 6

    .prologue
    .line 29641
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 29642
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29643
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29644
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29645
    or-int/lit8 v2, v2, 0x1

    .line 29647
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->access$40402(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 29648
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29649
    or-int/lit8 v2, v2, 0x2

    .line 29651
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->access$40502(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;J)J

    .line 29652
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 29653
    or-int/lit8 v2, v2, 0x4

    .line 29655
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->access$40602(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29656
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 29657
    or-int/lit8 v2, v2, 0x8

    .line 29659
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->access$40702(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29660
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->access$40802(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;I)I

    .line 29661
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3

    .prologue
    .line 29602
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29603
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 29604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->timestamp_:J

    .line 29606
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    .line 29608
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29609
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29610
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29611
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 2

    .prologue
    .line 29854
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29856
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29857
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 2

    .prologue
    .line 29806
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29807
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    .line 29809
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 2

    .prologue
    .line 29754
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29755
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 29757
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3

    .prologue
    .line 29775
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29776
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->timestamp_:J

    .line 29778
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3

    .prologue
    .line 29615
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

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
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 29619
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 29823
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29787
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    .line 29788
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29789
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29790
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    .line 29793
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 29742
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 29766
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasParticipant()Z
    .registers 3

    .prologue
    .line 29820
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    .line 29784
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29739
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 29763
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 29682
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
    .line 29586
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29586
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

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
    .line 29586
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29690
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 29691
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 29696
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29698
    :sswitch_d
    return-object p0

    .line 29703
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 29704
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 29705
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 29706
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29707
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 29712
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29713
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 29717
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29718
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 29722
    :sswitch_3b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 29723
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->hasParticipant()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 29724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 29726
    :cond_4c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29727
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    goto :goto_0

    .line 29691
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 29665
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29678
    :cond_6
    :goto_6
    return-object p0

    .line 29666
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29667
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 29669
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29670
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 29672
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29673
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 29675
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->hasParticipant()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29676
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    goto :goto_6
.end method

.method public mergeParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29844
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29850
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29851
    return-object p0

    .line 29847
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    goto :goto_20
.end method

.method public setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29836
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29839
    return-object p0
.end method

.method public setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29826
    if-nez p1, :cond_8

    .line 29827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29829
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 29831
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29832
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29797
    if-nez p1, :cond_8

    .line 29798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29800
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29801
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->participantId_:Ljava/lang/Object;

    .line 29803
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29745
    if-nez p1, :cond_8

    .line 29746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29748
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29749
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 29751
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29769
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->bitField0_:I

    .line 29770
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->timestamp_:J

    .line 29772
    return-object p0
.end method
