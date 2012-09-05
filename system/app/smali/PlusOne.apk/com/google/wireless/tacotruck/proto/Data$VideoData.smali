.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private duration_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field private stream_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15705
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 15706
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->initFields()V

    .line 15707
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15193
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15300
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    .line 15323
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    .line 15194
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15188
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15195
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15300
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    .line 15323
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    .line 15195
    return-void
.end method

.method static synthetic access$20802(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15188
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object p1
.end method

.method static synthetic access$20900(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15188
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20902(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15188
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21002(Lcom/google/wireless/tacotruck/proto/Data$VideoData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15188
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    return-wide p1
.end method

.method static synthetic access$21102(Lcom/google/wireless/tacotruck/proto/Data$VideoData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15188
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 1

    .prologue
    .line 15199
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 15296
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    .line 15298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    .line 15299
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 1

    .prologue
    .line 15419
    #calls: Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->access$20600()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15422
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15366
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->access$20500(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15188
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 15203
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 15292
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 15325
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    .line 15326
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 15342
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 15328
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 15329
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1b

    .line 15330
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 15333
    :cond_1b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 15334
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 15337
    :cond_34
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_42

    .line 15338
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 15341
    :cond_42
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    move v2, v1

    .line 15342
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2

    .prologue
    .line 15261
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object v0
.end method

.method public getStream(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 3
    .parameter "index"

    .prologue
    .line 15278
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method public getStreamCount()I
    .registers 2

    .prologue
    .line 15275
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreamList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15268
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object v0
.end method

.method public getStreamOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 15282
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;

    return-object v0
.end method

.method public getStreamOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15272
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object v0
.end method

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 15289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15258
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

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

    .line 15302
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    .line 15303
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 15306
    :goto_8
    return v1

    .line 15303
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 15305
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

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
    .line 15349
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 15311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getSerializedSize()I

    .line 15312
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 15313
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15315
    :cond_14
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 15316
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15315
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 15318
    :cond_2b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_37

    .line 15319
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15321
    :cond_37
    return-void
.end method
