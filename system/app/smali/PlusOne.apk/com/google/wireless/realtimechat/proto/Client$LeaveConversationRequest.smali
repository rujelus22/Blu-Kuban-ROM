.class public final Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeaveConversationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23449
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 23450
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->initFields()V

    .line 23451
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22979
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23072
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedIsInitialized:B

    .line 23095
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedSerializedSize:I

    .line 22980
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22974
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23072
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedIsInitialized:B

    .line 23095
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedSerializedSize:I

    .line 22981
    return-void
.end method

.method static synthetic access$31402(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22974
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31502(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22974
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$31602(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22974
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31702(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22974
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23014
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;

    .line 23015
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23016
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23018
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;

    .line 23021
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 1

    .prologue
    .line 22985
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23056
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;

    .line 23057
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23058
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23060
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;

    .line 23063
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
    .line 23068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;

    .line 23069
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;

    .line 23071
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 1

    .prologue
    .line 23191
    #calls: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->access$31200()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23194
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23000
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;

    .line 23001
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23002
    check-cast v1, Ljava/lang/String;

    .line 23010
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23004
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23006
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23007
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23008
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23010
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22974
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 22989
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23042
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;

    .line 23043
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23044
    check-cast v1, Ljava/lang/String;

    .line 23052
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23046
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23048
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23049
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23050
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23052
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 23097
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedSerializedSize:I

    .line 23098
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 23114
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 23100
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 23101
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1a

    .line 23102
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23105
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_29

    .line 23106
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23109
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_37

    .line 23110
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23113
    :cond_37
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 23114
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 23032
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22997
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

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
    .line 23039
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

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
    .line 23029
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

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

    .line 23074
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedIsInitialized:B

    .line 23075
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23078
    :goto_8
    return v1

    .line 23075
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23077
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->memoizedIsInitialized:B

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
    .line 23121
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 23083
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getSerializedSize()I

    .line 23084
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 23085
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23087
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_20

    .line 23088
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23090
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2c

    .line 23091
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23093
    :cond_2c
    return-void
.end method
