.class public final Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoverPhotoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private coverPhotoId_:Ljava/lang/Object;

.field private leftOffset_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private topOffset_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2977
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 2978
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->initFields()V

    .line 2979
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2570
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2641
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedIsInitialized:B

    .line 2664
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedSerializedSize:I

    .line 2571
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2565
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;-><init>(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2572
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2641
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedIsInitialized:B

    .line 2664
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedSerializedSize:I

    .line 2572
    return-void
.end method

.method static synthetic access$4002(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2565
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->topOffset_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2565
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->leftOffset_:I

    return p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2565
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    return p1
.end method

.method private getCoverPhotoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2605
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;

    .line 2606
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2607
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2609
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;

    .line 2612
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

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 1

    .prologue
    .line 2576
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;

    .line 2638
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->topOffset_:I

    .line 2639
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->leftOffset_:I

    .line 2640
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 1

    .prologue
    .line 2760
    #calls: Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->access$3800()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2763
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCoverPhotoId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2591
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;

    .line 2592
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2593
    check-cast v1, Ljava/lang/String;

    .line 2601
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2595
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2597
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2598
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2599
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->coverPhotoId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2601
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 2

    .prologue
    .line 2580
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    return-object v0
.end method

.method public getLeftOffset()I
    .registers 2

    .prologue
    .line 2633
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->leftOffset_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2666
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedSerializedSize:I

    .line 2667
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2683
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2669
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2670
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 2671
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getCoverPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2674
    :cond_19
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 2675
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->topOffset_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2678
    :cond_26
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 2679
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->leftOffset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2682
    :cond_35
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 2683
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTopOffset()I
    .registers 2

    .prologue
    .line 2623
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->topOffset_:I

    return v0
.end method

.method public hasCoverPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2588
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLeftOffset()Z
    .registers 3

    .prologue
    .line 2630
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

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

.method public hasTopOffset()Z
    .registers 3

    .prologue
    .line 2620
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

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

    .line 2643
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedIsInitialized:B

    .line 2644
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2647
    :goto_8
    return v1

    .line 2644
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2646
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 2

    .prologue
    .line 2761
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->toBuilder()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    .registers 2

    .prologue
    .line 2765
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

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
    .line 2690
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

    .line 2652
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getSerializedSize()I

    .line 2653
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 2654
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getCoverPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2656
    :cond_12
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 2657
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->topOffset_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2659
    :cond_1d
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 2660
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->leftOffset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2662
    :cond_2a
    return-void
.end method
