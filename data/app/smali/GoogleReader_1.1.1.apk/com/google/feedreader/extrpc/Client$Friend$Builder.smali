.class public final Lcom/google/feedreader/extrpc/Client$Friend$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Friend;",
        "Lcom/google/feedreader/extrpc/Client$Friend$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contactId_:J

.field private displayName_:Ljava/lang/Object;

.field private emailAddresses_:Lcom/google/protobuf/LazyStringList;

.field private flags_:I

.field private givenName_:Ljava/lang/Object;

.field private groupId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private hasSharedItemsOnProfile_:Z

.field private location_:Ljava/lang/Object;

.field private n_:Ljava/lang/Object;

.field private occupation_:Ljava/lang/Object;

.field private photoUrl_:Ljava/lang/Object;

.field private profileCardParams_:Ljava/lang/Object;

.field private profileIds_:Lcom/google/protobuf/LazyStringList;

.field private stream_:Ljava/lang/Object;

.field private types_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userIds_:Lcom/google/protobuf/LazyStringList;

.field private websites_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11819
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12235
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 12291
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 12368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    .line 12404
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 12460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    .line 12496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    .line 12553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    .line 12598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    .line 12634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    .line 12670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    .line 12706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    .line 12742
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    .line 12787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    .line 12823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    .line 11820
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->maybeForceBuilderInitialization()V

    .line 11821
    return-void
.end method

.method static synthetic access$13800(Lcom/google/feedreader/extrpc/Client$Friend$Builder;)Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11814
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13900()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 1

    .prologue
    .line 11814
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->create()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11886
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    .line 11887
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 11888
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 11891
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 1

    .prologue
    .line 11826
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEmailAddressesIsMutable()V
    .registers 3

    .prologue
    .line 12406
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 12407
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 12408
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12410
    :cond_17
    return-void
.end method

.method private ensureGroupIdIsMutable()V
    .registers 3

    .prologue
    .line 12744
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 12745
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    .line 12746
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12748
    :cond_17
    return-void
.end method

.method private ensureProfileIdsIsMutable()V
    .registers 3

    .prologue
    .line 12293
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 12294
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 12295
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12297
    :cond_16
    return-void
.end method

.method private ensureTypesIsMutable()V
    .registers 3

    .prologue
    .line 12555
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 12556
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    .line 12557
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12559
    :cond_17
    return-void
.end method

.method private ensureUserIdsIsMutable()V
    .registers 3

    .prologue
    .line 12237
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 12238
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 12239
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12241
    :cond_16
    return-void
.end method

.method private ensureWebsitesIsMutable()V
    .registers 4

    .prologue
    const v2, 0x8000

    .line 12826
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_16

    .line 12827
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    .line 12828
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12830
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11824
    return-void
.end method


# virtual methods
.method public addAllEmailAddresses(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 12442
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureEmailAddressesIsMutable()V

    .line 12443
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12445
    return-object p0
.end method

.method public addAllGroupId(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 12774
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureGroupIdIsMutable()V

    .line 12775
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12777
    return-object p0
.end method

.method public addAllProfileIds(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 12329
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureProfileIdsIsMutable()V

    .line 12330
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12332
    return-object p0
.end method

.method public addAllTypes(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 12585
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureTypesIsMutable()V

    .line 12586
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12588
    return-object p0
.end method

.method public addAllUserIds(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 12273
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureUserIdsIsMutable()V

    .line 12274
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12276
    return-object p0
.end method

.method public addAllWebsites(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 12893
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Friend$Website;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12894
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12896
    return-object p0
.end method

.method public addEmailAddresses(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter

    .prologue
    .line 12432
    if-nez p1, :cond_8

    .line 12433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12435
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureEmailAddressesIsMutable()V

    .line 12436
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12438
    return-object p0
.end method

.method addEmailAddresses(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12454
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureEmailAddressesIsMutable()V

    .line 12455
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12457
    return-void
.end method

.method public addGroupId(J)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 5
    .parameter

    .prologue
    .line 12767
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureGroupIdIsMutable()V

    .line 12768
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12770
    return-object p0
.end method

.method public addProfileIds(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter

    .prologue
    .line 12319
    if-nez p1, :cond_8

    .line 12320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12322
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureProfileIdsIsMutable()V

    .line 12323
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12325
    return-object p0
.end method

.method addProfileIds(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12341
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureProfileIdsIsMutable()V

    .line 12342
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12344
    return-void
.end method

.method public addTypes(I)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter

    .prologue
    .line 12578
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureTypesIsMutable()V

    .line 12579
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12581
    return-object p0
.end method

.method public addUserIds(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter

    .prologue
    .line 12263
    if-nez p1, :cond_8

    .line 12264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12266
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureUserIdsIsMutable()V

    .line 12267
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12269
    return-object p0
.end method

.method addUserIds(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12285
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureUserIdsIsMutable()V

    .line 12286
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12288
    return-void
.end method

.method public addWebsites(ILcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12886
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12887
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12889
    return-object p0
.end method

.method public addWebsites(ILcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12869
    if-nez p2, :cond_8

    .line 12870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12872
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12873
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12875
    return-object p0
.end method

.method public addWebsites(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter

    .prologue
    .line 12879
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12880
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12882
    return-object p0
.end method

.method public addWebsites(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter

    .prologue
    .line 12859
    if-nez p1, :cond_8

    .line 12860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12862
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12863
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12865
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 3

    .prologue
    .line 11877
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    .line 11878
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Friend;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11879
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11881
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 8

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 11895
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Friend;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Friend;-><init>(Lcom/google/feedreader/extrpc/Client$Friend$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 11896
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11897
    const/4 v2, 0x0

    .line 11898
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 11899
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 11901
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11903
    :cond_24
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14102(Lcom/google/feedreader/extrpc/Client$Friend;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11904
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f

    .line 11905
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 11907
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11909
    :cond_3f
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14202(Lcom/google/feedreader/extrpc/Client$Friend;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11910
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4b

    .line 11911
    or-int/lit8 v2, v2, 0x1

    .line 11913
    :cond_4b
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->contactId_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->contactId_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14302(Lcom/google/feedreader/extrpc/Client$Friend;J)J

    .line 11914
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_58

    .line 11915
    or-int/lit8 v2, v2, 0x2

    .line 11917
    :cond_58
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->photoUrl_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14402(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11918
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_74

    .line 11919
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 11921
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11923
    :cond_74
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14502(Lcom/google/feedreader/extrpc/Client$Friend;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11924
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_81

    .line 11925
    or-int/lit8 v2, v2, 0x4

    .line 11927
    :cond_81
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->location_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14602(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11928
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8e

    .line 11929
    or-int/lit8 v2, v2, 0x8

    .line 11931
    :cond_8e
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->stream_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14702(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11932
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9b

    .line 11933
    or-int/lit8 v2, v2, 0x10

    .line 11935
    :cond_9b
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->flags_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->flags_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14802(Lcom/google/feedreader/extrpc/Client$Friend;I)I

    .line 11936
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_b6

    .line 11937
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    .line 11938
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11940
    :cond_b6
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14902(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/util/List;)Ljava/util/List;

    .line 11941
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c3

    .line 11942
    or-int/lit8 v2, v2, 0x20

    .line 11944
    :cond_c3
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->displayName_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15002(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11945
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_d0

    .line 11946
    or-int/lit8 v2, v2, 0x40

    .line 11948
    :cond_d0
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->givenName_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15102(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11949
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_dd

    .line 11950
    or-int/lit16 v2, v2, 0x80

    .line 11952
    :cond_dd
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->n_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15202(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11953
    and-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_ea

    .line 11954
    or-int/lit16 v2, v2, 0x100

    .line 11956
    :cond_ea
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->profileCardParams_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15302(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11957
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_105

    .line 11958
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    .line 11959
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11961
    :cond_105
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15402(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/util/List;)Ljava/util/List;

    .line 11962
    and-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_112

    .line 11963
    or-int/lit16 v2, v2, 0x200

    .line 11965
    :cond_112
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->occupation_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15502(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11966
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_12c

    .line 11967
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    .line 11968
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11970
    :cond_12c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15602(Lcom/google/feedreader/extrpc/Client$Friend;Ljava/util/List;)Ljava/util/List;

    .line 11971
    and-int/2addr v1, v6

    if-ne v1, v6, :cond_13f

    .line 11972
    or-int/lit16 v1, v2, 0x400

    .line 11974
    :goto_136
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasSharedItemsOnProfile_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->hasSharedItemsOnProfile_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15702(Lcom/google/feedreader/extrpc/Client$Friend;Z)Z

    .line 11975
    #setter for: Lcom/google/feedreader/extrpc/Client$Friend;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15802(Lcom/google/feedreader/extrpc/Client$Friend;I)I

    .line 11976
    return-object v0

    :cond_13f
    move v1, v2

    goto :goto_136
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 11830
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11831
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 11832
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11833
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 11834
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11835
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->contactId_:J

    .line 11836
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    .line 11838
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11839
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 11840
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11841
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    .line 11842
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    .line 11844
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11845
    iput v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->flags_:I

    .line 11846
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11847
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    .line 11848
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    .line 11850
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    .line 11852
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    .line 11854
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    .line 11856
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    .line 11858
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    .line 11860
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11861
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    .line 11862
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11863
    iput-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasSharedItemsOnProfile_:Z

    .line 11864
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11865
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContactId()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3

    .prologue
    .line 12361
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->contactId_:J

    .line 12364
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12622
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12623
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    .line 12625
    return-object p0
.end method

.method public clearEmailAddresses()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12448
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 12449
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12451
    return-object p0
.end method

.method public clearFlags()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12546
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12547
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->flags_:I

    .line 12549
    return-object p0
.end method

.method public clearGivenName()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12658
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12659
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getGivenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    .line 12661
    return-object p0
.end method

.method public clearGroupId()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    .line 12781
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12783
    return-object p0
.end method

.method public clearHasSharedItemsOnProfile()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3

    .prologue
    .line 12926
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasSharedItemsOnProfile_:Z

    .line 12929
    return-object p0
.end method

.method public clearLocation()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12484
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12485
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    .line 12487
    return-object p0
.end method

.method public clearN()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12694
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12695
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    .line 12697
    return-object p0
.end method

.method public clearOccupation()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12811
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12812
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getOccupation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    .line 12814
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12392
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12393
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    .line 12395
    return-object p0
.end method

.method public clearProfileCardParams()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12730
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12731
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getProfileCardParams()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    .line 12733
    return-object p0
.end method

.method public clearProfileIds()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12335
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 12336
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12338
    return-object p0
.end method

.method public clearStream()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12520
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12521
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend;->getStream()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    .line 12523
    return-object p0
.end method

.method public clearTypes()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    .line 12592
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12594
    return-object p0
.end method

.method public clearUserIds()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 2

    .prologue
    .line 12279
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 12280
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12282
    return-object p0
.end method

.method public clearWebsites()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3

    .prologue
    .line 12899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    .line 12900
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12902
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3

    .prologue
    .line 11869
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->create()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

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
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()J
    .registers 3

    .prologue
    .line 12352
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->contactId_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend;
    .registers 2

    .prologue
    .line 11873
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11814
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12603
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    .line 12604
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12605
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12606
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    move-object v2, v1

    .line 12609
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

.method public getEmailAddresses(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12419
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEmailAddressesCount()I
    .registers 2

    .prologue
    .line 12416
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEmailAddressesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12413
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 12537
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->flags_:I

    return v0
.end method

.method public getGivenName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12639
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    .line 12640
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12641
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12642
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    move-object v2, v1

    .line 12645
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

.method public getGroupId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 12757
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupIdCount()I
    .registers 2

    .prologue
    .line 12754
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12751
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHasSharedItemsOnProfile()Z
    .registers 2

    .prologue
    .line 12917
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasSharedItemsOnProfile_:Z

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12465
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    .line 12466
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12467
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12468
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    move-object v2, v1

    .line 12471
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

.method public getN()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12675
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    .line 12676
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12677
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12678
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    move-object v2, v1

    .line 12681
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

.method public getOccupation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12792
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    .line 12793
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12794
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12795
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    move-object v2, v1

    .line 12798
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

.method public getPhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12373
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    .line 12374
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12375
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12376
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 12379
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

.method public getProfileCardParams()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12711
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    .line 12712
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12713
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12714
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    move-object v2, v1

    .line 12717
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

.method public getProfileIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12306
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getProfileIdsCount()I
    .registers 2

    .prologue
    .line 12303
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getProfileIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12300
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12501
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    .line 12502
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 12503
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12504
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    move-object v2, v1

    .line 12507
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

.method public getTypes(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 12568
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTypesCount()I
    .registers 2

    .prologue
    .line 12565
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12562
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12250
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserIdsCount()I
    .registers 2

    .prologue
    .line 12247
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUserIdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12244
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebsites(I)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "index"

    .prologue
    .line 12839
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;

    return-object p0
.end method

.method public getWebsitesCount()I
    .registers 2

    .prologue
    .line 12836
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWebsitesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12833
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasContactId()Z
    .registers 3

    .prologue
    .line 12349
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

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

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 12600
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFlags()Z
    .registers 3

    .prologue
    .line 12534
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasGivenName()Z
    .registers 3

    .prologue
    .line 12636
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHasSharedItemsOnProfile()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 12914
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 12462
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasN()Z
    .registers 3

    .prologue
    .line 12672
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOccupation()Z
    .registers 3

    .prologue
    .line 12789
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 12370
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

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

.method public hasProfileCardParams()Z
    .registers 3

    .prologue
    .line 12708
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStream()Z
    .registers 3

    .prologue
    .line 12498
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 12078
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasContactId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 12104
    :goto_8
    return v1

    .line 12082
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasDisplayName()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 12084
    goto :goto_8

    .line 12086
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasGivenName()Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v2

    .line 12088
    goto :goto_8

    .line 12090
    :cond_19
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasN()Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v2

    .line 12092
    goto :goto_8

    .line 12094
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasProfileCardParams()Z

    move-result v1

    if-nez v1, :cond_29

    move v1, v2

    .line 12096
    goto :goto_8

    .line 12098
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->getWebsitesCount()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 12099
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->getWebsites(I)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3c

    move v1, v2

    .line 12101
    goto :goto_8

    .line 12098
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 12104
    :cond_3f
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter

    .prologue
    .line 11980
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 12074
    :goto_7
    return-object v0

    .line 11981
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14100(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 11982
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 11983
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14100(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    .line 11984
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 11991
    :cond_26
    :goto_26
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14200(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 11992
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 11993
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14200(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    .line 11994
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12001
    :cond_44
    :goto_44
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasContactId()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 12002
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getContactId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setContactId(J)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12004
    :cond_51
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 12005
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12007
    :cond_5e
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14500(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 12008
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 12009
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14500(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    .line 12010
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12017
    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 12018
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setLocation(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12020
    :cond_89
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasStream()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 12021
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getStream()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setStream(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12023
    :cond_96
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 12024
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setFlags(I)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12026
    :cond_a3
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14900(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 12027
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 12028
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14900(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    .line 12029
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12036
    :cond_c1
    :goto_c1
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 12037
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12039
    :cond_ce
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasGivenName()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 12040
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setGivenName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12042
    :cond_db
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasN()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 12043
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setN(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12045
    :cond_e8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasProfileCardParams()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 12046
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getProfileCardParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setProfileCardParams(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12048
    :cond_f5
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15400(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_113

    .line 12049
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_188

    .line 12050
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15400(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    .line 12051
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12058
    :cond_113
    :goto_113
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasOccupation()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 12059
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getOccupation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setOccupation(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    .line 12061
    :cond_120
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15600(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_140

    .line 12062
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 12063
    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15600(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    .line 12064
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12071
    :cond_140
    :goto_140
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->hasHasSharedItemsOnProfile()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 12072
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->getHasSharedItemsOnProfile()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->setHasSharedItemsOnProfile(Z)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    :cond_14d
    move-object v0, p0

    .line 12074
    goto/16 :goto_7

    .line 11986
    :cond_150
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureUserIdsIsMutable()V

    .line 11987
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->userIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14100(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_26

    .line 11996
    :cond_15e
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureProfileIdsIsMutable()V

    .line 11997
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->profileIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14200(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_44

    .line 12012
    :cond_16c
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureEmailAddressesIsMutable()V

    .line 12013
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->emailAddresses_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14500(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7c

    .line 12031
    :cond_17a
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureTypesIsMutable()V

    .line 12032
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->types_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$14900(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c1

    .line 12053
    :cond_188
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureGroupIdIsMutable()V

    .line 12054
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->groupId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15400(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_113

    .line 12066
    :cond_196
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12067
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Friend;->websites_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Friend;->access$15600(Lcom/google/feedreader/extrpc/Client$Friend;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_140
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 12113
    sparse-switch v0, :sswitch_data_138

    .line 12118
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 12120
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 12116
    goto :goto_e

    .line 12125
    :sswitch_11
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureUserIdsIsMutable()V

    .line 12126
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12130
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureProfileIdsIsMutable()V

    .line 12131
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12135
    :sswitch_2b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12136
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->contactId_:J

    goto :goto_0

    .line 12140
    :sswitch_38
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 12145
    :sswitch_45
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureEmailAddressesIsMutable()V

    .line 12146
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 12150
    :sswitch_52
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    goto :goto_0

    .line 12155
    :sswitch_5f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    goto :goto_0

    .line 12160
    :sswitch_6c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12161
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->flags_:I

    goto :goto_0

    .line 12165
    :sswitch_79
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureTypesIsMutable()V

    .line 12166
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 12170
    :sswitch_8b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 12171
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 12172
    :goto_93
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_a1

    .line 12173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->addTypes(I)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    goto :goto_93

    .line 12175
    :cond_a1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 12179
    :sswitch_a6
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 12184
    :sswitch_b4
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12185
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 12189
    :sswitch_c2
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12190
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 12194
    :sswitch_d0
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12195
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 12199
    :sswitch_de
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureGroupIdIsMutable()V

    .line 12200
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 12204
    :sswitch_f0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 12205
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 12206
    :goto_f8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_106

    .line 12207
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->addGroupId(J)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    goto :goto_f8

    .line 12209
    :cond_106
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 12213
    :sswitch_10b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 12218
    :sswitch_119
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    .line 12219
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12220
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->addWebsites(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    goto/16 :goto_0

    .line 12224
    :sswitch_129
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12225
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasSharedItemsOnProfile_:Z

    goto/16 :goto_0

    .line 12113
    :sswitch_data_138
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
        0x18 -> :sswitch_2b
        0x22 -> :sswitch_38
        0x2a -> :sswitch_45
        0x32 -> :sswitch_52
        0x3a -> :sswitch_5f
        0x40 -> :sswitch_6c
        0x48 -> :sswitch_79
        0x4a -> :sswitch_8b
        0x52 -> :sswitch_a6
        0x5a -> :sswitch_b4
        0x62 -> :sswitch_c2
        0x6a -> :sswitch_d0
        0x70 -> :sswitch_de
        0x72 -> :sswitch_f0
        0x7a -> :sswitch_10b
        0x82 -> :sswitch_119
        0x88 -> :sswitch_129
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
    .line 11814
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11814
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Friend;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

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
    .line 11814
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeWebsites(I)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter

    .prologue
    .line 12905
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12906
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12908
    return-object p0
.end method

.method public setContactId(J)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12355
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12356
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->contactId_:J

    .line 12358
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12613
    if-nez p1, :cond_8

    .line 12614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12616
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12617
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    .line 12619
    return-object p0
.end method

.method setDisplayName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12628
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12629
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->displayName_:Ljava/lang/Object;

    .line 12631
    return-void
.end method

.method public setEmailAddresses(ILjava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 12423
    if-nez p2, :cond_8

    .line 12424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12426
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureEmailAddressesIsMutable()V

    .line 12427
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->emailAddresses_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12429
    return-object p0
.end method

.method public setFlags(I)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12540
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12541
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->flags_:I

    .line 12543
    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12649
    if-nez p1, :cond_8

    .line 12650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12652
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12653
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    .line 12655
    return-object p0
.end method

.method setGivenName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12664
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12665
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->givenName_:Ljava/lang/Object;

    .line 12667
    return-void
.end method

.method public setGroupId(IJ)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 12761
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureGroupIdIsMutable()V

    .line 12762
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->groupId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12764
    return-object p0
.end method

.method public setHasSharedItemsOnProfile(Z)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12920
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12921
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->hasSharedItemsOnProfile_:Z

    .line 12923
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12475
    if-nez p1, :cond_8

    .line 12476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12478
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12479
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    .line 12481
    return-object p0
.end method

.method setLocation(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12490
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12491
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->location_:Ljava/lang/Object;

    .line 12493
    return-void
.end method

.method public setN(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12685
    if-nez p1, :cond_8

    .line 12686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12688
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12689
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    .line 12691
    return-object p0
.end method

.method setN(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12700
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12701
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->n_:Ljava/lang/Object;

    .line 12703
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12802
    if-nez p1, :cond_8

    .line 12803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12805
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12806
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    .line 12808
    return-object p0
.end method

.method setOccupation(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12817
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12818
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->occupation_:Ljava/lang/Object;

    .line 12820
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12383
    if-nez p1, :cond_8

    .line 12384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12386
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12387
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    .line 12389
    return-object p0
.end method

.method setPhotoUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12398
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12399
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->photoUrl_:Ljava/lang/Object;

    .line 12401
    return-void
.end method

.method public setProfileCardParams(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12721
    if-nez p1, :cond_8

    .line 12722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12724
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12725
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    .line 12727
    return-object p0
.end method

.method setProfileCardParams(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12736
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12737
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileCardParams_:Ljava/lang/Object;

    .line 12739
    return-void
.end method

.method public setProfileIds(ILjava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 12310
    if-nez p2, :cond_8

    .line 12311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12313
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureProfileIdsIsMutable()V

    .line 12314
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->profileIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12316
    return-object p0
.end method

.method public setStream(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12511
    if-nez p1, :cond_8

    .line 12512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12514
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12515
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    .line 12517
    return-object p0
.end method

.method setStream(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 12526
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->bitField0_:I

    .line 12527
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->stream_:Ljava/lang/Object;

    .line 12529
    return-void
.end method

.method public setTypes(II)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 12572
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureTypesIsMutable()V

    .line 12573
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->types_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12575
    return-object p0
.end method

.method public setUserIds(ILjava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 12254
    if-nez p2, :cond_8

    .line 12255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12257
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureUserIdsIsMutable()V

    .line 12258
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->userIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12260
    return-object p0
.end method

.method public setWebsites(ILcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 12853
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12854
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12856
    return-object p0
.end method

.method public setWebsites(ILcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 12843
    if-nez p2, :cond_8

    .line 12844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12846
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->ensureWebsitesIsMutable()V

    .line 12847
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Builder;->websites_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12849
    return-object p0
.end method
