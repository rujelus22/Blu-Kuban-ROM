.class public final Lcom/google/wireless/tacotruck/proto/Data$Mention;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mention"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

.field private static final serialVersionUID:J


# instance fields
.field private aggregateId_:Ljava/lang/Object;

.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private index_:I

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6261
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    .line 6262
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->initFields()V

    .line 6263
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5764
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5868
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    .line 5894
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    .line 5765
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5759
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5766
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5868
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    .line 5894
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    .line 5766
    return-void
.end method

.method static synthetic access$7502(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5759
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    return p1
.end method

.method static synthetic access$7602(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5759
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    return p1
.end method

.method static synthetic access$7702(Lcom/google/wireless/tacotruck/proto/Data$Mention;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5759
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/google/wireless/tacotruck/proto/Data$Mention;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5759
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5759
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    return p1
.end method

.method private getAggregateIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5819
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5820
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5821
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5823
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5826
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 1

    .prologue
    .line 5770
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5851
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;

    .line 5852
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5853
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5855
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;

    .line 5858
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
    const/4 v0, 0x0

    .line 5863
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    .line 5864
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    .line 5865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5866
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;

    .line 5867
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 1

    .prologue
    .line 5994
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->access$7300()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5997
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAggregateId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5805
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5806
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5807
    check-cast v1, Ljava/lang/String;

    .line 5815
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5809
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5811
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5812
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5813
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5815
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 2

    .prologue
    .line 5774
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5837
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;

    .line 5838
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5839
    check-cast v1, Ljava/lang/String;

    .line 5847
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5841
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5843
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5844
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5845
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5847
    goto :goto_8
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 5785
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 5795
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5896
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    .line 5897
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 5917
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 5899
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 5900
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 5901
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5904
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 5905
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5908
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 5909
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5912
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 5913
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5916
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    move v1, v0

    .line 5917
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasAggregateId()Z
    .registers 3

    .prologue
    .line 5802
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

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

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 5834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

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

.method public hasIndex()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5782
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLength()Z
    .registers 3

    .prologue
    .line 5792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

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

    .line 5870
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    .line 5871
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5874
    :goto_8
    return v1

    .line 5871
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5873
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2

    .prologue
    .line 5995
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2

    .prologue
    .line 5999
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

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
    .line 5924
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

    .line 5879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getSerializedSize()I

    .line 5880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 5881
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5883
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 5884
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5886
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 5887
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5889
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 5890
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5892
    :cond_39
    return-void
.end method
