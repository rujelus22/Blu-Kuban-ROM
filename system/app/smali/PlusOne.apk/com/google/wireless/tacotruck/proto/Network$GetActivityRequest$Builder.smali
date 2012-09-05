.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4756
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4893
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4949
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4757
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4758
    return-void
.end method

.method static synthetic access$5800()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 1

    .prologue
    .line 4751
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 1

    .prologue
    .line 4763
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIdIsMutable()V
    .registers 3

    .prologue
    .line 4895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4896
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4897
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4899
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4761
    return-void
.end method


# virtual methods
.method public addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4921
    if-nez p1, :cond_8

    .line 4922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4924
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 4925
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 4927
    return-object p0
.end method

.method public addAllActivityId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 4931
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 4932
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4934
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 3

    .prologue
    .line 4786
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    .line 4787
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4788
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4790
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 6

    .prologue
    .line 4804
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 4805
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4806
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4807
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 4808
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4810
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4812
    :cond_1f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6002(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 4813
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 4814
    or-int/lit8 v2, v2, 0x1

    .line 4816
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6102(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4817
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 4818
    or-int/lit8 v2, v2, 0x2

    .line 4820
    :cond_37
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Z)Z

    .line 4821
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6302(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;I)I

    .line 4822
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 4767
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4768
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4769
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4770
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4771
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    .line 4773
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4774
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 4937
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4938
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4940
    return-object p0
.end method

.method public clearCollapsedDataOnly()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 4987
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    .line 4990
    return-object p0
.end method

.method public clearIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 2

    .prologue
    .line 4966
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4967
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4969
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3

    .prologue
    .line 4778
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4908
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

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
    .line 4902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 4978
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 2

    .prologue
    .line 4782
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object v0
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 4975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

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
    .line 4951
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4751
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4751
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4855
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4856
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 4861
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4863
    :sswitch_d
    return-object p0

    .line 4868
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 4869
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 4873
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4874
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    move-result-object v2

    .line 4875
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    if-eqz v2, :cond_0

    .line 4876
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4877
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    goto :goto_0

    .line 4882
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4883
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    goto :goto_0

    .line 4856
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4843
    :cond_6
    :goto_6
    return-object p0

    .line 4827
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6000(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4828
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4829
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6000(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4830
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4837
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->hasIdType()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4838
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setIdType(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    .line 4840
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->hasCollapsedDataOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4841
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getCollapsedDataOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    goto :goto_6

    .line 4832
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 4833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->access$6000(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setActivityId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4912
    if-nez p2, :cond_8

    .line 4913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4915
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->ensureActivityIdIsMutable()V

    .line 4916
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4918
    return-object p0
.end method

.method public setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4981
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4982
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->collapsedDataOnly_:Z

    .line 4984
    return-object p0
.end method

.method public setIdType(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4957
    if-nez p1, :cond_8

    .line 4958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4960
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->bitField0_:I

    .line 4961
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4963
    return-object p0
.end method
