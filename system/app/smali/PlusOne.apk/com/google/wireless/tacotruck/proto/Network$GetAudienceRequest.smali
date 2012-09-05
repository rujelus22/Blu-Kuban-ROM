.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAudienceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19200
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    .line 19201
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->initFields()V

    .line 19202
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18899
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18948
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    .line 18965
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    .line 18900
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18894
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18901
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18948
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    .line 18965
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    .line 18901
    return-void
.end method

.method static synthetic access$25902(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18894
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26002(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18894
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18934
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 18935
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18936
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18938
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 18941
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 1

    .prologue
    .line 18905
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 18946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 18947
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 1

    .prologue
    .line 19053
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->access$25700()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18920
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 18921
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18922
    check-cast v1, Ljava/lang/String;

    .line 18930
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18924
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18926
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18927
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18928
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18930
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18894
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 2

    .prologue
    .line 18909
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 18967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    .line 18968
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 18976
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 18970
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 18971
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 18972
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18975
    :cond_18
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 18976
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18917
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

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

    .line 18950
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    .line 18951
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 18954
    :goto_8
    return v1

    .line 18951
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 18953
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

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
    .line 18983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 18959
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getSerializedSize()I

    .line 18960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 18961
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18963
    :cond_11
    return-void
.end method
