.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private query_:Ljava/lang/Object;

.field private searchRadius_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26412
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26546
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 26413
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 26414
    return-void
.end method

.method static synthetic access$36400()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 1

    .prologue
    .line 26407
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 1

    .prologue
    .line 26419
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26417
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 3

    .prologue
    .line 26442
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    .line 26443
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26444
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26446
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 6

    .prologue
    .line 26460
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 26461
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26462
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26463
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26464
    or-int/lit8 v2, v2, 0x1

    .line 26466
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$36602(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26467
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26468
    or-int/lit8 v2, v2, 0x2

    .line 26470
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$36702(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26471
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 26472
    or-int/lit8 v2, v2, 0x4

    .line 26474
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$36802(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;I)I

    .line 26475
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$36902(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;I)I

    .line 26476
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 26423
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26424
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26425
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 26427
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26428
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    .line 26429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26430
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 26582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26584
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26585
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 26613
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26614
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 26616
    return-object p0
.end method

.method public clearSearchRadius()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 26639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26640
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    .line 26642
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3

    .prologue
    .line 26434
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

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
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26407
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 2

    .prologue
    .line 26438
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 26551
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26594
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 26595
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26596
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26597
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 26600
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

.method public getSearchRadius()I
    .registers 2

    .prologue
    .line 26630
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    return v0
.end method

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26548
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 26591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

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

.method public hasSearchRadius()Z
    .registers 3

    .prologue
    .line 26627
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

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
    .line 26407
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

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
    .line 26407
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 26509
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 26514
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26516
    :sswitch_d
    return-object p0

    .line 26521
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 26522
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 26523
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 26525
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26526
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    goto :goto_0

    .line 26530
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26531
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 26535
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26536
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    goto :goto_0

    .line 26509
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 26480
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26490
    :cond_6
    :goto_6
    return-object p0

    .line 26481
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26482
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    .line 26484
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 26485
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    .line 26487
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasSearchRadius()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26488
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getSearchRadius()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setSearchRadius(I)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    goto :goto_6
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 26572
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26578
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26579
    return-object p0

    .line 26575
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_1f
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26564
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26567
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26554
    if-nez p1, :cond_8

    .line 26555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26557
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 26559
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26560
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26604
    if-nez p1, :cond_8

    .line 26605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26607
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26608
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 26610
    return-object p0
.end method

.method public setSearchRadius(I)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 26634
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    .line 26636
    return-object p0
.end method
