.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivityResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private missingActivity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5871
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    .line 5872
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->initFields()V

    .line 5873
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5369
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5428
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    .line 5454
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    .line 5370
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5364
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5371
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5428
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    .line 5454
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    .line 5371
    return-void
.end method

.method static synthetic access$7100(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5364
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5364
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5364
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5364
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 1

    .prologue
    .line 5375
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    .line 5426
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    .line 5427
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 1

    .prologue
    .line 5546
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->access$6900()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5549
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5488
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->access$6800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5396
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 5393
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5386
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public getActivityOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5400
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;

    return-object v0
.end method

.method public getActivityOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5390
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5364
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2

    .prologue
    .line 5379
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    return-object v0
.end method

.method public getMissingActivity(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    return-object v0
.end method

.method public getMissingActivityCount()I
    .registers 2

    .prologue
    .line 5414
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMissingActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5407
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object v0
.end method

.method public getMissingActivityOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5421
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;

    return-object v0
.end method

.method public getMissingActivityOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5411
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 5456
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    .line 5457
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 5469
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 5459
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 5460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 5461
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5460
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5464
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 5465
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5464
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 5468
    :cond_3c
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 5469
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5430
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    .line 5431
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 5440
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 5431
    goto :goto_9

    .line 5433
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivityCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 5434
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 5435
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 5436
    goto :goto_9

    .line 5433
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 5439
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5364
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5547
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5364
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5551
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

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
    .line 5476
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
    .line 5445
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getSerializedSize()I

    .line 5446
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 5447
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5446
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5449
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 5450
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 5452
    :cond_33
    return-void
.end method
