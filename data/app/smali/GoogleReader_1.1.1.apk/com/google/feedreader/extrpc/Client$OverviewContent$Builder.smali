.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

.field private segmentStreams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
            ">;"
        }
    .end annotation
.end field

.field private starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29723
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29990
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    .line 30079
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30122
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30165
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30208
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30251
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30294
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29724
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->maybeForceBuilderInitialization()V

    .line 29725
    return-void
.end method

.method static synthetic access$37000(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29718
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37100()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 1

    .prologue
    .line 29718
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    .line 29771
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 29772
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 29775
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 1

    .prologue
    .line 29730
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSegmentStreamsIsMutable()V
    .registers 3

    .prologue
    .line 29993
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 29994
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    .line 29995
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29997
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29728
    return-void
.end method


# virtual methods
.method public addAllSegmentStreams(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;"
        }
    .end annotation

    .prologue
    .line 30060
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30061
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 30063
    return-object p0
.end method

.method public addSegmentStreams(ILcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 30053
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30054
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30056
    return-object p0
.end method

.method public addSegmentStreams(ILcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 30036
    if-nez p2, :cond_8

    .line 30037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30039
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30040
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30042
    return-object p0
.end method

.method public addSegmentStreams(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 30046
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30047
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30049
    return-object p0
.end method

.method public addSegmentStreams(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 30026
    if-nez p1, :cond_8

    .line 30027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30029
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30030
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30032
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 3

    .prologue
    .line 29761
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    .line 29762
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29763
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29765
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 6

    .prologue
    .line 29779
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 29780
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29781
    const/4 v2, 0x0

    .line 29782
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 29783
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    .line 29784
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29786
    :cond_1e
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37302(Lcom/google/feedreader/extrpc/Client$OverviewContent;Ljava/util/List;)Ljava/util/List;

    .line 29787
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 29788
    or-int/lit8 v2, v2, 0x1

    .line 29790
    :cond_2a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37402(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29791
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 29792
    or-int/lit8 v2, v2, 0x2

    .line 29794
    :cond_36
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37502(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29795
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 29796
    or-int/lit8 v2, v2, 0x4

    .line 29798
    :cond_43
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37602(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29799
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 29800
    or-int/lit8 v2, v2, 0x8

    .line 29802
    :cond_50
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37702(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29803
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 29804
    or-int/lit8 v2, v2, 0x10

    .line 29806
    :cond_5d
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37802(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29807
    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_73

    .line 29808
    or-int/lit8 v1, v2, 0x20

    .line 29810
    :goto_6a
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37902(Lcom/google/feedreader/extrpc/Client$OverviewContent;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29811
    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$38002(Lcom/google/feedreader/extrpc/Client$OverviewContent;I)I

    .line 29812
    return-object v0

    :cond_73
    move v1, v2

    goto :goto_6a
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 29734
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29735
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    .line 29736
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29737
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29738
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29739
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29740
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29741
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29742
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29743
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29744
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29745
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29746
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29747
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 29748
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29749
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30158
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30160
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30161
    return-object p0
.end method

.method public clearCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30330
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30332
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30333
    return-object p0
.end method

.method public clearKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30201
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30203
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30204
    return-object p0
.end method

.method public clearReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30244
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30246
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30247
    return-object p0
.end method

.method public clearReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30287
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30289
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30290
    return-object p0
.end method

.method public clearSegmentStreams()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    .line 30067
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30069
    return-object p0
.end method

.method public clearStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 2

    .prologue
    .line 30115
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30117
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30118
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3

    .prologue
    .line 29753
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

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
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 30127
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 30299
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent;
    .registers 2

    .prologue
    .line 29757
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29718
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    return-object v0
.end method

.method public getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 30170
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 30213
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 30256
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public getSegmentStreams(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .parameter "index"

    .prologue
    .line 30006
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object p0
.end method

.method public getSegmentStreamsCount()I
    .registers 2

    .prologue
    .line 30003
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentStreamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30000
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 30084
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    return-object v0
.end method

.method public hasBroadcastStream()Z
    .registers 3

    .prologue
    .line 30124
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

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

.method public hasCoolStream()Z
    .registers 3

    .prologue
    .line 30296
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasKeptUnreadStream()Z
    .registers 3

    .prologue
    .line 30167
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReadStream()Z
    .registers 3

    .prologue
    .line 30210
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReaderBlogStream()Z
    .registers 3

    .prologue
    .line 30253
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStarredStream()Z
    .registers 3

    .prologue
    .line 30081
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

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
    const/4 v2, 0x0

    .line 29849
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasStarredStream()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 29903
    :goto_8
    return v1

    .line 29853
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasBroadcastStream()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 29855
    goto :goto_8

    .line 29857
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasKeptUnreadStream()Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v2

    .line 29859
    goto :goto_8

    .line 29861
    :cond_19
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasReadStream()Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v2

    .line 29863
    goto :goto_8

    .line 29865
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasReaderBlogStream()Z

    move-result v1

    if-nez v1, :cond_29

    move v1, v2

    .line 29867
    goto :goto_8

    .line 29869
    :cond_29
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasCoolStream()Z

    move-result v1

    if-nez v1, :cond_31

    move v1, v2

    .line 29871
    goto :goto_8

    .line 29873
    :cond_31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getSegmentStreamsCount()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 29874
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getSegmentStreams(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_44

    move v1, v2

    .line 29876
    goto :goto_8

    .line 29873
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 29879
    :cond_47
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_53

    move v1, v2

    .line 29881
    goto :goto_8

    .line 29883
    :cond_53
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5f

    move v1, v2

    .line 29885
    goto :goto_8

    .line 29887
    :cond_5f
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_6b

    move v1, v2

    .line 29889
    goto :goto_8

    .line 29891
    :cond_6b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_77

    move v1, v2

    .line 29893
    goto :goto_8

    .line 29895
    :cond_77
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_83

    move v1, v2

    .line 29897
    goto :goto_8

    .line 29899
    :cond_83
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_90

    move v1, v2

    .line 29901
    goto/16 :goto_8

    .line 29903
    :cond_90
    const/4 v1, 0x1

    goto/16 :goto_8
.end method

.method public mergeBroadcastStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30146
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 30148
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30154
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30155
    return-object p0

    .line 30151
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    goto :goto_1f
.end method

.method public mergeCoolStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30318
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 30320
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30326
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30327
    return-object p0

    .line 30323
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 29816
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 29845
    :goto_7
    return-object v0

    .line 29817
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37300(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 29818
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 29819
    #getter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37300(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    .line 29820
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 29827
    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasStarredStream()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 29828
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeStarredStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    .line 29830
    :cond_33
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasBroadcastStream()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 29831
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeBroadcastStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    .line 29833
    :cond_40
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasKeptUnreadStream()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 29834
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeKeptUnreadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    .line 29836
    :cond_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasReadStream()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 29837
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeReadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    .line 29839
    :cond_5a
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasReaderBlogStream()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 29840
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeReaderBlogStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    .line 29842
    :cond_67
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->hasCoolStream()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 29843
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeCoolStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    :cond_74
    move-object v0, p0

    .line 29845
    goto :goto_7

    .line 29822
    :cond_76
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 29823
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$OverviewContent;->segmentStreams_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent;->access$37300(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29911
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 29912
    sparse-switch v0, :sswitch_data_cc

    .line 29917
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 29919
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 29915
    goto :goto_e

    .line 29924
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29925
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29926
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->addSegmentStreams(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto :goto_0

    .line 29930
    :sswitch_20
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29931
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasStarredStream()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 29932
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29934
    :cond_31
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29935
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->setStarredStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto :goto_0

    .line 29939
    :sswitch_3c
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29940
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasBroadcastStream()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 29941
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29943
    :cond_4d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29944
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->setBroadcastStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto :goto_0

    .line 29948
    :sswitch_58
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29949
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasKeptUnreadStream()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 29950
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29952
    :cond_69
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29953
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->setKeptUnreadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto :goto_0

    .line 29957
    :sswitch_74
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29958
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasReadStream()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 29959
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29961
    :cond_85
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29962
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->setReadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto/16 :goto_0

    .line 29966
    :sswitch_91
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29967
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasReaderBlogStream()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 29968
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29970
    :cond_a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29971
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->setReaderBlogStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto/16 :goto_0

    .line 29975
    :sswitch_ae
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    .line 29976
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->hasCoolStream()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 29977
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29979
    :cond_bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29980
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->setCoolStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    goto/16 :goto_0

    .line 29912
    nop

    :sswitch_data_cc
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_20
        0x1a -> :sswitch_3c
        0x22 -> :sswitch_58
        0x2a -> :sswitch_74
        0x32 -> :sswitch_91
        0x42 -> :sswitch_ae
    .end sparse-switch
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
    .line 29718
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29718
    check-cast p1, Lcom/google/feedreader/extrpc/Client$OverviewContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

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
    .line 29718
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeKeptUnreadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30189
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 30191
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30197
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30198
    return-object p0

    .line 30194
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    goto :goto_20
.end method

.method public mergeReadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30232
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 30234
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30240
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30241
    return-object p0

    .line 30237
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    goto :goto_20
.end method

.method public mergeReaderBlogStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30275
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 30277
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30283
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30284
    return-object p0

    .line 30280
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    goto :goto_20
.end method

.method public mergeStarredStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30103
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 30105
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30111
    :goto_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30112
    return-object p0

    .line 30108
    :cond_26
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    goto :goto_1f
.end method

.method public removeSegmentStreams(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 30072
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30073
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30075
    return-object p0
.end method

.method public setBroadcastStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30140
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30142
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30143
    return-object p0
.end method

.method public setBroadcastStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30130
    if-nez p1, :cond_8

    .line 30131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30133
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->broadcastStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30135
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30136
    return-object p0
.end method

.method public setCoolStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30312
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30314
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30315
    return-object p0
.end method

.method public setCoolStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30302
    if-nez p1, :cond_8

    .line 30303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30305
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->coolStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30307
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30308
    return-object p0
.end method

.method public setKeptUnreadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30183
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30185
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30186
    return-object p0
.end method

.method public setKeptUnreadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30173
    if-nez p1, :cond_8

    .line 30174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30176
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->keptUnreadStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30178
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30179
    return-object p0
.end method

.method public setReadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30226
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30228
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30229
    return-object p0
.end method

.method public setReadStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30216
    if-nez p1, :cond_8

    .line 30217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30219
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30221
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30222
    return-object p0
.end method

.method public setReaderBlogStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30269
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30271
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30272
    return-object p0
.end method

.method public setReaderBlogStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30259
    if-nez p1, :cond_8

    .line 30260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30262
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->readerBlogStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30264
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30265
    return-object p0
.end method

.method public setSegmentStreams(ILcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 30020
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30021
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30023
    return-object p0
.end method

.method public setSegmentStreams(ILcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30010
    if-nez p2, :cond_8

    .line 30011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30013
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->ensureSegmentStreamsIsMutable()V

    .line 30014
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->segmentStreams_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30016
    return-object p0
.end method

.method public setStarredStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30097
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30099
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30100
    return-object p0
.end method

.method public setStarredStream(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30087
    if-nez p1, :cond_8

    .line 30088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30090
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->starredStream_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .line 30092
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Builder;->bitField0_:I

    .line 30093
    return-object p0
.end method
