.class public final Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;",
        "Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private key_:Ljava/lang/Object;

.field private lastUpdated_:J

.field private offset_:I

.field private search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11317
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    .line 11162
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 11163
    return-void
.end method

.method static synthetic access$14700()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 1

    .prologue
    .line 11156
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 1

    .prologue
    .line 11168
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11166
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 3

    .prologue
    .line 11195
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    .line 11196
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11197
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11199
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 6

    .prologue
    .line 11213
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 11214
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11215
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11216
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 11217
    or-int/lit8 v2, v2, 0x1

    .line 11219
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->access$14902(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11220
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 11221
    or-int/lit8 v2, v2, 0x2

    .line 11223
    :cond_1c
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->offset_:I

    #setter for: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->access$15002(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;I)I

    .line 11224
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 11225
    or-int/lit8 v2, v2, 0x4

    .line 11227
    :cond_28
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->count_:I

    #setter for: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->access$15102(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;I)I

    .line 11228
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 11229
    or-int/lit8 v2, v2, 0x8

    .line 11231
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->lastUpdated_:J

    #setter for: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->lastUpdated_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->access$15202(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;J)J

    .line 11232
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 11233
    or-int/lit8 v2, v2, 0x10

    .line 11235
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->access$15302(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11236
    #setter for: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->access$15402(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;I)I

    .line 11237
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11172
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11173
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11174
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11175
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->offset_:I

    .line 11176
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11177
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->count_:I

    .line 11178
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->lastUpdated_:J

    .line 11180
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    .line 11182
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11183
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 2

    .prologue
    .line 11395
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11396
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->count_:I

    .line 11398
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 2

    .prologue
    .line 11447
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11448
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    .line 11450
    return-object p0
.end method

.method public clearLastUpdated()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3

    .prologue
    .line 11416
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11417
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->lastUpdated_:J

    .line 11419
    return-object p0
.end method

.method public clearOffset()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 2

    .prologue
    .line 11374
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11375
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->offset_:I

    .line 11377
    return-object p0
.end method

.method public clearSearch()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 2

    .prologue
    .line 11353
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11355
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11356
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3

    .prologue
    .line 11187
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

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
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 11386
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11156
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 2

    .prologue
    .line 11191
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11428
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    .line 11429
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11430
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11431
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    .line 11434
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

.method public getLastUpdated()J
    .registers 3

    .prologue
    .line 11407
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->lastUpdated_:J

    return-wide v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 11365
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->offset_:I

    return v0
.end method

.method public getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2

    .prologue
    .line 11322
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 11383
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 11425
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

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

.method public hasLastUpdated()Z
    .registers 3

    .prologue
    .line 11404
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 11362
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

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

.method public hasSearch()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11319
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

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
    .line 11261
    const/4 v0, 0x1

    return v0
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
    .line 11156
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11156
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

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
    .line 11156
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11270
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 11275
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11277
    :sswitch_d
    return-object p0

    .line 11282
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    .line 11283
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->hasSearch()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 11284
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    .line 11286
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11287
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->setSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    goto :goto_0

    .line 11291
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11292
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->offset_:I

    goto :goto_0

    .line 11296
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11297
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->count_:I

    goto :goto_0

    .line 11301
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11302
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->lastUpdated_:J

    goto :goto_0

    .line 11306
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11307
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 11270
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_37
        0x20 -> :sswitch_44
        0x2a -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 11241
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11257
    :cond_6
    :goto_6
    return-object p0

    .line 11242
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11243
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    .line 11245
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 11246
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->setOffset(I)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    .line 11248
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11249
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->setCount(I)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    .line 11251
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->hasLastUpdated()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11252
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getLastUpdated()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->setLastUpdated(J)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    .line 11254
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11255
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    goto :goto_6
.end method

.method public mergeSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11341
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 11343
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11349
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11350
    return-object p0

    .line 11346
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    goto :goto_1f
.end method

.method public setCount(I)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11389
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11390
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->count_:I

    .line 11392
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11438
    if-nez p1, :cond_8

    .line 11439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11441
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11442
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->key_:Ljava/lang/Object;

    .line 11444
    return-object p0
.end method

.method public setLastUpdated(J)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 11410
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11411
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->lastUpdated_:J

    .line 11413
    return-object p0
.end method

.method public setOffset(I)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11368
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11369
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->offset_:I

    .line 11371
    return-object p0
.end method

.method public setSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 11335
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11337
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11338
    return-object p0
.end method

.method public setSearch(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11325
    if-nez p1, :cond_8

    .line 11326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11328
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11330
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->bitField0_:I

    .line 11331
    return-object p0
.end method
