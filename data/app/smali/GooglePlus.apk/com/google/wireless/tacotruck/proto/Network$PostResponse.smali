.class public final Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private albumId_:J

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14178
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    .line 14179
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->initFields()V

    .line 14180
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13734
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13827
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    .line 13850
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    .line 13735
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13729
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13827
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    .line 13850
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    .line 13736
    return-void
.end method

.method static synthetic access$18002(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13729
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18102(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13729
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$18202(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13729
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13729
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13769
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13770
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13771
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13773
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13776
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

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13811
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13812
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13813
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13815
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13818
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 1

    .prologue
    .line 13740
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 13823
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13824
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    .line 13825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13826
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 1

    .prologue
    .line 13946
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->access$17800()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13949
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13882
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->access$17700(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13755
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13756
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13757
    check-cast v1, Ljava/lang/String;

    .line 13765
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13759
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13761
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13762
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13763
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13765
    goto :goto_8
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 13787
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    return-wide v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13797
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13798
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13799
    check-cast v1, Ljava/lang/String;

    .line 13807
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13801
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13803
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13804
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13805
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13807
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13729
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 2

    .prologue
    .line 13744
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13852
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    .line 13853
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13869
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13855
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13856
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 13857
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13860
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 13861
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13864
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 13865
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13868
    :cond_37
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 13869
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13752
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 13784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 13794
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 13829
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    .line 13830
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13833
    :goto_8
    return v1

    .line 13830
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13832
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13729
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 2

    .prologue
    .line 13947
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13729
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 2

    .prologue
    .line 13951
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

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
    .line 13876
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

    .line 13838
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getSerializedSize()I

    .line 13839
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 13840
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13842
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 13843
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13845
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 13846
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13848
    :cond_2c
    return-void
.end method
