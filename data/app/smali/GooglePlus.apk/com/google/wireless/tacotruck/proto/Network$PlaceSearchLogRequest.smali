.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceSearchLogRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private query_:Ljava/lang/Object;

.field private searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28222
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    .line 28223
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->initFields()V

    .line 28224
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27842
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27902
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedIsInitialized:B

    .line 27922
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedSerializedSize:I

    .line 27843
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27837
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27844
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27902
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedIsInitialized:B

    .line 27922
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedSerializedSize:I

    .line 27844
    return-void
.end method

.method static synthetic access$38702(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27837
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38802(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27837
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object p1
.end method

.method static synthetic access$38902(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27837
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    .registers 1

    .prologue
    .line 27848
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    return-object v0
.end method

.method private getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27877
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;

    .line 27878
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27879
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27881
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;

    .line 27884
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
    .line 27899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;

    .line 27900
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27901
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 1

    .prologue
    .line 28014
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->access$38500()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28017
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27837
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;
    .registers 2

    .prologue
    .line 27852
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27863
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;

    .line 27864
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27865
    check-cast v1, Ljava/lang/String;

    .line 27873
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27867
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27869
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27870
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27871
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->query_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27873
    goto :goto_8
.end method

.method public getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2

    .prologue
    .line 27895
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27924
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedSerializedSize:I

    .line 27925
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 27937
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 27927
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 27928
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 27929
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27932
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 27933
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27936
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 27937
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27860
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearchEvent()Z
    .registers 3

    .prologue
    .line 27892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

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

    .line 27904
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedIsInitialized:B

    .line 27905
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 27908
    :goto_8
    return v1

    .line 27905
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 27907
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27837
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 2

    .prologue
    .line 28015
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27837
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;
    .registers 2

    .prologue
    .line 28019
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest$Builder;

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
    .line 27944
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

    .line 27913
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getSerializedSize()I

    .line 27914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 27915
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27917
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 27918
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogRequest;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 27920
    :cond_1d
    return-void
.end method
