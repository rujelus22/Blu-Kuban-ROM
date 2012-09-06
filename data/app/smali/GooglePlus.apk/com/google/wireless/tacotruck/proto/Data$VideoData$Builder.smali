.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$VideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoData;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private duration_:J

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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16729
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16866
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 16890
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 16730
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->maybeForceBuilderInitialization()V

    .line 16731
    return-void
.end method

.method static synthetic access$22100(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16724
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22200()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 1

    .prologue
    .line 16724
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16768
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    .line 16769
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 16770
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 16773
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 1

    .prologue
    .line 16736
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamIsMutable()V
    .registers 3

    .prologue
    .line 16893
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 16894
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 16895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16897
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16734
    return-void
.end method


# virtual methods
.method public addAllStream(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;"
        }
    .end annotation

    .prologue
    .line 16960
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$VideoStream;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16961
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16963
    return-object p0
.end method

.method public addStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16953
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16954
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16956
    return-object p0
.end method

.method public addStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16936
    if-nez p2, :cond_8

    .line 16937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16939
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16940
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16942
    return-object p0
.end method

.method public addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 16946
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16947
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16949
    return-object p0
.end method

.method public addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16926
    if-nez p1, :cond_8

    .line 16927
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16929
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16930
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16932
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 3

    .prologue
    .line 16759
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    .line 16760
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16761
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16763
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 6

    .prologue
    .line 16777
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 16778
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16779
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16780
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16781
    or-int/lit8 v2, v2, 0x1

    .line 16783
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22402(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 16784
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 16785
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 16786
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16788
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22502(Lcom/google/wireless/tacotruck/proto/Data$VideoData;Ljava/util/List;)Ljava/util/List;

    .line 16789
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 16790
    or-int/lit8 v2, v2, 0x2

    .line 16792
    :cond_36
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22602(Lcom/google/wireless/tacotruck/proto/Data$VideoData;J)J

    .line 16793
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22702(Lcom/google/wireless/tacotruck/proto/Data$VideoData;I)I

    .line 16794
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3

    .prologue
    .line 16740
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16741
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 16742
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 16744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16745
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    .line 16746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16747
    return-object p0
.end method

.method public clearDuration()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3

    .prologue
    .line 16993
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16994
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    .line 16996
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2

    .prologue
    .line 16883
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16884
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 16886
    return-object p0
.end method

.method public clearStream()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 2

    .prologue
    .line 16966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 16967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16969
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3

    .prologue
    .line 16751
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

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
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 16755
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 16984
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2

    .prologue
    .line 16871
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object v0
.end method

.method public getStream(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 3
    .parameter "index"

    .prologue
    .line 16906
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method public getStreamCount()I
    .registers 2

    .prologue
    .line 16903
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

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
    .line 16900
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 16981
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16868
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 16819
    const/4 v0, 0x1

    return v0
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
    .line 16724
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16724
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

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
    .line 16724
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16827
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 16828
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 16833
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 16835
    :sswitch_d
    return-object p0

    .line 16840
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 16841
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v3

    .line 16842
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    if-eqz v3, :cond_0

    .line 16843
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16844
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    goto :goto_0

    .line 16849
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v1

    .line 16850
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16851
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->addStream(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    goto :goto_0

    .line 16855
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    :sswitch_30
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16856
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    goto :goto_0

    .line 16828
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_30
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16798
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16815
    :cond_6
    :goto_6
    return-object p0

    .line 16799
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16800
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    .line 16802
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22500(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 16803
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 16804
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22500(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    .line 16805
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16812
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16813
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    goto :goto_6

    .line 16807
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16808
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$VideoData;->stream_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->access$22500(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16987
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16988
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->duration_:J

    .line 16990
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16874
    if-nez p1, :cond_8

    .line 16875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16877
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->bitField0_:I

    .line 16878
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 16880
    return-object p0
.end method

.method public setStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16920
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16923
    return-object p0
.end method

.method public setStream(ILcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16910
    if-nez p2, :cond_8

    .line 16911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16913
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->ensureStreamIsMutable()V

    .line 16914
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->stream_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16916
    return-object p0
.end method
