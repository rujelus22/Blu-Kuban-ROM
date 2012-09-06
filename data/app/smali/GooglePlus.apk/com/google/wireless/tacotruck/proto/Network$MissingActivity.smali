.class public final Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissingActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6296
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    .line 6297
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->initFields()V

    .line 6298
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5894
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5995
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedIsInitialized:B

    .line 6015
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedSerializedSize:I

    .line 5895
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5889
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5896
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5995
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedIsInitialized:B

    .line 6015
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedSerializedSize:I

    .line 5896
    return-void
.end method

.method static synthetic access$7602(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5889
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5970
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;

    .line 5971
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5972
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5974
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;

    .line 5977
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 1

    .prologue
    .line 5900
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;

    .line 5993
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5994
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 1

    .prologue
    .line 6107
    #calls: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->access$7400()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6110
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5956
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;

    .line 5957
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5958
    check-cast v1, Ljava/lang/String;

    .line 5966
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5960
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5962
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5963
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5964
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5966
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5889
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 2

    .prologue
    .line 5904
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 2

    .prologue
    .line 5988
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6017
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedSerializedSize:I

    .line 6018
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 6030
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 6020
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 6021
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 6022
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6025
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 6026
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6029
    :cond_2a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedSerializedSize:I

    move v1, v0

    .line 6030
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5953
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasErrorCode()Z
    .registers 3

    .prologue
    .line 5985
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

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

    .line 5997
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedIsInitialized:B

    .line 5998
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6001
    :goto_8
    return v1

    .line 5998
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6000
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5889
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 6108
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5889
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 6112
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

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
    .line 6037
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

    .line 6006
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getSerializedSize()I

    .line 6007
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 6008
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6010
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 6011
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6013
    :cond_21
    return-void
.end method
