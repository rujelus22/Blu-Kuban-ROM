.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$DataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private subscription_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2150
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    .line 2151
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->maybeForceBuilderInitialization()V

    .line 2152
    return-void
.end method

.method static synthetic access$2500(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2145
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 1

    .prologue
    .line 2145
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2185
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    .line 2186
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2187
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2190
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 1

    .prologue
    .line 2157
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubscriptionIsMutable()V
    .registers 3

    .prologue
    .line 2262
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    .line 2264
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    .line 2266
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2155
    return-void
.end method


# virtual methods
.method public addAllSubscription(Ljava/lang/Iterable;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;)",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;"
        }
    .end annotation

    .prologue
    .line 2329
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;>;"
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2330
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2332
    return-object p0
.end method

.method public addSubscription(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2322
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2323
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2325
    return-object p0
.end method

.method public addSubscription(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2305
    if-nez p2, :cond_8

    .line 2306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2308
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2309
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2311
    return-object p0
.end method

.method public addSubscription(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2315
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2316
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    return-object p0
.end method

.method public addSubscription(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2295
    if-nez p1, :cond_8

    .line 2296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2298
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2299
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2301
    return-object p0
.end method

.method public build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 3

    .prologue
    .line 2176
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    .line 2177
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2178
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2180
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 4

    .prologue
    .line 2194
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 2195
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 2197
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    .line 2198
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    .line 2200
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->subscription_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->access$2802(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;Ljava/util/List;)Ljava/util/List;

    .line 2201
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 2

    .prologue
    .line 2161
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    .line 2163
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    .line 2164
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSubscription()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 2

    .prologue
    .line 2335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    .line 2336
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    .line 2338
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 3

    .prologue
    .line 2168
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

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
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
    .registers 2

    .prologue
    .line 2172
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "index"

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    return-object p0
.end method

.method public getSubscriptionCount()I
    .registers 2

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 2220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->getSubscriptionCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 2221
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->getSubscription(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2223
    const/4 v1, 0x0

    .line 2226
    :goto_12
    return v1

    .line 2220
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2226
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2205
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 2216
    :goto_7
    return-object v0

    .line 2206
    :cond_8
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->subscription_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->access$2800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2207
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2208
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->subscription_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->access$2800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    .line 2209
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 2216
    goto :goto_7

    .line 2211
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2212
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->subscription_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;->access$2800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2234
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2235
    sparse-switch v0, :sswitch_data_22

    .line 2240
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 2242
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 2238
    goto :goto_e

    .line 2247
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    .line 2248
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2249
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->addSubscription(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    goto :goto_0

    .line 2235
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_f
        0x3b -> :sswitch_11
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
    .line 2145
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2145
    check-cast p1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

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
    .line 2145
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeSubscription(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2341
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2342
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2344
    return-object p0
.end method

.method public setSubscription(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2289
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2290
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2292
    return-object p0
.end method

.method public setSubscription(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2279
    if-nez p2, :cond_8

    .line 2280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2282
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->ensureSubscriptionIsMutable()V

    .line 2283
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Builder;->subscription_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2285
    return-object p0
.end method
