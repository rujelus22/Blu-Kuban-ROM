.class public final Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReshareData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8721
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 8722
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->initFields()V

    .line 8723
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8264
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8339
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    .line 8362
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    .line 8265
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8259
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8266
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8339
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    .line 8362
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    .line 8266
    return-void
.end method

.method static synthetic access$11002(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8259
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8259
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$11200(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8259
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8259
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 1

    .prologue
    .line 8270
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method private getOriginalActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8299
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8300
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8301
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8303
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8306
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
    .registers 3

    .prologue
    .line 8335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8336
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    .line 8337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    .line 8338
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 1

    .prologue
    .line 8463
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->access$10800()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8466
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8259
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 8274
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method public getOriginalActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8285
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    .line 8286
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8287
    check-cast v1, Ljava/lang/String;

    .line 8295
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8289
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8291
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8292
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8293
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalActivityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8295
    goto :goto_8
.end method

.method public getOriginalAuthorGaiaId()J
    .registers 3

    .prologue
    .line 8317
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    return-wide v0
.end method

.method public getResharingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 8331
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

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
    .line 8328
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

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
    .line 8325
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 8364
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    .line 8365
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 8386
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 8367
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 8368
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 8369
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8372
    :cond_19
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_26

    .line 8373
    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 8377
    :cond_26
    const/4 v0, 0x0

    .line 8378
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_44

    .line 8379
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 8378
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 8382
    :cond_44
    add-int/2addr v2, v0

    .line 8383
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getResharingUserIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 8385
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedSerializedSize:I

    move v3, v2

    .line 8386
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public hasOriginalActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8282
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

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
    .line 8314
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

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

    .line 8341
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

    .line 8342
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8345
    :goto_8
    return v1

    .line 8342
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8344
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->memoizedIsInitialized:B

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
    .line 8393
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8350
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getSerializedSize()I

    .line 8351
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 8352
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getOriginalActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8354
    :cond_12
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1d

    .line 8355
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->originalAuthorGaiaId_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8357
    :cond_1d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 8358
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->resharingUserId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 8360
    :cond_39
    return-void
.end method
