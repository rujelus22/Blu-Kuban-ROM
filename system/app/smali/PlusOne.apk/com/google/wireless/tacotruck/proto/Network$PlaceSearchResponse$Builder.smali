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
    .line 26897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27165
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 26898
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 26899
    return-void
.end method

.method static synthetic access$37000(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26892
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37100()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 1

    .prologue
    .line 26892
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
    .line 26936
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    .line 26937
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 26938
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 26941
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 1

    .prologue
    .line 26904
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePlaceIsMutable()V
    .registers 3

    .prologue
    .line 27043
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 27044
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27045
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27047
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26902
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
    .line 27110
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27111
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27113
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27103
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27104
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27106
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27086
    if-nez p2, :cond_8

    .line 27087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27089
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27090
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27092
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 27096
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27097
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27099
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27076
    if-nez p1, :cond_8

    .line 27077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27079
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27082
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 6

    .prologue
    .line 26945
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 26946
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 26947
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26948
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 26949
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 26950
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 26952
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37302(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 26953
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 26954
    or-int/lit8 v2, v2, 0x1

    .line 26956
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37402(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26957
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 26958
    or-int/lit8 v2, v2, 0x2

    .line 26960
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37502(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 26961
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37602(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;I)I

    .line 26962
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 26908
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 26910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 26911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 26912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 26913
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 26914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 26915
    return-object p0
.end method

.method public clearPlace()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 27117
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27119
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27153
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27154
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27156
    return-object p0
.end method

.method public clearSearchEvent()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 2

    .prologue
    .line 27201
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27203
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27204
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3

    .prologue
    .line 26919
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
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 2

    .prologue
    .line 26923
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 27056
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getPlaceCount()I
    .registers 2

    .prologue
    .line 27053
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
    .line 27050
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27135
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27136
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27137
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27140
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
    .line 27170
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 27131
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
    .line 27167
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
    .line 26892
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

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
    .line 26892
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
    .line 27001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 27002
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 27007
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27009
    :sswitch_d
    return-object p0

    .line 27014
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    .line 27015
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 27016
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    goto :goto_0

    .line 27020
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 27025
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    .line 27026
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->hasSearchEvent()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 27027
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    .line 27029
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 27030
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    goto :goto_0

    .line 27002
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
    .line 26966
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26983
    :cond_6
    :goto_6
    return-object p0

    .line 26967
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37300(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 26968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 26969
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37300(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    .line 26970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 26977
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 26978
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    .line 26980
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->hasSearchEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26981
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    goto :goto_6

    .line 26972
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 26973
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->access$37300(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27189
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 27191
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27197
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27198
    return-object p0

    .line 27194
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    goto :goto_1f
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27070
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27071
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27073
    return-object p0
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27060
    if-nez p2, :cond_8

    .line 27061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27063
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->ensurePlaceIsMutable()V

    .line 27064
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27066
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27144
    if-nez p1, :cond_8

    .line 27145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27147
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27148
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->query_:Ljava/lang/Object;

    .line 27150
    return-object p0
.end method

.method public setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 27183
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27185
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27186
    return-object p0
.end method

.method public setSearchEvent(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27173
    if-nez p1, :cond_8

    .line 27174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27176
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 27178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->bitField0_:I

    .line 27179
    return-object p0
.end method
