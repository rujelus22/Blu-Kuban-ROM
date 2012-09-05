.class public final Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private maxResults_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shownActivitiesBlob_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38731
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 38732
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->initFields()V

    .line 38733
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 38324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38395
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    .line 38418
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    .line 38325
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38319
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38395
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    .line 38418
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    .line 38326
    return-void
.end method

.method static synthetic access$52102(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38319
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$52202(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38319
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    return p1
.end method

.method static synthetic access$52302(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38319
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    return p1
.end method

.method static synthetic access$52402(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38319
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 1

    .prologue
    .line 38330
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method private getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38359
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38360
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38361
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38363
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38366
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
    .line 38391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38392
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    .line 38393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    .line 38394
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 1

    .prologue
    .line 38514
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->access$51900()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 38517
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 38387
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38319
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 38334
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method public getMaxResults()I
    .registers 2

    .prologue
    .line 38377
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    .line 38421
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 38437
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 38423
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 38424
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 38425
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38428
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 38429
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 38432
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 38433
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38436
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    move v1, v0

    .line 38437
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38345
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38346
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38347
    check-cast v1, Ljava/lang/String;

    .line 38355
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38349
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38351
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38352
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38353
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38355
    goto :goto_8
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 38384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

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

.method public hasMaxResults()Z
    .registers 3

    .prologue
    .line 38374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

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

.method public hasShownActivitiesBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38342
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

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

    .line 38397
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    .line 38398
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38401
    :goto_8
    return v1

    .line 38398
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38400
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

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
    .line 38444
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

    .line 38406
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getSerializedSize()I

    .line 38407
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 38408
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38410
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 38411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 38413
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 38414
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38416
    :cond_2a
    return-void
.end method
