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
    .line 49102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 49244
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49287
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49330
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49103
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 49104
    return-void
.end method

.method static synthetic access$68900()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 1

    .prologue
    .line 49097
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 1

    .prologue
    .line 49109
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 49107
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 3

    .prologue
    .line 49132
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    .line 49133
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 49134
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 49136
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 6

    .prologue
    .line 49150
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 49151
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49152
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 49153
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 49154
    or-int/lit8 v2, v2, 0x1

    .line 49156
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$69102(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49157
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 49158
    or-int/lit8 v2, v2, 0x2

    .line 49160
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$69202(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49161
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 49162
    or-int/lit8 v2, v2, 0x4

    .line 49164
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$69302(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49165
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->access$69402(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;I)I

    .line 49166
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 49113
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 49114
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49115
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49116
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49117
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49118
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49120
    return-object p0
.end method

.method public clearActivityRequestData()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 49366
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49368
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49369
    return-object p0
.end method

.method public clearPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 49323
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49326
    return-object p0
.end method

.method public clearSearchQuery()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 2

    .prologue
    .line 49280
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49283
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3

    .prologue
    .line 49124
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
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 49335
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49097
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 2

    .prologue
    .line 49128
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 2

    .prologue
    .line 49292
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    return-object v0
.end method

.method public getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2

    .prologue
    .line 49249
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    return-object v0
.end method

.method public hasActivityRequestData()Z
    .registers 3

    .prologue
    .line 49332
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
    .line 49289
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

    .line 49246
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

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
    .line 49184
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 49185
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 49187
    const/4 v0, 0x0

    .line 49190
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49356
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49362
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49363
    return-object p0

    .line 49359
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
    .line 49097
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49097
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

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
    .line 49097
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
    .line 49198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 49199
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 49204
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49206
    :sswitch_d
    return-object p0

    .line 49211
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    .line 49212
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasSearchQuery()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 49213
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    .line 49215
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49216
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_0

    .line 49220
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    .line 49221
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasPeopleRequestData()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 49222
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 49224
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49225
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_0

    .line 49229
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    .line 49230
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->hasActivityRequestData()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 49231
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 49233
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49234
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_0

    .line 49199
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
    .line 49170
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 49180
    :cond_6
    :goto_6
    return-object p0

    .line 49171
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49172
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 49174
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasPeopleRequestData()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 49175
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergePeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    .line 49177
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasActivityRequestData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49178
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->mergeActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    goto :goto_6
.end method

.method public mergePeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49311
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49313
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49319
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49320
    return-object p0

    .line 49316
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    goto :goto_1f
.end method

.method public mergeSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49268
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49270
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49276
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49277
    return-object p0

    .line 49273
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    goto :goto_1f
.end method

.method public setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49348
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49351
    return-object p0
.end method

.method public setActivityRequestData(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49338
    if-nez p1, :cond_8

    .line 49339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49341
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 49343
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49344
    return-object p0
.end method

.method public setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49305
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49307
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49308
    return-object p0
.end method

.method public setPeopleRequestData(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49295
    if-nez p1, :cond_8

    .line 49296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49298
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 49300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49301
    return-object p0
.end method

.method public setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49262
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49265
    return-object p0
.end method

.method public setSearchQuery(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49252
    if-nez p1, :cond_8

    .line 49253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49255
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 49257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->bitField0_:I

    .line 49258
    return-object p0
.end method
