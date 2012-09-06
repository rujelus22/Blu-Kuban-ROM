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
    .line 17003
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17004
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->initFields()V

    .line 17005
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16491
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16598
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    .line 16621
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    .line 16492
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16486
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16598
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    .line 16621
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    .line 16493
    return-void
.end method

.method static synthetic access$22402(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16486
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object p1
.end method

.method static synthetic access$22500(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16486
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22502(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16486
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$22602(Lcom/google/wireless/tacotruck/proto/Data$VideoData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16486
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    return-wide p1
.end method

.method static synthetic access$22702(Lcom/google/wireless/tacotruck/proto/Data$VideoData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16486
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 1

    .prologue
    .line 16497
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 16594
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 16595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    .line 16596
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    .line 16597
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 1

    .prologue
    .line 16717
    #calls: Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->access$22200()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16720
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
    .line 16664
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->access$22100(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16486
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 16501
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 16590
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16623
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    .line 16624
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 16640
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 16626
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 16627
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1b

    .line 16628
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 16631
    :cond_1b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 16632
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 16631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 16635
    :cond_34
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_42

    .line 16636
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 16639
    :cond_42
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedSerializedSize:I

    move v2, v1

    .line 16640
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2

    .prologue
    .line 16559
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object v0
.end method

.method public getStream(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 3
    .parameter "index"

    .prologue
    .line 16576
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method public getStreamCount()I
    .registers 2

    .prologue
    .line 16573
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
    .line 16566
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object v0
.end method

.method public getStreamOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 16580
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
    .line 16570
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    return-object v0
.end method

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 16587
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

    .line 16556
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

    .line 16600
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    .line 16601
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 16604
    :goto_8
    return v1

    .line 16601
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 16603
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16486
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2

    .prologue
    .line 16718
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16486
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2

    .prologue
    .line 16722
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

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
    .line 16647
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

    .line 16609
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getSerializedSize()I

    .line 16610
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 16611
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16613
    :cond_14
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 16614
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16613
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 16616
    :cond_2b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_37

    .line 16617
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16619
    :cond_37
    return-void
.end method
