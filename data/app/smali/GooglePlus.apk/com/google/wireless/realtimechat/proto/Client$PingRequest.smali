.class public final Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30241
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 30242
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->initFields()V

    .line 30243
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29887
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29947
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedIsInitialized:B

    .line 29967
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedSerializedSize:I

    .line 29888
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29882
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29889
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29947
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedIsInitialized:B

    .line 29967
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedSerializedSize:I

    .line 29889
    return-void
.end method

.method static synthetic access$41202(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29882
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$41302(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29882
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41402(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29882
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 1

    .prologue
    .line 29893
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29932
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;

    .line 29933
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29934
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29936
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;

    .line 29939
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
    .line 29944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->timestamp_:J

    .line 29945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;

    .line 29946
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 1

    .prologue
    .line 30059
    #calls: Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->access$41000()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30062
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29882
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 29897
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29918
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;

    .line 29919
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29920
    check-cast v1, Ljava/lang/String;

    .line 29928
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29922
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29924
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29925
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29926
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29928
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 29969
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedSerializedSize:I

    .line 29970
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 29982
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 29972
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 29973
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 29974
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29977
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_26

    .line 29978
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29981
    :cond_26
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 29982
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 29908
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->timestamp_:J

    return-wide v0
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 29915
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

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

    .line 29905
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

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

    .line 29949
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedIsInitialized:B

    .line 29950
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 29953
    :goto_8
    return v1

    .line 29950
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 29952
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29882
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 2

    .prologue
    .line 30060
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29882
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 2

    .prologue
    .line 30064
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

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
    .line 29989
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

    .line 29958
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getSerializedSize()I

    .line 29959
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 29960
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29962
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1d

    .line 29963
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29965
    :cond_1d
    return-void
.end method
