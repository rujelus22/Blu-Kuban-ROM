.class public final Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$FriendFeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
        "Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private feeds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Feed;",
            ">;"
        }
    .end annotation
.end field

.field private friendUserId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15115
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    .line 15280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    .line 15116
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->maybeForceBuilderInitialization()V

    .line 15117
    return-void
.end method

.method static synthetic access$18500(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15110
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18600()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 1

    .prologue
    .line 15110
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    .line 15153
    .local v0, result:Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15154
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 15157
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 1

    .prologue
    .line 15122
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFeedsIsMutable()V
    .registers 3

    .prologue
    .line 15283
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 15284
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    .line 15285
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15287
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15120
    return-void
.end method


# virtual methods
.method public addAllFeeds(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Feed;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;"
        }
    .end annotation

    .prologue
    .line 15350
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Feed;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15351
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15353
    return-object p0
.end method

.method public addFeeds(ILcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15343
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15344
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15346
    return-object p0
.end method

.method public addFeeds(ILcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15326
    if-nez p2, :cond_8

    .line 15327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15329
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15330
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15332
    return-object p0
.end method

.method public addFeeds(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 4
    .parameter

    .prologue
    .line 15336
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15337
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15339
    return-object p0
.end method

.method public addFeeds(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 3
    .parameter

    .prologue
    .line 15316
    if-nez p1, :cond_8

    .line 15317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15319
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15320
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15322
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3

    .prologue
    .line 15143
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    .line 15144
    .local v0, result:Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15145
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15147
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 5

    .prologue
    .line 15161
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;-><init>(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 15162
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15163
    const/4 v2, 0x0

    .line 15164
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_33

    .line 15165
    or-int/lit8 v1, v2, 0x1

    .line 15167
    :goto_10
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$FriendFeeds;->friendUserId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->access$18802(Lcom/google/feedreader/extrpc/Client$FriendFeeds;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15168
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 15169
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    .line 15170
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15172
    :cond_2a
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->access$18902(Lcom/google/feedreader/extrpc/Client$FriendFeeds;Ljava/util/List;)Ljava/util/List;

    .line 15173
    #setter for: Lcom/google/feedreader/extrpc/Client$FriendFeeds;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->access$19002(Lcom/google/feedreader/extrpc/Client$FriendFeeds;I)I

    .line 15174
    return-object v0

    :cond_33
    move v1, v2

    goto :goto_10
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 2

    .prologue
    .line 15126
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    .line 15128
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    .line 15130
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15131
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->clear()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->clear()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFeeds()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 2

    .prologue
    .line 15356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    .line 15357
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15359
    return-object p0
.end method

.method public clearFriendUserId()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 2

    .prologue
    .line 15268
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15269
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getFriendUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    .line 15271
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 3

    .prologue
    .line 15135
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

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
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 2

    .prologue
    .line 15139
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15110
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    return-object v0
.end method

.method public getFeeds(I)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "index"

    .prologue
    .line 15296
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed;

    return-object p0
.end method

.method public getFeedsCount()I
    .registers 2

    .prologue
    .line 15293
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeedsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15290
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendUserId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15249
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    .line 15250
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 15251
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15252
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    move-object v2, v1

    .line 15255
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

.method public hasFriendUserId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 15246
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 15196
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->hasFriendUserId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 15206
    :goto_8
    return v1

    .line 15200
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->getFeedsCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 15201
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->getFeeds(I)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Feed;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v2

    .line 15203
    goto :goto_8

    .line 15200
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 15206
    :cond_1f
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 4
    .parameter

    .prologue
    .line 15178
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 15192
    :goto_7
    return-object v0

    .line 15179
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->hasFriendUserId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 15180
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->getFriendUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->setFriendUserId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    .line 15182
    :cond_15
    #getter for: Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->access$18900(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 15183
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 15184
    #getter for: Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->access$18900(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    .line 15185
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    :cond_33
    :goto_33
    move-object v0, p0

    .line 15192
    goto :goto_7

    .line 15187
    :cond_35
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15188
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$FriendFeeds;->feeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->access$18900(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_33
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 15215
    sparse-switch v0, :sswitch_data_2e

    .line 15220
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 15222
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 15218
    goto :goto_e

    .line 15227
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15228
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    goto :goto_0

    .line 15232
    :sswitch_1e
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    .line 15233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15234
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->addFeeds(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    goto :goto_0

    .line 15215
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
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
    .line 15110
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15110
    check-cast p1, Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

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
    .line 15110
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 3
    .parameter

    .prologue
    .line 15362
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15363
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15365
    return-object p0
.end method

.method public setFeeds(ILcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 15310
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15311
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15313
    return-object p0
.end method

.method public setFeeds(ILcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 15300
    if-nez p2, :cond_8

    .line 15301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15303
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->ensureFeedsIsMutable()V

    .line 15304
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->feeds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15306
    return-object p0
.end method

.method public setFriendUserId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15259
    if-nez p1, :cond_8

    .line 15260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15262
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15263
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    .line 15265
    return-object p0
.end method

.method setFriendUserId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 15274
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->bitField0_:I

    .line 15275
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->friendUserId_:Ljava/lang/Object;

    .line 15277
    return-void
.end method
