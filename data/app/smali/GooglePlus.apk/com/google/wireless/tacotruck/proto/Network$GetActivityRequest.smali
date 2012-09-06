.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivityRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private fetchReadState_:Z

.field private idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5342
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    .line 5343
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->initFields()V

    .line 5344
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4712
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4832
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    .line 4861
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    .line 4713
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4714
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4832
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    .line 4861
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    .line 4714
    return-void
.end method

.method static synthetic access$6200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4707
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    return p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->fetchReadState_:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4707
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4707
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 1

    .prologue
    .line 4718
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4826
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4827
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4828
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    .line 4829
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->fetchReadState_:Z

    .line 4830
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    .line 4831
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 1

    .prologue
    .line 4975
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->access$6000()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4978
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4778
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getActivityIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4772
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 4798
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 2

    .prologue
    .line 4722
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    return-object v0
.end method

.method public getFetchReadState()Z
    .registers 2

    .prologue
    .line 4808
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->fetchReadState_:Z

    return v0
.end method

.method public getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object v0
.end method

.method public getObfuscatedOwnerId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedOwnerIdCount()I
    .registers 2

    .prologue
    .line 4819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getObfuscatedOwnerIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 4863
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    .line 4864
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 4898
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 4866
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 4868
    const/4 v0, 0x0

    .line 4869
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 4870
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 4869
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4873
    :cond_22
    add-int/2addr v2, v0

    .line 4874
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getActivityIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4876
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    .line 4877
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->getNumber()I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4880
    :cond_40
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_4e

    .line 4881
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4884
    :cond_4e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_5b

    .line 4885
    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->fetchReadState_:Z

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4889
    :cond_5b
    const/4 v0, 0x0

    .line 4890
    const/4 v1, 0x0

    :goto_5d
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_73

    .line 4891
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 4890
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 4894
    :cond_73
    add-int/2addr v2, v0

    .line 4895
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getObfuscatedOwnerIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4897
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 4898
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 4795
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

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

.method public hasFetchReadState()Z
    .registers 3

    .prologue
    .line 4805
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

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

.method public hasIdType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4785
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

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

    .line 4834
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    .line 4835
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4838
    :goto_8
    return v1

    .line 4835
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4837
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 4976
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4707
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 4980
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

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
    .line 4905
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4843
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getSerializedSize()I

    .line 4844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 4845
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4844
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4847
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2a

    .line 4848
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4850
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_36

    .line 4851
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4853
    :cond_36
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 4854
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->fetchReadState_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4856
    :cond_41
    const/4 v0, 0x0

    :goto_42
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 4857
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->obfuscatedOwnerId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4856
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 4859
    :cond_57
    return-void
.end method
