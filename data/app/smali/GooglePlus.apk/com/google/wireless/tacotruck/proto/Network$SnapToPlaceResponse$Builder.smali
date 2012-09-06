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
    .line 20922
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 21159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20923
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 20924
    return-void
.end method

.method static synthetic access$28100(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20917
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28200()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 1

    .prologue
    .line 20917
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
    .line 20961
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    .line 20962
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20963
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 20966
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 1

    .prologue
    .line 20929
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePlaceIsMutable()V
    .registers 3

    .prologue
    .line 21073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 21074
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 21075
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21077
    :cond_16
    return-void
.end method

.method private ensureReverseGeocodeIsMutable()V
    .registers 3

    .prologue
    .line 21162
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 21163
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 21164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21166
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20927
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
    .line 21140
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21141
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 21143
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
    .line 21229
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21230
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 21232
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21133
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21136
    return-object p0
.end method

.method public addPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21116
    if-nez p2, :cond_8

    .line 21117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21119
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21120
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21122
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 21126
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21127
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21129
    return-object p0
.end method

.method public addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21106
    if-nez p1, :cond_8

    .line 21107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21109
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21110
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21112
    return-object p0
.end method

.method public addReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21222
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21223
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21225
    return-object p0
.end method

.method public addReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21205
    if-nez p2, :cond_8

    .line 21206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21208
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21209
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21211
    return-object p0
.end method

.method public addReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 21215
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21216
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21218
    return-object p0
.end method

.method public addReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21195
    if-nez p1, :cond_8

    .line 21196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21198
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21199
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21201
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 3

    .prologue
    .line 20952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    .line 20953
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20954
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20956
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 6

    .prologue
    .line 20970
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 20971
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20972
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20973
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 20974
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20975
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20977
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28402(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Ljava/util/List;)Ljava/util/List;

    .line 20978
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 20979
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20980
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20982
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28502(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Ljava/util/List;)Ljava/util/List;

    .line 20983
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 20984
    or-int/lit8 v2, v2, 0x1

    .line 20986
    :cond_44
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28602(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Z)Z

    .line 20987
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28702(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;I)I

    .line 20988
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 20933
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20934
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20936
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 20937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    .line 20939
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 20940
    return-object p0
.end method

.method public clearPlace()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 21146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 21147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21149
    return-object p0
.end method

.method public clearReverseGeocode()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 21235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 21236
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21238
    return-object p0
.end method

.method public clearUserIsAtFirstLocation()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 2

    .prologue
    .line 21262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    .line 21265
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3

    .prologue
    .line 20944
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
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 2

    .prologue
    .line 20948
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 21086
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getPlaceCount()I
    .registers 2

    .prologue
    .line 21083
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
    .line 21080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReverseGeocode(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 3
    .parameter "index"

    .prologue
    .line 21175
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public getReverseGeocodeCount()I
    .registers 2

    .prologue
    .line 21172
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
    .line 21169
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserIsAtFirstLocation()Z
    .registers 2

    .prologue
    .line 21253
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    return v0
.end method

.method public hasUserIsAtFirstLocation()Z
    .registers 3

    .prologue
    .line 21250
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

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 21020
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->getPlaceCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 21021
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 21023
    const/4 v1, 0x0

    .line 21026
    :goto_12
    return v1

    .line 21020
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21026
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
    .line 20917
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20917
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

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
    .line 20917
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
    .line 21034
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 21035
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 21040
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21042
    :sswitch_d
    return-object p0

    .line 21047
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    .line 21048
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21049
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->addPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    goto :goto_0

    .line 21053
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    .line 21054
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21055
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->addReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    goto :goto_0

    .line 21059
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    :sswitch_2c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    goto :goto_0

    .line 21035
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
    .line 20992
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21016
    :cond_6
    :goto_6
    return-object p0

    .line 20993
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28400(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 20994
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 20995
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28400(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    .line 20996
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21003
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28500(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 21004
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 21005
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28500(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    .line 21006
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21013
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->hasUserIsAtFirstLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21014
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getUserIsAtFirstLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->setUserIsAtFirstLocation(Z)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    goto :goto_6

    .line 20998
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 20999
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28400(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 21008
    :cond_5e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21009
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->access$28500(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21100
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21103
    return-object p0
.end method

.method public setPlace(ILcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21090
    if-nez p2, :cond_8

    .line 21091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21093
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensurePlaceIsMutable()V

    .line 21094
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->place_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21096
    return-object p0
.end method

.method public setReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21189
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21190
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21192
    return-object p0
.end method

.method public setReverseGeocode(ILcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21179
    if-nez p2, :cond_8

    .line 21180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21182
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->ensureReverseGeocodeIsMutable()V

    .line 21183
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21185
    return-object p0
.end method

.method public setUserIsAtFirstLocation(Z)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21256
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->bitField0_:I

    .line 21257
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->userIsAtFirstLocation_:Z

    .line 21259
    return-object p0
.end method
