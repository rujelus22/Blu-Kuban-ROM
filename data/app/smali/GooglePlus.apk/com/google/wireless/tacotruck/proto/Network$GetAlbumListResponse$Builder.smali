.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private continuationToken_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15160
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 15161
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->maybeForceBuilderInitialization()V

    .line 15162
    return-void
.end method

.method static synthetic access$19500(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15155
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19600()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 1

    .prologue
    .line 15155
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15197
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    .line 15198
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15199
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 15202
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 1

    .prologue
    .line 15167
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumIsMutable()V
    .registers 3

    .prologue
    .line 15288
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 15289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 15290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15292
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15165
    return-void
.end method


# virtual methods
.method public addAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15348
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15351
    return-object p0
.end method

.method public addAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15331
    if-nez p2, :cond_8

    .line 15332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15334
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15335
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15337
    return-object p0
.end method

.method public addAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 15341
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15342
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15344
    return-object p0
.end method

.method public addAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15321
    if-nez p1, :cond_8

    .line 15322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15324
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15325
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15327
    return-object p0
.end method

.method public addAllAlbum(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 15355
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15356
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15358
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 3

    .prologue
    .line 15188
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    .line 15189
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15190
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15192
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 6

    .prologue
    .line 15206
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 15207
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15208
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15209
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 15210
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 15211
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15213
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;Ljava/util/List;)Ljava/util/List;

    .line 15214
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 15215
    or-int/lit8 v2, v2, 0x1

    .line 15217
    :cond_2a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->continuationToken_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;I)I

    .line 15218
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$20002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;I)I

    .line 15219
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 15171
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 15173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    .line 15175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15176
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 15361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 15362
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15364
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 2

    .prologue
    .line 15388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15389
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    .line 15391
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3

    .prologue
    .line 15180
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

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
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 3
    .parameter "index"

    .prologue
    .line 15301
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getAlbumCount()I
    .registers 2

    .prologue
    .line 15298
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlbumList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15295
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 15379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;
    .registers 2

    .prologue
    .line 15184
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 15376
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    .line 15241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->getAlbumCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 15242
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->getAlbum(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15244
    const/4 v1, 0x0

    .line 15247
    :goto_12
    return v1

    .line 15241
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15247
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
    .line 15155
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15155
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

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
    .line 15155
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15256
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 15261
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15263
    :sswitch_d
    return-object p0

    .line 15268
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 15269
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15270
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->addAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    goto :goto_0

    .line 15274
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15275
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    goto :goto_0

    .line 15256
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15223
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15237
    :cond_6
    :goto_6
    return-object p0

    .line 15224
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19800(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 15225
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 15226
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19800(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    .line 15227
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15234
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15235
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->getContinuationToken()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;

    goto :goto_6

    .line 15229
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15230
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;->access$19800(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15315
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15316
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15318
    return-object p0
.end method

.method public setAlbum(ILcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15305
    if-nez p2, :cond_8

    .line 15306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15308
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->ensureAlbumIsMutable()V

    .line 15309
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15311
    return-object p0
.end method

.method public setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->bitField0_:I

    .line 15383
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponse$Builder;->continuationToken_:I

    .line 15385
    return-object p0
.end method
