.class public final Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SearchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

.field private bitField0_:I

.field private peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

.field private searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47952
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 48094
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 48137
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 48180
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 47953
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 47954
    return-void
.end method

.method static synthetic access$67400()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 1

    .prologue
    .line 47947
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 1

    .prologue
    .line 47959
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 47957
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 3

    .prologue
    .line 47982
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    .line 47983
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 47984
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 47986
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 6

    .prologue
    .line 48000
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 48001
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48002
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 48003
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 48004
    or-int/lit8 v2, v2, 0x1

    .line 48006
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$67602(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 48007
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 48008
    or-int/lit8 v2, v2, 0x2

    .line 48010
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$67702(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 48011
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 48012
    or-int/lit8 v2, v2, 0x4

    .line 48014
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$67802(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 48015
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$67902(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;I)I

    .line 48016
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 47963
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 47964
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 47965
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 47966
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 47967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 47968
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 47969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 47970
    return-object p0
.end method

.method public clearActivityRequestData()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 48216
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 48218
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48219
    return-object p0
.end method

.method public clearPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 48173
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 48175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48176
    return-object p0
.end method

.method public clearSearchQuery()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 48130
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 48132
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48133
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3

    .prologue
    .line 47974
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

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
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 48185
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 2

    .prologue
    .line 47978
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 2

    .prologue
    .line 48142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    return-object v0
.end method

.method public getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2

    .prologue
    .line 48099
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    return-object v0
.end method

.method public hasActivityRequestData()Z
    .registers 3

    .prologue
    .line 48182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

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

.method public hasPeopleRequestData()Z
    .registers 3

    .prologue
    .line 48139
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

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

.method public hasSearchQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48096
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48204
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 48206
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 48212
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48213
    return-object p0

    .line 48209
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

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
    .line 47947
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

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
    .line 47947
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48048
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48049
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 48054
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48056
    :sswitch_d
    return-object p0

    .line 48061
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    .line 48062
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasSearchQuery()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 48063
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 48065
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48066
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_0

    .line 48070
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    .line 48071
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasPeopleRequestData()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 48072
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 48074
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48075
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_0

    .line 48079
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    .line 48080
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasActivityRequestData()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 48081
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 48083
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48084
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_0

    .line 48049
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 48020
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 48030
    :cond_6
    :goto_6
    return-object p0

    .line 48021
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48022
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 48024
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasPeopleRequestData()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48025
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergePeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 48027
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasActivityRequestData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48028
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_6
.end method

.method public mergePeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48161
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 48163
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 48169
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48170
    return-object p0

    .line 48166
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    goto :goto_1f
.end method

.method public mergeSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 48118
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 48120
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 48126
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48127
    return-object p0

    .line 48123
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    goto :goto_1f
.end method

.method public setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 48198
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 48200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48201
    return-object p0
.end method

.method public setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48188
    if-nez p1, :cond_8

    .line 48189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48191
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 48193
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48194
    return-object p0
.end method

.method public setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 48155
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 48157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48158
    return-object p0
.end method

.method public setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48145
    if-nez p1, :cond_8

    .line 48146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48148
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 48150
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48151
    return-object p0
.end method

.method public setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 48112
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 48114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48115
    return-object p0
.end method

.method public setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48102
    if-nez p1, :cond_8

    .line 48103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48105
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 48107
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 48108
    return-object p0
.end method
