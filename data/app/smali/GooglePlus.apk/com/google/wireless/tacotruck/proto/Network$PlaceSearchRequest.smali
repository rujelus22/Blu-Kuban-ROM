.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceSearchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private query_:Ljava/lang/Object;

.field private searchRadius_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27257
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    .line 27258
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->initFields()V

    .line 27259
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26812
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26883
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedIsInitialized:B

    .line 26912
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedSerializedSize:I

    .line 26813
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26807
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26883
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedIsInitialized:B

    .line 26912
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedSerializedSize:I

    .line 26814
    return-void
.end method

.method static synthetic access$37302(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26807
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object p1
.end method

.method static synthetic access$37402(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26807
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37502(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26807
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I

    return p1
.end method

.method static synthetic access$37602(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26807
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 1

    .prologue
    .line 26818
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    return-object v0
.end method

.method private getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26857
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;

    .line 26858
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26859
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26861
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;

    .line 26864
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
    .line 26879
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;

    .line 26881
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I

    .line 26882
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 1

    .prologue
    .line 27008
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->access$37100()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27011
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26807
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 2

    .prologue
    .line 26822
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 26833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26843
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;

    .line 26844
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26845
    check-cast v1, Ljava/lang/String;

    .line 26853
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26847
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26849
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26850
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26851
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26853
    goto :goto_8
.end method

.method public getSearchRadius()I
    .registers 2

    .prologue
    .line 26875
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedSerializedSize:I

    .line 26915
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 26931
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 26917
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 26918
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 26919
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26922
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 26923
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26926
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 26927
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26930
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 26931
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26830
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 26840
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

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

.method public hasSearchRadius()Z
    .registers 3

    .prologue
    .line 26872
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26885
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedIsInitialized:B

    .line 26886
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 26895
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 26886
    goto :goto_9

    .line 26888
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasPosition()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 26889
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 26890
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 26891
    goto :goto_9

    .line 26894
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26807
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 27009
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26807
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 27013
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

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
    .line 26938
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

    .line 26900
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getSerializedSize()I

    .line 26901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 26902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26904
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 26905
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26907
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 26908
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 26910
    :cond_2a
    return-void
.end method
