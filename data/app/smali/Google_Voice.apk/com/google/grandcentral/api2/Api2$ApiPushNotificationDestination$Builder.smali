.class public final Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;",
        "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestinationOrBuilder;"
    }
.end annotation


# instance fields
.field private androidPrimaryId_:Ljava/lang/Object;

.field private apnsDeviceToken_:Lcom/google/protobuf/ByteString;

.field private applicationId_:Ljava/lang/Object;

.field private bitField0_:I

.field private countryCode_:Ljava/lang/Object;

.field private eventPayload_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation
.end field

.field private languageCode_:Ljava/lang/Object;

.field private routingInfo_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37006
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    .line 37308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37414
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    .line 37438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37007
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->maybeForceBuilderInitialization()V

    .line 37008
    return-void
.end method

.method static synthetic access$44100()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 1

    .prologue
    .line 37001
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 1

    .prologue
    .line 37013
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventPayloadIsMutable()V
    .registers 3

    .prologue
    .line 37222
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 37223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    .line 37224
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37226
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37011
    return-void
.end method


# virtual methods
.method public addAllEventPayload(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;"
        }
    .end annotation

    .prologue
    .line 37289
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiEventPayload;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37290
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37292
    return-object p0
.end method

.method public addEventPayload(ILcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37282
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37283
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37285
    return-object p0
.end method

.method public addEventPayload(ILcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37265
    if-nez p2, :cond_8

    .line 37266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37268
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37269
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37271
    return-object p0
.end method

.method public addEventPayload(Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 37275
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37276
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37278
    return-object p0
.end method

.method public addEventPayload(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37255
    if-nez p1, :cond_8

    .line 37256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37258
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37259
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37261
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 3

    .prologue
    .line 37048
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    .line 37049
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37050
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37052
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 6

    .prologue
    .line 37056
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 37057
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37058
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37059
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37060
    or-int/lit8 v2, v2, 0x1

    .line 37062
    :cond_10
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->timestamp_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44302(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;J)J

    .line 37063
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 37064
    or-int/lit8 v2, v2, 0x2

    .line 37066
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->type_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44402(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;I)I

    .line 37067
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 37068
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    .line 37069
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37071
    :cond_36
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44502(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/util/List;)Ljava/util/List;

    .line 37072
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 37073
    or-int/lit8 v2, v2, 0x4

    .line 37075
    :cond_43
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44602(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37076
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 37077
    or-int/lit8 v2, v2, 0x8

    .line 37079
    :cond_50
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44702(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37080
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 37081
    or-int/lit8 v2, v2, 0x10

    .line 37083
    :cond_5d
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44802(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 37084
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 37085
    or-int/lit8 v2, v2, 0x20

    .line 37087
    :cond_6a
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44902(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37088
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 37089
    or-int/lit8 v2, v2, 0x40

    .line 37091
    :cond_77
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$45002(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37092
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_84

    .line 37093
    or-int/lit16 v2, v2, 0x80

    .line 37095
    :cond_84
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$45102(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37096
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$45202(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;I)I

    .line 37097
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3

    .prologue
    .line 37017
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37018
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->timestamp_:J

    .line 37019
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37020
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->type_:I

    .line 37021
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37022
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    .line 37023
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37025
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37027
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37028
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    .line 37029
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37030
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37031
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37033
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37035
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37036
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAndroidPrimaryId()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37397
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37398
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getAndroidPrimaryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37400
    return-object p0
.end method

.method public clearApnsDeviceToken()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37431
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37432
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getApnsDeviceToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    .line 37434
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37474
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37475
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37477
    return-object p0
.end method

.method public clearCountryCode()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37580
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37581
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37583
    return-object p0
.end method

.method public clearEventPayload()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    .line 37296
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37298
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37527
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37528
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37530
    return-object p0
.end method

.method public clearRoutingInfo()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37344
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37345
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getRoutingInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37347
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3

    .prologue
    .line 37191
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->timestamp_:J

    .line 37194
    return-object p0
.end method

.method public clearType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 37212
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37213
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->type_:I

    .line 37215
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3

    .prologue
    .line 37040
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

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
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidPrimaryId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37366
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37367
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37368
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37369
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37372
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

.method public getAndroidPrimaryIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37377
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37378
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37379
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37381
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37384
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

.method public getApnsDeviceToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 37419
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37443
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37444
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37445
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37446
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37449
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

.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37454
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37455
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37456
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37458
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37461
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

.method public getCountryCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37549
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37550
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37551
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37552
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37555
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

.method public getCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37560
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37561
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37562
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37564
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37567
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 37044
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37001
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    return-object v0
.end method

.method public getEventPayload(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "index"

    .prologue
    .line 37235
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public getEventPayloadCount()I
    .registers 2

    .prologue
    .line 37232
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventPayloadList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37229
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37496
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37497
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37498
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37499
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37502
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

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37507
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37508
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37509
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37511
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37514
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

.method public getRoutingInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37313
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37314
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37315
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37316
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37319
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

.method public getRoutingInfoBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37324
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37325
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37326
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37328
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37331
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

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 37182
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 37203
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->type_:I

    return v0
.end method

.method public hasAndroidPrimaryId()Z
    .registers 3

    .prologue
    .line 37363
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

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

.method public hasApnsDeviceToken()Z
    .registers 3

    .prologue
    .line 37416
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

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

.method public hasApplicationId()Z
    .registers 3

    .prologue
    .line 37440
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

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

.method public hasCountryCode()Z
    .registers 3

    .prologue
    .line 37546
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLanguageCode()Z
    .registers 3

    .prologue
    .line 37493
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRoutingInfo()Z
    .registers 3

    .prologue
    .line 37310
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37179
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 37200
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 37150
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_8

    .line 37152
    const/4 v0, 0x0

    .line 37154
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37101
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37146
    :cond_6
    :goto_6
    return-object p0

    .line 37102
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37103
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 37105
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 37106
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 37108
    :cond_21
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44500(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 37109
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 37110
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44500(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    .line 37111
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37118
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasRoutingInfo()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 37119
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37120
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44600(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37123
    :cond_51
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasAndroidPrimaryId()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 37124
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37125
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44700(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37128
    :cond_63
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasApnsDeviceToken()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 37129
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getApnsDeviceToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->setApnsDeviceToken(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 37131
    :cond_70
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasApplicationId()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 37132
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37133
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44900(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37136
    :cond_82
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 37137
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37138
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$45000(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37141
    :cond_94
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37142
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37143
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$45100(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    goto/16 :goto_6

    .line 37113
    :cond_a8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37114
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->access$44500(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37161
    const/4 v2, 0x0

    .line 37163
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 37168
    if-eqz v2, :cond_10

    .line 37169
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 37172
    :cond_10
    return-object p0

    .line 37164
    :catch_11
    move-exception v1

    .line 37165
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-object v2, v0

    .line 37166
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 37168
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 37169
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    :cond_21
    throw v3
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
    .line 37001
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37001
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

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
    .line 37001
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeEventPayload(I)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 37301
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37302
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 37304
    return-object p0
.end method

.method public setAndroidPrimaryId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37388
    if-nez p1, :cond_8

    .line 37389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37391
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37392
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37394
    return-object p0
.end method

.method public setAndroidPrimaryIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37404
    if-nez p1, :cond_8

    .line 37405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37407
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37408
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->androidPrimaryId_:Ljava/lang/Object;

    .line 37410
    return-object p0
.end method

.method public setApnsDeviceToken(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37422
    if-nez p1, :cond_8

    .line 37423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37425
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37426
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    .line 37428
    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37465
    if-nez p1, :cond_8

    .line 37466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37468
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37469
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37471
    return-object p0
.end method

.method public setApplicationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37481
    if-nez p1, :cond_8

    .line 37482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37484
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37485
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->applicationId_:Ljava/lang/Object;

    .line 37487
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37571
    if-nez p1, :cond_8

    .line 37572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37574
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37575
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37577
    return-object p0
.end method

.method public setCountryCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37587
    if-nez p1, :cond_8

    .line 37588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37590
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37591
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->countryCode_:Ljava/lang/Object;

    .line 37593
    return-object p0
.end method

.method public setEventPayload(ILcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37249
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37250
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37252
    return-object p0
.end method

.method public setEventPayload(ILcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37239
    if-nez p2, :cond_8

    .line 37240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37242
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->ensureEventPayloadIsMutable()V

    .line 37243
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37245
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37518
    if-nez p1, :cond_8

    .line 37519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37521
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37522
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37524
    return-object p0
.end method

.method public setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37534
    if-nez p1, :cond_8

    .line 37535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37537
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37538
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->languageCode_:Ljava/lang/Object;

    .line 37540
    return-object p0
.end method

.method public setRoutingInfo(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37335
    if-nez p1, :cond_8

    .line 37336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37338
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37339
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37341
    return-object p0
.end method

.method public setRoutingInfoBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37351
    if-nez p1, :cond_8

    .line 37352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37354
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37355
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->routingInfo_:Ljava/lang/Object;

    .line 37357
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37185
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37186
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->timestamp_:J

    .line 37188
    return-object p0
.end method

.method public setType(I)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37206
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->bitField0_:I

    .line 37207
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->type_:I

    .line 37209
    return-object p0
.end method
