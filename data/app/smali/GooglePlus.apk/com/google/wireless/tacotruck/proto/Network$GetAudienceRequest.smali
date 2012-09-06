.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAudienceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19808
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    .line 19809
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->initFields()V

    .line 19810
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19507
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19556
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    .line 19573
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    .line 19508
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19502
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19509
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19556
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    .line 19573
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    .line 19509
    return-void
.end method

.method static synthetic access$26602(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19502
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26702(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19502
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19542
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 19543
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19544
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19546
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 19549
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 1

    .prologue
    .line 19513
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 19554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 19555
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 1

    .prologue
    .line 19661
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->access$26400()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 19664
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19528
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    .line 19529
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19530
    check-cast v1, Ljava/lang/String;

    .line 19538
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19532
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19534
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19535
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19536
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19538
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19502
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 2

    .prologue
    .line 19517
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 19575
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    .line 19576
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 19584
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 19578
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 19579
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 19580
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19583
    :cond_18
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 19584
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19525
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

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

    .line 19558
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    .line 19559
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 19562
    :goto_8
    return v1

    .line 19559
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 19561
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19502
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 2

    .prologue
    .line 19662
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19502
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 2

    .prologue
    .line 19666
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

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
    .line 19591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 19567
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getSerializedSize()I

    .line 19568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 19569
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19571
    :cond_11
    return-void
.end method
