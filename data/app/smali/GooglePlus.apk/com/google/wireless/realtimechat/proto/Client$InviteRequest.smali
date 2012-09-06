.class public final Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$InviteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InviteRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private senderId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19530
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 19531
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->initFields()V

    .line 19532
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18919
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19034
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedIsInitialized:B

    .line 19060
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedSerializedSize:I

    .line 18920
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18914
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18921
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19034
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedIsInitialized:B

    .line 19060
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedSerializedSize:I

    .line 18921
    return-void
.end method

.method static synthetic access$25702(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18914
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25800(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18914
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25802(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18914
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$25902(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18914
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$26002(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18914
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26102(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18914
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18954
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;

    .line 18955
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18956
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18958
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;

    .line 18961
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 1

    .prologue
    .line 18925
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19017
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;

    .line 19018
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19019
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19021
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;

    .line 19024
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 19029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;

    .line 19030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    .line 19031
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 19032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;

    .line 19033
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 1

    .prologue
    .line 19160
    #calls: Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->access$25500()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 19163
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18940
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;

    .line 18941
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18942
    check-cast v1, Ljava/lang/String;

    .line 18950
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18944
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18946
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18947
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18948
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18950
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18914
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 18929
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 18979
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 18976
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18969
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipantOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 18983
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;

    return-object v0
.end method

.method public getParticipantOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18973
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19003
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;

    .line 19004
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19005
    check-cast v1, Ljava/lang/String;

    .line 19013
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19007
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19009
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19010
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19011
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19013
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 19062
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedSerializedSize:I

    .line 19063
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 19083
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 19065
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 19066
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_19

    .line 19067
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19070
    :cond_19
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_28

    .line 19071
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19074
    :cond_28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 19075
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19074
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 19078
    :cond_42
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_51

    .line 19079
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19082
    :cond_51
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 19083
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 18993
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18937
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 19000
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

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
    .line 18990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 19036
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedIsInitialized:B

    .line 19037
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 19040
    :goto_8
    return v1

    .line 19037
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 19039
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18914
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19161
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18914
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    .registers 2

    .prologue
    .line 19165
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 19090
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 19045
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getSerializedSize()I

    .line 19046
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 19047
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19049
    :cond_12
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_1f

    .line 19050
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19052
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 19053
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->participant_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19052
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 19055
    :cond_37
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_44

    .line 19056
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19058
    :cond_44
    return-void
.end method
