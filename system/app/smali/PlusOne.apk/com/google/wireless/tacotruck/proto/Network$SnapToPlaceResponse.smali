.class public final Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnapToPlaceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20664
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    .line 20665
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->initFields()V

    .line 20666
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20106
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20177
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedIsInitialized:B

    .line 20206
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedSerializedSize:I

    .line 20107
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20101
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20108
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20177
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedIsInitialized:B

    .line 20206
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedSerializedSize:I

    .line 20108
    return-void
.end method

.method static synthetic access$27700(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27702(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20101
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27800(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27802(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20101
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27902(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20101
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z

    return p1
.end method

.method static synthetic access$28002(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20101
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 1

    .prologue
    .line 20112
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 20173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    .line 20174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    .line 20175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z

    .line 20176
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    .registers 1

    .prologue
    .line 20302
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->access$27500()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20238
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;->access$27400(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20101
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 2

    .prologue
    .line 20116
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    return-object v0
.end method

.method public getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 20134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getPlaceCount()I
    .registers 2

    .prologue
    .line 20131
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

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
    .line 20124
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20138
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;

    return-object v0
.end method

.method public getPlaceOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    return-object v0
.end method

.method public getReverseGeocode(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 3
    .parameter "index"

    .prologue
    .line 20155
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public getReverseGeocodeCount()I
    .registers 2

    .prologue
    .line 20152
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

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
    .line 20145
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    return-object v0
.end method

.method public getReverseGeocodeOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20159
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;

    return-object v0
.end method

.method public getReverseGeocodeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20149
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 20208
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedSerializedSize:I

    .line 20209
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 20225
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 20211
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 20212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 20213
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20212
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 20216
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 20217
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20216
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 20220
    :cond_3c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_4a

    .line 20221
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 20224
    :cond_4a
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 20225
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getUserIsAtFirstLocation()Z
    .registers 2

    .prologue
    .line 20169
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z

    return v0
.end method

.method public hasUserIsAtFirstLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20166
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 20179
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedIsInitialized:B

    .line 20180
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 20189
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 20180
    goto :goto_9

    .line 20182
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlaceCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 20183
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 20184
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 20185
    goto :goto_9

    .line 20182
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 20188
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 20232
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
    const/4 v3, 0x1

    .line 20194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getSerializedSize()I

    .line 20195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 20196
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->place_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20195
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 20198
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 20199
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->reverseGeocode_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 20201
    :cond_33
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3f

    .line 20202
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->userIsAtFirstLocation_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 20204
    :cond_3f
    return-void
.end method
