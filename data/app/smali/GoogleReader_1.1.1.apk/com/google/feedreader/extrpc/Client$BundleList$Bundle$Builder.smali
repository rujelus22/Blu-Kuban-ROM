.class public final Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleList$BundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$BundleList$BundleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private isadded_:Z

.field private isfeatured_:Z

.field private subscriptions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20994
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    .line 21201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    .line 21258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    .line 20995
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->maybeForceBuilderInitialization()V

    .line 20996
    return-void
.end method

.method static synthetic access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20989
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25700()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 1

    .prologue
    .line 20989
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21037
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    .line 21038
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 21039
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 21042
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 1

    .prologue
    .line 21001
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubscriptionsIsMutable()V
    .registers 3

    .prologue
    .line 21261
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 21262
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    .line 21263
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21265
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20999
    return-void
.end method


# virtual methods
.method public addAllSubscriptions(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;"
        }
    .end annotation

    .prologue
    .line 21328
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21329
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 21331
    return-object p0
.end method

.method public addSubscriptions(ILcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 21321
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21322
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21324
    return-object p0
.end method

.method public addSubscriptions(ILcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21304
    if-nez p2, :cond_8

    .line 21305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21307
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21308
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21310
    return-object p0
.end method

.method public addSubscriptions(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 4
    .parameter

    .prologue
    .line 21314
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21315
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21317
    return-object p0
.end method

.method public addSubscriptions(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter

    .prologue
    .line 21294
    if-nez p1, :cond_8

    .line 21295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21297
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21298
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21300
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3

    .prologue
    .line 21028
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    .line 21029
    .local v0, result:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21030
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21032
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 6

    .prologue
    .line 21046
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 21047
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21048
    const/4 v2, 0x0

    .line 21049
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21050
    or-int/lit8 v2, v2, 0x1

    .line 21052
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$25902(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21053
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21054
    or-int/lit8 v2, v2, 0x2

    .line 21056
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26002(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21057
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 21058
    or-int/lit8 v2, v2, 0x4

    .line 21060
    :cond_28
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isadded_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isadded_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26102(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Z)Z

    .line 21061
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 21062
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    .line 21063
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21065
    :cond_43
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26202(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Ljava/util/List;)Ljava/util/List;

    .line 21066
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_59

    .line 21067
    or-int/lit8 v1, v2, 0x8

    .line 21069
    :goto_50
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isfeatured_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isfeatured_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26302(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Z)Z

    .line 21070
    #setter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26402(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;I)I

    .line 21071
    return-object v0

    :cond_59
    move v1, v2

    goto :goto_50
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21005
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21006
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    .line 21007
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21008
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    .line 21009
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21010
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isadded_:Z

    .line 21011
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21012
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    .line 21013
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21014
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isfeatured_:Z

    .line 21015
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21016
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->clear()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 21189
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21190
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    .line 21192
    return-object p0
.end method

.method public clearIsadded()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 21251
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isadded_:Z

    .line 21254
    return-object p0
.end method

.method public clearIsfeatured()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 21361
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isfeatured_:Z

    .line 21364
    return-object p0
.end method

.method public clearSubscriptions()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 21334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    .line 21335
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21337
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 21225
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21226
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    .line 21228
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3

    .prologue
    .line 21020
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

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
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->clone()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2

    .prologue
    .line 21024
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20989
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21170
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    .line 21171
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 21172
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21173
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 21176
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

.method public getIsadded()Z
    .registers 2

    .prologue
    .line 21242
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isadded_:Z

    return v0
.end method

.method public getIsfeatured()Z
    .registers 2

    .prologue
    .line 21352
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isfeatured_:Z

    return v0
.end method

.method public getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 21274
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    return-object p0
.end method

.method public getSubscriptionsCount()I
    .registers 2

    .prologue
    .line 21271
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21268
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21206
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    .line 21207
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 21208
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21209
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 21212
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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 21167
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsadded()Z
    .registers 3

    .prologue
    .line 21239
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

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

.method public hasIsfeatured()Z
    .registers 3

    .prologue
    .line 21349
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 21203
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 21102
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 21112
    :goto_8
    return v1

    .line 21106
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->getSubscriptionsCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 21107
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v2

    .line 21109
    goto :goto_8

    .line 21106
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 21112
    :cond_1f
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 4
    .parameter

    .prologue
    .line 21075
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 21098
    :goto_7
    return-object v0

    .line 21076
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 21077
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    .line 21079
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 21080
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    .line 21082
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->hasIsadded()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 21083
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getIsadded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->setIsadded(Z)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    .line 21085
    :cond_2f
    #getter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26200(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 21086
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 21087
    #getter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26200(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    .line 21088
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21095
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->hasIsfeatured()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 21096
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getIsfeatured()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->setIsfeatured(Z)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    :cond_5a
    move-object v0, p0

    .line 21098
    goto :goto_7

    .line 21090
    :cond_5c
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21091
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->access$26200(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4d
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 21121
    sparse-switch v0, :sswitch_data_54

    .line 21126
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 21128
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 21124
    goto :goto_e

    .line 21133
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 21138
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21139
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 21143
    :sswitch_2b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21144
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isadded_:Z

    goto :goto_0

    .line 21148
    :sswitch_38
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;

    move-result-object v0

    .line 21149
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21150
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->addSubscriptions(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    goto :goto_0

    .line 21154
    :sswitch_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isfeatured_:Z

    goto :goto_0

    .line 21121
    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
        0x18 -> :sswitch_2b
        0x22 -> :sswitch_38
        0x28 -> :sswitch_47
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
    .line 20989
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20989
    check-cast p1, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

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
    .line 20989
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeSubscriptions(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter

    .prologue
    .line 21340
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21341
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21343
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21180
    if-nez p1, :cond_8

    .line 21181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21183
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21184
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    .line 21186
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 21195
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21196
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->id_:Ljava/lang/Object;

    .line 21198
    return-void
.end method

.method public setIsadded(Z)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21245
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21246
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isadded_:Z

    .line 21248
    return-object p0
.end method

.method public setIsfeatured(Z)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21355
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21356
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->isfeatured_:Z

    .line 21358
    return-object p0
.end method

.method public setSubscriptions(ILcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 21288
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21289
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21291
    return-object p0
.end method

.method public setSubscriptions(ILcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21278
    if-nez p2, :cond_8

    .line 21279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21281
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->ensureSubscriptionsIsMutable()V

    .line 21282
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21284
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21216
    if-nez p1, :cond_8

    .line 21217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21219
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21220
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    .line 21222
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 21231
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->bitField0_:I

    .line 21232
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->title_:Ljava/lang/Object;

    .line 21234
    return-void
.end method
