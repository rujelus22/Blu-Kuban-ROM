.class public final Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReshareData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private originalActivityId_:Ljava/lang/Object;

.field private originalAuthorGaiaId_:J

.field private resharingUserId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9364
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 9365
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->initFields()V

    .line 9366
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8907
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8982
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    .line 9005
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    .line 8908
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8902
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8909
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8982
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    .line 9005
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    .line 8909
    return-void
.end method

.method static synthetic access$11802(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8902
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8902
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$12000(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8902
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8902
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 1

    .prologue
    .line 8913
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method private getOriginalActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8942
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8943
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8944
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8946
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8949
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
    .line 8978
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    .line 8980
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    .line 8981
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 1

    .prologue
    .line 9106
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->access$11600()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9109
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8902
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 8917
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method public getOriginalActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8928
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8929
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8930
    check-cast v1, Ljava/lang/String;

    .line 8938
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8932
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8934
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8935
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8936
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8938
    goto :goto_8
.end method

.method public getOriginalAuthorGaiaId()J
    .registers 3

    .prologue
    .line 8960
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    return-wide v0
.end method

.method public getResharingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 8974
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResharingUserIdCount()I
    .registers 2

    .prologue
    .line 8971
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResharingUserIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 9007
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    .line 9008
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 9029
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 9010
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 9011
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 9012
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9015
    :cond_19
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_26

    .line 9016
    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9020
    :cond_26
    const/4 v0, 0x0

    .line 9021
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_44

    .line 9022
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 9021
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 9025
    :cond_44
    add-int/2addr v2, v0

    .line 9026
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getResharingUserIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9028
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    move v3, v2

    .line 9029
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public hasOriginalActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8925
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOriginalAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 8957
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

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

    .line 8984
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    .line 8985
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8988
    :goto_8
    return v1

    .line 8985
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8987
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8902
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2

    .prologue
    .line 9107
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8902
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2

    .prologue
    .line 9111
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

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
    .line 9036
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8993
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getSerializedSize()I

    .line 8994
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 8995
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8997
    :cond_12
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1d

    .line 8998
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9000
    :cond_1d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 9001
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9000
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 9003
    :cond_39
    return-void
.end method
