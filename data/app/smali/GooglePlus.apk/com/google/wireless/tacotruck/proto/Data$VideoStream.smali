.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private formatId_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamUrl_:Ljava/lang/Object;

.field private videoHeight_:I

.field private videoWidth_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16462
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    .line 16463
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->initFields()V

    .line 16464
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15946
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16084
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    .line 16110
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    .line 15947
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15941
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15948
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16084
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    .line 16110
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    .line 15948
    return-void
.end method

.method static synthetic access$21602(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15941
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21702(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15941
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    return p1
.end method

.method static synthetic access$21802(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15941
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    return p1
.end method

.method static synthetic access$21902(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15941
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    return p1
.end method

.method static synthetic access$22002(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15941
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 1

    .prologue
    .line 15952
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method private getStreamUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16037
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 16038
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16039
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16041
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 16044
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
    const/4 v1, 0x0

    .line 16079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 16080
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    .line 16081
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    .line 16082
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    .line 16083
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 1

    .prologue
    .line 16210
    #calls: Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->access$21400()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16213
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15941
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 2

    .prologue
    .line 15956
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method public getFormatId()I
    .registers 2

    .prologue
    .line 16075
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16112
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    .line 16113
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 16133
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 16115
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 16116
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 16117
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16120
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 16121
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16124
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 16125
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16128
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 16129
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16132
    :cond_44
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    move v1, v0

    .line 16133
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16023
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 16024
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16025
    check-cast v1, Ljava/lang/String;

    .line 16033
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16027
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16029
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16030
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16031
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16033
    goto :goto_8
.end method

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 16065
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 16055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    return v0
.end method

.method public hasFormatId()Z
    .registers 3

    .prologue
    .line 16072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

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

.method public hasStreamUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16020
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVideoHeight()Z
    .registers 3

    .prologue
    .line 16062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

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

.method public hasVideoWidth()Z
    .registers 3

    .prologue
    .line 16052
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

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

    .line 16086
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    .line 16087
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 16090
    :goto_8
    return v1

    .line 16087
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 16089
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15941
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 16211
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15941
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 16215
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

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
    .line 16140
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

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 16095
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getSerializedSize()I

    .line 16096
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 16097
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16099
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 16100
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16102
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 16103
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16105
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 16106
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16108
    :cond_37
    return-void
.end method
