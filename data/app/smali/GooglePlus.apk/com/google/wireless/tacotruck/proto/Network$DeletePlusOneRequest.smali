.class public final Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePlusOneRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24979
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    .line 24980
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->initFields()V

    .line 24981
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24528
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24621
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    .line 24644
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    .line 24529
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24523
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24621
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    .line 24644
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    .line 24530
    return-void
.end method

.method static synthetic access$33902(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24523
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34002(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24523
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34102(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24523
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object p1
.end method

.method static synthetic access$34202(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24523
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24595
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 24596
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24597
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24599
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 24602
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 1

    .prologue
    .line 24534
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    return-object v0
.end method

.method private getPlusoneIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24563
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 24564
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24565
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24567
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 24570
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
    .line 24617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 24618
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 24619
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24620
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24740
    #calls: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->access$33700()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24743
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24581
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 24582
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24583
    check-cast v1, Ljava/lang/String;

    .line 24591
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24585
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24587
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24588
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24589
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24591
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24523
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 2

    .prologue
    .line 24538
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24549
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 24550
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24551
    check-cast v1, Ljava/lang/String;

    .line 24559
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24553
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24555
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24556
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24557
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24559
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 24646
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    .line 24647
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 24663
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 24649
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 24650
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 24651
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24654
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 24655
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24658
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 24659
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 24662
    :cond_3b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 24663
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 24613
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 24578
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

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

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24546
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 24610
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

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

    .line 24623
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    .line 24624
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24627
    :goto_8
    return v1

    .line 24624
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24626
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24523
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24741
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24523
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24745
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

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
    .line 24670
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

    .line 24632
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getSerializedSize()I

    .line 24633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 24634
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24636
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 24637
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24639
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 24640
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24642
    :cond_30
    return-void
.end method
