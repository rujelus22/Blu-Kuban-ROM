.class public final Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChatMessageRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private content_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageClientId_:Ljava/lang/Object;

.field private retry_:Z

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 705
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 706
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->initFields()V

    .line 707
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 167
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedIsInitialized:B

    .line 196
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 167
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedIsInitialized:B

    .line 196
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedSerializedSize:I

    .line 43
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->retry_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;

    .line 109
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 110
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 112
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;

    .line 115
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method private getMessageClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;

    .line 77
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 78
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 80
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;

    .line 83
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
    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->retry_:Z

    .line 165
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 166
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 1

    .prologue
    .line 300
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->access$100()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 303
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 3
    .parameter "index"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method public getContentCount()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    return-object v0
.end method

.method public getContentOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;

    return-object v0
.end method

.method public getContentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;

    .line 95
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 104
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 98
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 100
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 102
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 104
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;

    .line 63
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 64
    check-cast v1, Ljava/lang/String;

    .line 72
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 66
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 68
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 70
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 72
    goto :goto_8
.end method

.method public getRetry()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->retry_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 198
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedSerializedSize:I

    .line 199
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 223
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 201
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 202
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 203
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 206
    :cond_1a
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 207
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 210
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 211
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 214
    :cond_43
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 215
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->retry_:Z

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 218
    :cond_50
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_60

    .line 219
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 222
    :cond_60
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 223
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

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

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 59
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRetry()Z
    .registers 3

    .prologue
    .line 144
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

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
    .line 154
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedIsInitialized:B

    .line 170
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 173
    :goto_8
    return v1

    .line 170
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 172
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 301
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 305
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

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
    .line 230
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

    .line 178
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getSerializedSize()I

    .line 179
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 180
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 182
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 183
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 185
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 186
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 188
    :cond_38
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 189
    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->retry_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 191
    :cond_43
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_51

    .line 192
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 194
    :cond_51
    return-void
.end method
