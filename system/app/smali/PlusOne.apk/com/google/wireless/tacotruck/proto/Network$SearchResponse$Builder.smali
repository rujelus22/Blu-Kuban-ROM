.class public final Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SearchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

.field private bitField0_:I

.field private peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48417
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 48541
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48584
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48418
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 48419
    return-void
.end method

.method static synthetic access$68000(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48412
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$68100()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 1

    .prologue
    .line 48412
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48454
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    .line 48455
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 48456
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 48459
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 1

    .prologue
    .line 48424
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 48422
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 6

    .prologue
    .line 48463
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 48464
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48465
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 48466
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 48467
    or-int/lit8 v2, v2, 0x1

    .line 48469
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->access$68302(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48470
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 48471
    or-int/lit8 v2, v2, 0x2

    .line 48473
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->access$68402(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48474
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->access$68502(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;I)I

    .line 48475
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 2

    .prologue
    .line 48428
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 48429
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48430
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48431
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48432
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48433
    return-object p0
.end method

.method public clearActivityResults()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 2

    .prologue
    .line 48620
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48623
    return-object p0
.end method

.method public clearPeopleResults()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 2

    .prologue
    .line 48577
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48579
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48580
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3

    .prologue
    .line 48437
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

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
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2

    .prologue
    .line 48589
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 2

    .prologue
    .line 48441
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 48546
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method public hasActivityResults()Z
    .registers 3

    .prologue
    .line 48586
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

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

.method public hasPeopleResults()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48543
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 48610
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48616
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48617
    return-object p0

    .line 48613
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    goto :goto_1f
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
    .line 48412
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

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
    .line 48412
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48504
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48505
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 48510
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48512
    :sswitch_d
    return-object p0

    .line 48517
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    .line 48518
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->hasPeopleResults()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 48519
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    .line 48521
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48522
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->setPeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    goto :goto_0

    .line 48526
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    .line 48527
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->hasActivityResults()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 48528
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    .line 48530
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48531
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->setActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    goto :goto_0

    .line 48505
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 48479
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 48486
    :cond_6
    :goto_6
    return-object p0

    .line 48480
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->hasPeopleResults()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48481
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergePeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    .line 48483
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->hasActivityResults()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48484
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    goto :goto_6
.end method

.method public mergePeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48565
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 48567
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48573
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48574
    return-object p0

    .line 48570
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    goto :goto_1f
.end method

.method public setActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 48602
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48605
    return-object p0
.end method

.method public setActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48592
    if-nez p1, :cond_8

    .line 48593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48595
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 48597
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48598
    return-object p0
.end method

.method public setPeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 48559
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48561
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48562
    return-object p0
.end method

.method public setPeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48549
    if-nez p1, :cond_8

    .line 48550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48552
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 48554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 48555
    return-object p0
.end method
