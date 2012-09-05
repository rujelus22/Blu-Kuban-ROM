.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationPreferenceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20643
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 20644
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->initFields()V

    .line 20645
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20145
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20285
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedIsInitialized:B

    .line 20308
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedSerializedSize:I

    .line 20146
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20140
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20147
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20285
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedIsInitialized:B

    .line 20308
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedSerializedSize:I

    .line 20147
    return-void
.end method

.method static synthetic access$27302(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20140
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20140
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27502(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20140
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27602(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20140
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20269
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;

    .line 20270
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20271
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20273
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;

    .line 20276
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 1

    .prologue
    .line 20151
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20237
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;

    .line 20238
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20239
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20241
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;

    .line 20244
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
    .line 20281
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;

    .line 20283
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;

    .line 20284
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 1

    .prologue
    .line 20404
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->access$27100()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20407
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20255
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;

    .line 20256
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20257
    check-cast v1, Ljava/lang/String;

    .line 20265
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20259
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20261
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20262
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20263
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20265
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20140
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 20155
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20223
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;

    .line 20224
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20225
    check-cast v1, Ljava/lang/String;

    .line 20233
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20227
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20229
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20230
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20231
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20233
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 20310
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedSerializedSize:I

    .line 20311
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 20327
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 20313
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 20314
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 20315
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20318
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 20319
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20322
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 20323
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20326
    :cond_3b
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 20327
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    .registers 2

    .prologue
    .line 20213
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 20252
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 20220
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20210
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 20287
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedIsInitialized:B

    .line 20288
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 20291
    :goto_8
    return v1

    .line 20288
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 20290
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->memoizedIsInitialized:B

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
    .line 20334
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 20296
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getSerializedSize()I

    .line 20297
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 20298
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 20300
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 20301
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20303
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 20304
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20306
    :cond_30
    return-void
.end method
