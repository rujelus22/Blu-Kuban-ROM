.class public final Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$InviteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$InviteResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private participantError_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation
.end field

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19794
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19945
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 19990
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 20026
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    .line 19795
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->maybeForceBuilderInitialization()V

    .line 19796
    return-void
.end method

.method static synthetic access$26300()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 1

    .prologue
    .line 19789
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 1

    .prologue
    .line 19801
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureParticipantErrorIsMutable()V
    .registers 3

    .prologue
    .line 20029
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 20030
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    .line 20031
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 20033
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19799
    return-void
.end method


# virtual methods
.method public addAllParticipantError(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 20096
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20097
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20099
    return-object p0
.end method

.method public addParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20089
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20090
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20092
    return-object p0
.end method

.method public addParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20072
    if-nez p2, :cond_8

    .line 20073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20075
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20076
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20078
    return-object p0
.end method

.method public addParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 20082
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20083
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20085
    return-object p0
.end method

.method public addParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20062
    if-nez p1, :cond_8

    .line 20063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20065
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20066
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20068
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 3

    .prologue
    .line 19826
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    .line 19827
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19828
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19830
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 6

    .prologue
    .line 19844
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 19845
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19846
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19847
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19848
    or-int/lit8 v2, v2, 0x1

    .line 19850
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26502(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 19851
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 19852
    or-int/lit8 v2, v2, 0x2

    .line 19854
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26602(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;J)J

    .line 19855
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 19856
    or-int/lit8 v2, v2, 0x4

    .line 19858
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26702(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19859
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 19860
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    .line 19861
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19863
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26802(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Ljava/util/List;)Ljava/util/List;

    .line 19864
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26902(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;I)I

    .line 19865
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3

    .prologue
    .line 19805
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19806
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 19807
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19808
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->timestamp_:J

    .line 19809
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 19811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19812
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    .line 19813
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19814
    return-object p0
.end method

.method public clearParticipantError()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 2

    .prologue
    .line 20102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    .line 20103
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 20105
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 2

    .prologue
    .line 20014
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 20015
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 20017
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 2

    .prologue
    .line 19962
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19963
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 19965
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3

    .prologue
    .line 19983
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19984
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->timestamp_:J

    .line 19986
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3

    .prologue
    .line 19818
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

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
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19789
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 19822
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantError(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 3
    .parameter "index"

    .prologue
    .line 20042
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getParticipantErrorCount()I
    .registers 2

    .prologue
    .line 20039
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantErrorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20036
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19995
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 19996
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19997
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19998
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 20001
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
    .line 19950
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 19974
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 19992
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

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

    .line 19947
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

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
    .line 19971
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

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
    .line 19789
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

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
    .line 19789
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19901
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 19902
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 19907
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19909
    :sswitch_d
    return-object p0

    .line 19914
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 19915
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 19916
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 19917
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19918
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 19923
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19924
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 19928
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v1

    .line 19929
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19930
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->addParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    goto :goto_0

    .line 19934
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    :sswitch_3d
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 19902
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x2a -> :sswitch_3d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 19869
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19889
    :cond_6
    :goto_6
    return-object p0

    .line 19870
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19871
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 19873
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19874
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 19876
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19877
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 19879
    :cond_2e
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26800(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 19880
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 19881
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26800(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    .line 19882
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 19884
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 19885
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->access$26800(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20056
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20057
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20059
    return-object p0
.end method

.method public setParticipantError(ILcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20046
    if-nez p2, :cond_8

    .line 20047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20049
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->ensureParticipantErrorIsMutable()V

    .line 20050
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20052
    return-object p0
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20005
    if-nez p1, :cond_8

    .line 20006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20008
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 20009
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 20011
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19953
    if-nez p1, :cond_8

    .line 19954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19956
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19957
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 19959
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19977
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->bitField0_:I

    .line 19978
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->timestamp_:J

    .line 19980
    return-object p0
.end method
