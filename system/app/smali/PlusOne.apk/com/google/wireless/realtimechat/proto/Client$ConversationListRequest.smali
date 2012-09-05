.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationListRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24466
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 24467
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->initFields()V

    .line 24468
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23921
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24066
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedIsInitialized:B

    .line 24092
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedSerializedSize:I

    .line 23922
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23916
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24066
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedIsInitialized:B

    .line 24092
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedSerializedSize:I

    .line 23923
    return-void
.end method

.method static synthetic access$32802(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23916
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$32902(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23916
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33002(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23916
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    return-object p1
.end method

.method static synthetic access$33102(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23916
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33202(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23916
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24049
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;

    .line 24050
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24051
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24053
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;

    .line 24056
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 1

    .prologue
    .line 23927
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24007
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;

    .line 24008
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24009
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24011
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;

    .line 24014
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
    .registers 3

    .prologue
    .line 24061
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->timestamp_:J

    .line 24062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;

    .line 24063
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 24064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;

    .line 24065
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 1

    .prologue
    .line 24192
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->access$32600()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24195
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24035
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;

    .line 24036
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24037
    check-cast v1, Ljava/lang/String;

    .line 24045
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24039
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24041
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24042
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24043
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24045
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23916
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 23931
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23993
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;

    .line 23994
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23995
    check-cast v1, Ljava/lang/String;

    .line 24003
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23997
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23999
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24000
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24001
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24003
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 24094
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedSerializedSize:I

    .line 24095
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 24115
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 24097
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 24098
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 24099
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 24102
    :cond_18
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_27

    .line 24103
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24106
    :cond_27
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_39

    .line 24107
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 24110
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 24111
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24114
    :cond_4a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 24115
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 23983
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    .registers 2

    .prologue
    .line 24025
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 24032
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 23990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23980
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 24022
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 24068
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedIsInitialized:B

    .line 24069
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24072
    :goto_8
    return v1

    .line 24069
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24071
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 24122
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 24077
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getSerializedSize()I

    .line 24078
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 24079
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 24081
    :cond_11
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1e

    .line 24082
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24084
    :cond_1e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2e

    .line 24085
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24087
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 24088
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24090
    :cond_3d
    return-void
.end method
