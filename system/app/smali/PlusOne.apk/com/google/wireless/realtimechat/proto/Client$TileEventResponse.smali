.class public final Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TileEventResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TileEventResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5457
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 5458
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->initFields()V

    .line 5459
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5043
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5114
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedIsInitialized:B

    .line 5137
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedSerializedSize:I

    .line 5044
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5038
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5045
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5114
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedIsInitialized:B

    .line 5137
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedSerializedSize:I

    .line 5045
    return-void
.end method

.method static synthetic access$6702(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5038
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5038
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5038
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$7002(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5038
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 1

    .prologue
    .line 5049
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5088
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;

    .line 5089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;

    .line 5095
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
    .line 5110
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 5111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;

    .line 5112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->timestamp_:J

    .line 5113
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 1

    .prologue
    .line 5233
    #calls: Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->access$6500()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5236
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5038
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 5053
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5074
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;

    .line 5075
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5076
    check-cast v1, Ljava/lang/String;

    .line 5084
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5078
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5080
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5081
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5082
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5084
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedSerializedSize:I

    .line 5140
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 5156
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 5142
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 5143
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 5144
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5147
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 5148
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5151
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 5152
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->timestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5155
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 5156
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 5064
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 5106
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 5071
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5061
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

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
    .line 5103
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

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

    .line 5116
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedIsInitialized:B

    .line 5117
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5120
    :goto_8
    return v1

    .line 5117
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5119
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->memoizedIsInitialized:B

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
    .line 5163
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

    .line 5125
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getSerializedSize()I

    .line 5126
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 5127
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5129
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 5130
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5132
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 5133
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5135
    :cond_2e
    return-void
.end method
