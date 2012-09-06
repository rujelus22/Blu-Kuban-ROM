.class public final Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$StreamActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamActionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26890
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .line 26891
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->initFields()V

    .line 26892
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26510
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26570
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedIsInitialized:B

    .line 26590
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedSerializedSize:I

    .line 26511
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26505
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26512
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26570
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedIsInitialized:B

    .line 26590
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedSerializedSize:I

    .line 26512
    return-void
.end method

.method static synthetic access$36002(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26505
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36102(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26505
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object p1
.end method

.method static synthetic access$36202(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26505
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26545
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;

    .line 26546
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26547
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26549
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;

    .line 26552
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 1

    .prologue
    .line 26516
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 26567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;

    .line 26568
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26569
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 1

    .prologue
    .line 26682
    #calls: Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->access$35800()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26685
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26531
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;

    .line 26532
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26533
    check-cast v1, Ljava/lang/String;

    .line 26541
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26535
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26537
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26538
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26539
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26541
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 26520
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedSerializedSize:I

    .line 26593
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 26605
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 26595
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 26596
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 26597
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26600
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 26601
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26604
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedSerializedSize:I

    move v1, v0

    .line 26605
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStreamView()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 2

    .prologue
    .line 26563
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26528
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStreamView()Z
    .registers 3

    .prologue
    .line 26560
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

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

    .line 26572
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedIsInitialized:B

    .line 26573
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 26576
    :goto_8
    return v1

    .line 26573
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 26575
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 26683
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 26687
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

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
    .line 26612
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

    .line 26581
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getSerializedSize()I

    .line 26582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 26583
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26585
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 26586
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26588
    :cond_1d
    return-void
.end method
