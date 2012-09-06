.class public final Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiptRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;,
        Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private receiptInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
            ">;"
        }
    .end annotation
.end field

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10430
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 10431
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->initFields()V

    .line 10432
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9562
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9991
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedIsInitialized:B

    .line 10014
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedSerializedSize:I

    .line 9563
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9557
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9991
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedIsInitialized:B

    .line 10014
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedSerializedSize:I

    .line 9564
    return-void
.end method

.method static synthetic access$13802(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9557
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13900(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9557
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9557
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9557
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9557
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9944
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;

    .line 9945
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9946
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9948
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;

    .line 9951
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 1

    .prologue
    .line 9568
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;

    .line 9988
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    .line 9989
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 9990
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 1

    .prologue
    .line 10110
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->access$13600()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10113
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9930
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;

    .line 9931
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9932
    check-cast v1, Ljava/lang/String;

    .line 9940
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9934
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9936
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9937
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9938
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9940
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9557
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 9572
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReceiptInfo(I)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 9969
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    return-object v0
.end method

.method public getReceiptInfoCount()I
    .registers 2

    .prologue
    .line 9966
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReceiptInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9959
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getReceiptInfoOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 9973
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;

    return-object v0
.end method

.method public getReceiptInfoOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9963
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10016
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedSerializedSize:I

    .line 10017
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 10033
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 10019
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 10020
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_19

    .line 10021
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10024
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 10025
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10024
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 10028
    :cond_32
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 10029
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10032
    :cond_40
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 10033
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 9983
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9927
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 9980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

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

    .line 9993
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedIsInitialized:B

    .line 9994
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 9997
    :goto_8
    return v1

    .line 9994
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 9996
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9557
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2

    .prologue
    .line 10111
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9557
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2

    .prologue
    .line 10115
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

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
    .line 10040
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

    .line 10002
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getSerializedSize()I

    .line 10003
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 10004
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10006
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 10007
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10006
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 10009
    :cond_29
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 10010
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10012
    :cond_35
    return-void
.end method
