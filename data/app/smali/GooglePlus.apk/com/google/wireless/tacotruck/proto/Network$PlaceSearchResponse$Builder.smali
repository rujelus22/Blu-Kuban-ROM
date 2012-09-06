.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private place_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;"
        }
    .end annotation
.end field

.field private query_:Ljava/lang/Object;

.field private searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27648
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27773
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27506
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 27507
    return-void
.end method

.method static synthetic access$37700(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27500
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37800()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 1

    .prologue
    .line 27500
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27544
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    .line 27545
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 27546
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 27549
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 1

    .prologue
    .line 27512
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePlaceIsMutable()V
    .registers 3

    .prologue
    .line 27651
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 27652
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27653
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27655
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27510
    return-void
.end method


# virtual methods
.method public addAllPlace(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 27718
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27719
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27721
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27711
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27712
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27714
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27694
    if-nez p2, :cond_8

    .line 27695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27697
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27698
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27700
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 27704
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27705
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27707
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27684
    if-nez p1, :cond_8

    .line 27685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27687
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27688
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27690
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 3

    .prologue
    .line 27535
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    .line 27536
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27537
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27539
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 6

    .prologue
    .line 27553
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 27554
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27555
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27556
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 27557
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27558
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27560
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38002(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 27561
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 27562
    or-int/lit8 v2, v2, 0x1

    .line 27564
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38102(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27565
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 27566
    or-int/lit8 v2, v2, 0x2

    .line 27568
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38202(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27569
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38302(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;I)I

    .line 27570
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27516
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27520
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27521
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27522
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27523
    return-object p0
.end method

.method public clearPlace()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27727
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27761
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27762
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27764
    return-object p0
.end method

.method public clearSearchEvent()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27809
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27812
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3

    .prologue
    .line 27527
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

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
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27500
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 2

    .prologue
    .line 27531
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 27664
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getPlaceCount()I
    .registers 2

    .prologue
    .line 27661
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlaceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27658
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27742
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27743
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27744
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27745
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27748
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

.method public getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2

    .prologue
    .line 27778
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 27739
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

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

.method public hasSearchEvent()Z
    .registers 3

    .prologue
    .line 27775
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 27595
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getPlaceCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 27596
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 27598
    const/4 v1, 0x0

    .line 27601
    :goto_12
    return v1

    .line 27595
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27601
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 27500
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27500
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

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
    .line 27500
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27609
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 27610
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 27615
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27617
    :sswitch_d
    return-object p0

    .line 27622
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    .line 27623
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 27624
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    goto :goto_0

    .line 27628
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27629
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 27633
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    .line 27634
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->hasSearchEvent()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 27635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    .line 27637
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 27638
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    goto :goto_0

    .line 27610
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 27574
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27591
    :cond_6
    :goto_6
    return-object p0

    .line 27575
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38000(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 27576
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 27577
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38000(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27578
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27585
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 27586
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    .line 27588
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->hasSearchEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27589
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    goto :goto_6

    .line 27580
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27581
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$38000(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27797
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 27799
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27805
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27806
    return-object p0

    .line 27802
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    goto :goto_1f
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27678
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27679
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27681
    return-object p0
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27668
    if-nez p2, :cond_8

    .line 27669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27671
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27672
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27674
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27752
    if-nez p1, :cond_8

    .line 27753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27755
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27756
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27758
    return-object p0
.end method

.method public setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 27791
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27794
    return-object p0
.end method

.method public setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27781
    if-nez p1, :cond_8

    .line 27782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27784
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27787
    return-object p0
.end method
