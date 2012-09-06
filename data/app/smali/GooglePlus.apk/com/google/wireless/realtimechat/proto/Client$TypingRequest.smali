.class public final Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8661
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 8662
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->initFields()V

    .line 8663
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8221
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8292
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedIsInitialized:B

    .line 8315
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedSerializedSize:I

    .line 8222
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8216
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8292
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedIsInitialized:B

    .line 8315
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedSerializedSize:I

    .line 8223
    return-void
.end method

.method static synthetic access$11202(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8216
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8216
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8216
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8216
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8266
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;

    .line 8267
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8268
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8270
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;

    .line 8273
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 1

    .prologue
    .line 8227
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8288
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;

    .line 8290
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8291
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 1

    .prologue
    .line 8411
    #calls: Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->access$11000()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8414
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8252
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;

    .line 8253
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8254
    check-cast v1, Ljava/lang/String;

    .line 8262
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8256
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8258
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8259
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8260
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8262
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8216
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 8231
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8317
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedSerializedSize:I

    .line 8318
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8334
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8320
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8321
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 8322
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8325
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 8326
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8329
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 8330
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8333
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 8334
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 8284
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2

    .prologue
    .line 8242
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 8249
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

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
    .line 8281
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8239
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

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

    .line 8294
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedIsInitialized:B

    .line 8295
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8298
    :goto_8
    return v1

    .line 8295
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8297
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8216
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2

    .prologue
    .line 8412
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8216
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2

    .prologue
    .line 8416
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

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
    .line 8341
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

    .line 8303
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getSerializedSize()I

    .line 8304
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 8305
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8307
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 8308
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8310
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 8311
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8313
    :cond_2e
    return-void
.end method
