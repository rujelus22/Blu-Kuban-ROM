.class public final Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$FriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$FriendsList;",
        "Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$FriendsListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private encodedSharersList_:Ljava/lang/Object;

.field private friendsFeedsCount_:I

.field private friends_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13184
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    .line 13433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    .line 13185
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->maybeForceBuilderInitialization()V

    .line 13186
    return-void
.end method

.method static synthetic access$15900(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13179
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16000()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 1

    .prologue
    .line 13179
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13223
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    .line 13224
    .local v0, result:Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 13225
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 13228
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 1

    .prologue
    .line 13191
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFriendsIsMutable()V
    .registers 3

    .prologue
    .line 13326
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 13327
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    .line 13328
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13330
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13189
    return-void
.end method


# virtual methods
.method public addAllFriends(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Friend;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;"
        }
    .end annotation

    .prologue
    .line 13393
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Friend;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13394
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13396
    return-object p0
.end method

.method public addFriends(ILcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 13386
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13387
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13389
    return-object p0
.end method

.method public addFriends(ILcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13369
    if-nez p2, :cond_8

    .line 13370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13372
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13373
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13375
    return-object p0
.end method

.method public addFriends(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 13379
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13380
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13382
    return-object p0
.end method

.method public addFriends(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 13359
    if-nez p1, :cond_8

    .line 13360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13362
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13363
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13365
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 3

    .prologue
    .line 13214
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    .line 13215
    .local v0, result:Lcom/google/feedreader/extrpc/Client$FriendsList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13216
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13218
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 6

    .prologue
    .line 13232
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsList;-><init>(Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 13233
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13234
    const/4 v2, 0x0

    .line 13235
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 13236
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    .line 13237
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13239
    :cond_1e
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16202(Lcom/google/feedreader/extrpc/Client$FriendsList;Ljava/util/List;)Ljava/util/List;

    .line 13240
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 13241
    or-int/lit8 v2, v2, 0x1

    .line 13243
    :cond_2a
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friendsFeedsCount_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->friendsFeedsCount_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16302(Lcom/google/feedreader/extrpc/Client$FriendsList;I)I

    .line 13244
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3f

    .line 13245
    or-int/lit8 v1, v2, 0x2

    .line 13247
    :goto_36
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->encodedSharersList_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16402(Lcom/google/feedreader/extrpc/Client$FriendsList;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13248
    #setter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16502(Lcom/google/feedreader/extrpc/Client$FriendsList;I)I

    .line 13249
    return-object v0

    :cond_3f
    move v1, v2

    goto :goto_36
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2

    .prologue
    .line 13195
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    .line 13197
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13198
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friendsFeedsCount_:I

    .line 13199
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    .line 13201
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13202
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEncodedSharersList()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2

    .prologue
    .line 13457
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13458
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getEncodedSharersList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    .line 13460
    return-object p0
.end method

.method public clearFriends()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2

    .prologue
    .line 13399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    .line 13400
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13402
    return-object p0
.end method

.method public clearFriendsFeedsCount()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 2

    .prologue
    .line 13426
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13427
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friendsFeedsCount_:I

    .line 13429
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 3

    .prologue
    .line 13206
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

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
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsList;
    .registers 2

    .prologue
    .line 13210
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSharersList()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13438
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    .line 13439
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 13440
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13441
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    move-object v2, v1

    .line 13444
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getFriends(I)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .parameter "index"

    .prologue
    .line 13339
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend;

    return-object p0
.end method

.method public getFriendsCount()I
    .registers 2

    .prologue
    .line 13336
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFriendsFeedsCount()I
    .registers 2

    .prologue
    .line 13417
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friendsFeedsCount_:I

    return v0
.end method

.method public getFriendsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13333
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEncodedSharersList()Z
    .registers 3

    .prologue
    .line 13435
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

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

.method public hasFriendsFeedsCount()Z
    .registers 3

    .prologue
    .line 13414
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

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
    .line 13274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->getFriendsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 13275
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->getFriends(I)Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Friend;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 13277
    const/4 v1, 0x0

    .line 13280
    :goto_12
    return v1

    .line 13274
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13280
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 13253
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 13270
    :goto_7
    return-object v0

    .line 13254
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16200(Lcom/google/feedreader/extrpc/Client$FriendsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 13255
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 13256
    #getter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16200(Lcom/google/feedreader/extrpc/Client$FriendsList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    .line 13257
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13264
    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->hasFriendsFeedsCount()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 13265
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getFriendsFeedsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->setFriendsFeedsCount(I)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    .line 13267
    :cond_33
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->hasEncodedSharersList()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 13268
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->getEncodedSharersList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->setEncodedSharersList(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    :cond_40
    move-object v0, p0

    .line 13270
    goto :goto_7

    .line 13259
    :cond_42
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13260
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$FriendsList;->friends_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendsList;->access$16200(Lcom/google/feedreader/extrpc/Client$FriendsList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13288
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 13289
    sparse-switch v0, :sswitch_data_3a

    .line 13294
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 13296
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 13292
    goto :goto_e

    .line 13301
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    .line 13302
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13303
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->addFriends(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    goto :goto_0

    .line 13307
    :sswitch_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13308
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friendsFeedsCount_:I

    goto :goto_0

    .line 13312
    :sswitch_2d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13313
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    goto :goto_0

    .line 13289
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x10 -> :sswitch_20
        0x1a -> :sswitch_2d
    .end sparse-switch
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
    .line 13179
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13179
    check-cast p1, Lcom/google/feedreader/extrpc/Client$FriendsList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsList;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

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
    .line 13179
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFriends(I)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 13405
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13406
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13408
    return-object p0
.end method

.method public setEncodedSharersList(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13448
    if-nez p1, :cond_8

    .line 13449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13451
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13452
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    .line 13454
    return-object p0
.end method

.method setEncodedSharersList(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 13463
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13464
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->encodedSharersList_:Ljava/lang/Object;

    .line 13466
    return-void
.end method

.method public setFriends(ILcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 13353
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13354
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13356
    return-object p0
.end method

.method public setFriends(ILcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 13343
    if-nez p2, :cond_8

    .line 13344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13346
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->ensureFriendsIsMutable()V

    .line 13347
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friends_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13349
    return-object p0
.end method

.method public setFriendsFeedsCount(I)Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13420
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->bitField0_:I

    .line 13421
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$FriendsList$Builder;->friendsFeedsCount_:I

    .line 13423
    return-object p0
.end method
