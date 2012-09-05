.class public final Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ReshareData;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private originalActivityId_:Ljava/lang/Object;

.field private originalAuthorGaiaId_:J

.field private resharingUserId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8475
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8616
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 8673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 8476
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->maybeForceBuilderInitialization()V

    .line 8477
    return-void
.end method

.method static synthetic access$10800()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 1

    .prologue
    .line 8470
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 1

    .prologue
    .line 8482
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResharingUserIdIsMutable()V
    .registers 3

    .prologue
    .line 8675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 8676
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 8677
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8679
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8480
    return-void
.end method


# virtual methods
.method public addAllResharingUserId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;"
        }
    .end annotation

    .prologue
    .line 8705
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 8706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8708
    return-object p0
.end method

.method public addResharingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 8698
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 8699
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8701
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 3

    .prologue
    .line 8505
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    .line 8506
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8507
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8509
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 6

    .prologue
    .line 8523
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 8524
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8525
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8526
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8527
    or-int/lit8 v2, v2, 0x1

    .line 8529
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11002(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8530
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8531
    or-int/lit8 v2, v2, 0x2

    .line 8533
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11102(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;J)J

    .line 8534
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 8535
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 8536
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8538
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11202(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/util/List;)Ljava/util/List;

    .line 8539
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11302(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;I)I

    .line 8540
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3

    .prologue
    .line 8486
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 8488
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    .line 8490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 8492
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8493
    return-object p0
.end method

.method public clearOriginalActivityId()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2

    .prologue
    .line 8640
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8641
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 8643
    return-object p0
.end method

.method public clearOriginalAuthorGaiaId()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3

    .prologue
    .line 8666
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8667
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    .line 8669
    return-object p0
.end method

.method public clearResharingUserId()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2

    .prologue
    .line 8711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 8712
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8714
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3

    .prologue
    .line 8497
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

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
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 8501
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 8622
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8623
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8624
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 8627
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getOriginalAuthorGaiaId()J
    .registers 3

    .prologue
    .line 8657
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    return-wide v0
.end method

.method public getResharingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 8688
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResharingUserIdCount()I
    .registers 2

    .prologue
    .line 8685
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResharingUserIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8682
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasOriginalActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8618
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOriginalAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 8654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

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
    .line 8470
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

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
    .line 8470
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8573
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 8574
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_54

    .line 8579
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8581
    :sswitch_d
    return-object p0

    .line 8586
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8587
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    goto :goto_0

    .line 8591
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8592
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    goto :goto_0

    .line 8596
    :sswitch_28
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 8597
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8601
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 8602
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 8603
    .local v1, limit:I
    :goto_41
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_4f

    .line 8604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->addResharingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    goto :goto_41

    .line 8606
    :cond_4f
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 8574
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x1a -> :sswitch_39
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 8544
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8561
    :cond_6
    :goto_6
    return-object p0

    .line 8545
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->hasOriginalActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8546
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->setOriginalActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    .line 8548
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->hasOriginalAuthorGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8549
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalAuthorGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->setOriginalAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    .line 8551
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11200(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8552
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8553
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11200(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    .line 8554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    goto :goto_6

    .line 8556
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 8557
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->access$11200(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setOriginalActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8631
    if-nez p1, :cond_8

    .line 8632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8634
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8635
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalActivityId_:Ljava/lang/Object;

    .line 8637
    return-object p0
.end method

.method public setOriginalAuthorGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->bitField0_:I

    .line 8661
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->originalAuthorGaiaId_:J

    .line 8663
    return-object p0
.end method

.method public setResharingUserId(IJ)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8692
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->ensureResharingUserIdIsMutable()V

    .line 8693
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->resharingUserId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8695
    return-object p0
.end method
