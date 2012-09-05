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

.field private idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4997
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    .line 4998
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->initFields()V

    .line 4999
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4526
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4620
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    .line 4643
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    .line 4527
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4521
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4528
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4620
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    .line 4643
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    .line 4528
    return-void
.end method

.method static synthetic access$6000(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4521
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4521
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4521
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4521
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 1

    .prologue
    .line 4532
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4616
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 4617
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    .line 4619
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    .registers 1

    .prologue
    .line 4744
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;->access$5800()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4592
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 4589
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
    .line 4586
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 4612
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
    .registers 2

    .prologue
    .line 4536
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;

    return-object v0
.end method

.method public getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 4645
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    .line 4646
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 4667
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 4648
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 4650
    const/4 v0, 0x0

    .line 4651
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_21

    .line 4652
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 4651
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4655
    :cond_21
    add-int/2addr v2, v0

    .line 4656
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getActivityIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4658
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    .line 4659
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->getNumber()I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4662
    :cond_3f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_4d

    .line 4663
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4666
    :cond_4d
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 4667
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 4609
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

.method public hasIdType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4599
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

    .line 4622
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

    .line 4623
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4626
    :goto_8
    return v1

    .line 4623
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4625
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->memoizedIsInitialized:B

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
    .line 4674
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

    .line 4631
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->getSerializedSize()I

    .line 4632
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 4633
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4632
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4635
    :cond_1a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 4636
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->idType_:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4638
    :cond_29
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 4639
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;->collapsedDataOnly_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4641
    :cond_35
    return-void
.end method
