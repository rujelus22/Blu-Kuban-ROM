.class public final Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponseOrBuilder;"
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

.field private reverseGeocode_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            ">;"
        }
    .end annotation
.end field

.field private userIsAtFirstLocation_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20314
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20315
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 20316
    return-void
.end method

.method static synthetic access$27400(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20309
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27500()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 1

    .prologue
    .line 20309
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20353
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    .line 20354
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20355
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 20358
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 1

    .prologue
    .line 20321
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePlaceIsMutable()V
    .registers 3

    .prologue
    .line 20465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 20466
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20467
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20469
    :cond_16
    return-void
.end method

.method private ensureReverseGeocodeIsMutable()V
    .registers 3

    .prologue
    .line 20554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 20555
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20556
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20558
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20319
    return-void
.end method


# virtual methods
.method public addAllPlace(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 20532
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20533
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20535
    return-object p0
.end method

.method public addAllReverseGeocode(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 20621
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20622
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20624
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20525
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20526
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20528
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20508
    if-nez p2, :cond_8

    .line 20509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20511
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20512
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20514
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 20518
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20519
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20521
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20498
    if-nez p1, :cond_8

    .line 20499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20501
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20502
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20504
    return-object p0
.end method

.method public addReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20614
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20615
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20617
    return-object p0
.end method

.method public addReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20597
    if-nez p2, :cond_8

    .line 20598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20600
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20603
    return-object p0
.end method

.method public addReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 20607
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20608
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20610
    return-object p0
.end method

.method public addReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20587
    if-nez p1, :cond_8

    .line 20588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20590
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20591
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20593
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 6

    .prologue
    .line 20362
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 20363
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20364
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20365
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 20366
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20367
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20369
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27702(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Ljava/util/List;)Ljava/util/List;

    .line 20370
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 20371
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20372
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20374
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27802(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Ljava/util/List;)Ljava/util/List;

    .line 20375
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 20376
    or-int/lit8 v2, v2, 0x1

    .line 20378
    :cond_44
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27902(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Z)Z

    .line 20379
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28002(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;I)I

    .line 20380
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 20325
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    .line 20331
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20332
    return-object p0
.end method

.method public clearPlace()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 20538
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20541
    return-object p0
.end method

.method public clearReverseGeocode()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 20627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20628
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20630
    return-object p0
.end method

.method public clearUserIsAtFirstLocation()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 20654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    .line 20657
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3

    .prologue
    .line 20336
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

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
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 2

    .prologue
    .line 20340
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 20478
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getPlaceCount()I
    .registers 2

    .prologue
    .line 20475
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

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
    .line 20472
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReverseGeocode(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 3
    .parameter "index"

    .prologue
    .line 20567
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public getReverseGeocodeCount()I
    .registers 2

    .prologue
    .line 20564
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReverseGeocodeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserIsAtFirstLocation()Z
    .registers 2

    .prologue
    .line 20645
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    return v0
.end method

.method public hasUserIsAtFirstLocation()Z
    .registers 3

    .prologue
    .line 20642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

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
    .line 20309
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

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
    .line 20309
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20427
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 20432
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20434
    :sswitch_d
    return-object p0

    .line 20439
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    .line 20440
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 20441
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    goto :goto_0

    .line 20445
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    .line 20446
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 20447
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->addReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    goto :goto_0

    .line 20451
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    :sswitch_2c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20452
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    goto :goto_0

    .line 20427
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_2c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 20384
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20408
    :cond_6
    :goto_6
    return-object p0

    .line 20385
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27700(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 20386
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 20387
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27700(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20395
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27800(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 20396
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 20397
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27800(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20398
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20405
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->hasUserIsAtFirstLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20406
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getUserIsAtFirstLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->setUserIsAtFirstLocation(Z)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    goto :goto_6

    .line 20390
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20391
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27700(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 20400
    :cond_5e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20401
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$27800(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20492
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20493
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20495
    return-object p0
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20482
    if-nez p2, :cond_8

    .line 20483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20485
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20486
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20488
    return-object p0
.end method

.method public setReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20581
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20582
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20584
    return-object p0
.end method

.method public setReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20571
    if-nez p2, :cond_8

    .line 20572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20574
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 20575
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20577
    return-object p0
.end method

.method public setUserIsAtFirstLocation(Z)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20649
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    .line 20651
    return-object p0
.end method
