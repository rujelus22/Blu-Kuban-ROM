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
    .line 49567
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 49691
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49734
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49568
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 49569
    return-void
.end method

.method static synthetic access$69500(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49562
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$69600()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 1

    .prologue
    .line 49562
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
    .line 49604
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    .line 49605
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 49606
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 49609
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 1

    .prologue
    .line 49574
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 49572
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 3

    .prologue
    .line 49595
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    .line 49596
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 49597
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 49599
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 6

    .prologue
    .line 49613
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 49614
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49615
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 49616
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 49617
    or-int/lit8 v2, v2, 0x1

    .line 49619
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->access$69802(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49620
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 49621
    or-int/lit8 v2, v2, 0x2

    .line 49623
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->access$69902(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49624
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->access$70002(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;I)I

    .line 49625
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 2

    .prologue
    .line 49578
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 49579
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49581
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49582
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49583
    return-object p0
.end method

.method public clearActivityResults()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 2

    .prologue
    .line 49770
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49773
    return-object p0
.end method

.method public clearPeopleResults()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 2

    .prologue
    .line 49727
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49730
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3

    .prologue
    .line 49587
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
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2

    .prologue
    .line 49739
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49562
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;
    .registers 2

    .prologue
    .line 49591
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    .registers 2

    .prologue
    .line 49696
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    return-object v0
.end method

.method public hasActivityResults()Z
    .registers 3

    .prologue
    .line 49736
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

    .line 49693
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

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
    .line 49640
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->hasActivityResults()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 49641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 49643
    const/4 v0, 0x0

    .line 49646
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49760
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49766
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49767
    return-object p0

    .line 49763
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
    .line 49562
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49562
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

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
    .line 49562
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
    .line 49654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 49655
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 49660
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49662
    :sswitch_d
    return-object p0

    .line 49667
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    .line 49668
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->hasPeopleResults()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 49669
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    .line 49671
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49672
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->setPeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    goto :goto_0

    .line 49676
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    .line 49677
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->hasActivityResults()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 49678
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    .line 49680
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49681
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->setActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    goto :goto_0

    .line 49655
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
    .line 49629
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 49636
    :cond_6
    :goto_6
    return-object p0

    .line 49630
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->hasPeopleResults()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49631
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getPeopleResults()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergePeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    .line 49633
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->hasActivityResults()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49634
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse;->getActivityResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->mergeActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;

    goto :goto_6
.end method

.method public mergePeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49715
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49717
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49723
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49724
    return-object p0

    .line 49720
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    goto :goto_1f
.end method

.method public setActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49752
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49754
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49755
    return-object p0
.end method

.method public setActivityResults(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49742
    if-nez p1, :cond_8

    .line 49743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49745
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->activityResults_:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 49747
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49748
    return-object p0
.end method

.method public setPeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49709
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49712
    return-object p0
.end method

.method public setPeopleResults(Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;)Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49699
    if-nez p1, :cond_8

    .line 49700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49702
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->peopleResults_:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    .line 49704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchResponse$Builder;->bitField0_:I

    .line 49705
    return-object p0
.end method
