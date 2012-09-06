.class public final Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendsFeedsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;",
        "Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$FriendsFeedsListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private friendsFeeds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15553
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    .line 15554
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->maybeForceBuilderInitialization()V

    .line 15555
    return-void
.end method

.method static synthetic access$19100(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15548
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19200()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 1

    .prologue
    .line 15548
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15588
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    .line 15589
    .local v0, result:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15590
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 15593
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 1

    .prologue
    .line 15560
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFriendsFeedsIsMutable()V
    .registers 3

    .prologue
    .line 15665
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 15666
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    .line 15667
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    .line 15669
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15558
    return-void
.end method


# virtual methods
.method public addAllFriendsFeeds(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;"
        }
    .end annotation

    .prologue
    .line 15732
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$FriendFeeds;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15733
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15735
    return-object p0
.end method

.method public addFriendsFeeds(ILcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15725
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15726
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15728
    return-object p0
.end method

.method public addFriendsFeeds(ILcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15708
    if-nez p2, :cond_8

    .line 15709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15711
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15712
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15714
    return-object p0
.end method

.method public addFriendsFeeds(Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 15718
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15719
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15721
    return-object p0
.end method

.method public addFriendsFeeds(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 15698
    if-nez p1, :cond_8

    .line 15699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15701
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15702
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15704
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 3

    .prologue
    .line 15579
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    .line 15580
    .local v0, result:Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15581
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15583
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 4

    .prologue
    .line 15597
    new-instance v0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;-><init>(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 15598
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 15600
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    .line 15601
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    .line 15603
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->access$19402(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;Ljava/util/List;)Ljava/util/List;

    .line 15604
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 2

    .prologue
    .line 15564
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    .line 15566
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    .line 15567
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFriendsFeeds()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 2

    .prologue
    .line 15738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    .line 15739
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    .line 15741
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 3

    .prologue
    .line 15571
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

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
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;
    .registers 2

    .prologue
    .line 15575
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15548
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
    .registers 3
    .parameter "index"

    .prologue
    .line 15678
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    return-object p0
.end method

.method public getFriendsFeedsCount()I
    .registers 2

    .prologue
    .line 15675
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFriendsFeedsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15672
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 15623
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->getFriendsFeedsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 15624
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->getFriendsFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15626
    const/4 v1, 0x0

    .line 15629
    :goto_12
    return v1

    .line 15623
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15629
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 15608
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 15619
    :goto_7
    return-object v0

    .line 15609
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->access$19400(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 15610
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 15611
    #getter for: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->access$19400(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    .line 15612
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 15619
    goto :goto_7

    .line 15614
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15615
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->friendsFeeds_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;->access$19400(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15637
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 15638
    sparse-switch v0, :sswitch_data_20

    .line 15643
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 15645
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 15641
    goto :goto_e

    .line 15650
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$FriendFeeds;->newBuilder()Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;

    move-result-object v0

    .line 15651
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15652
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->addFriendsFeeds(Lcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    goto :goto_0

    .line 15638
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
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
    .line 15548
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15548
    check-cast p1, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$FriendsFeedsList;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

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
    .line 15548
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFriendsFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 15744
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15745
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15747
    return-object p0
.end method

.method public setFriendsFeeds(ILcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 15692
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15693
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$FriendFeeds$Builder;->build()Lcom/google/feedreader/extrpc/Client$FriendFeeds;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15695
    return-object p0
.end method

.method public setFriendsFeeds(ILcom/google/feedreader/extrpc/Client$FriendFeeds;)Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 15682
    if-nez p2, :cond_8

    .line 15683
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15685
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->ensureFriendsFeedsIsMutable()V

    .line 15686
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$FriendsFeedsList$Builder;->friendsFeeds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15688
    return-object p0
.end method
