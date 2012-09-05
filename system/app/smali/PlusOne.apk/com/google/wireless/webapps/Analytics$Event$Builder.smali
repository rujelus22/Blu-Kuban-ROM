.class public final Lcom/google/wireless/webapps/Analytics$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Analytics$Event;",
        "Lcom/google/wireless/webapps/Analytics$Event$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Analytics$EventOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private bitField0_:I

.field private customValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation
.end field

.field private details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

.field private endTimeMsec_:J

.field private endTime_:J

.field private eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

.field private startTimeMsec_:J

.field private startTime_:J

.field private step_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2175
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 2199
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    .line 2415
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 2458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    .line 1938
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->maybeForceBuilderInitialization()V

    .line 1939
    return-void
.end method

.method static synthetic access$2000(Lcom/google/wireless/webapps/Analytics$Event$Builder;)Lcom/google/wireless/webapps/Analytics$Event;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1932
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildParsed()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 1

    .prologue
    .line 1932
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->create()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/webapps/Analytics$Event;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1988
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    .line 1989
    .local v0, result:Lcom/google/wireless/webapps/Analytics$Event;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$Event;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1990
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1993
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 1

    .prologue
    .line 1944
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCustomValueIsMutable()V
    .registers 3

    .prologue
    .line 2461
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 2462
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    .line 2463
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2465
    :cond_17
    return-void
.end method

.method private ensureStepIsMutable()V
    .registers 3

    .prologue
    .line 2329
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 2330
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    .line 2331
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2333
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1942
    return-void
.end method


# virtual methods
.method public addAllCustomValue(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$Event$Builder;"
        }
    .end annotation

    .prologue
    .line 2528
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/webapps/Analytics$CustomValue;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2529
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2531
    return-object p0
.end method

.method public addAllStep(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$Event$Step;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$Event$Builder;"
        }
    .end annotation

    .prologue
    .line 2396
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/webapps/Analytics$Event$Step;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2397
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2399
    return-object p0
.end method

.method public addCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2521
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2522
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2524
    return-object p0
.end method

.method public addCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2504
    if-nez p2, :cond_8

    .line 2505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2507
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2508
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2510
    return-object p0
.end method

.method public addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2515
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2517
    return-object p0
.end method

.method public addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2494
    if-nez p1, :cond_8

    .line 2495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2497
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2498
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    return-object p0
.end method

.method public addStep(ILcom/google/wireless/webapps/Analytics$Event$Step$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2389
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2390
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2392
    return-object p0
.end method

.method public addStep(ILcom/google/wireless/webapps/Analytics$Event$Step;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2372
    if-nez p2, :cond_8

    .line 2373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2375
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2376
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2378
    return-object p0
.end method

.method public addStep(Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2382
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2383
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2385
    return-object p0
.end method

.method public addStep(Lcom/google/wireless/webapps/Analytics$Event$Step;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2362
    if-nez p1, :cond_8

    .line 2363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2365
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2366
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2368
    return-object p0
.end method

.method public build()Lcom/google/wireless/webapps/Analytics$Event;
    .registers 3

    .prologue
    .line 1979
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    .line 1980
    .local v0, result:Lcom/google/wireless/webapps/Analytics$Event;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$Event;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1981
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1983
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Analytics$Event;
    .registers 6

    .prologue
    .line 1997
    new-instance v1, Lcom/google/wireless/webapps/Analytics$Event;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Analytics$Event;-><init>(Lcom/google/wireless/webapps/Analytics$Event$Builder;Lcom/google/wireless/webapps/Analytics$1;)V

    .line 1998
    .local v1, result:Lcom/google/wireless/webapps/Analytics$Event;
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1999
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2000
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2001
    or-int/lit8 v2, v2, 0x1

    .line 2003
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$Event;->access$2302(Lcom/google/wireless/webapps/Analytics$Event;Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 2004
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2005
    or-int/lit8 v2, v2, 0x2

    .line 2007
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$Event;->access$2402(Lcom/google/wireless/webapps/Analytics$Event;Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2008
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2009
    or-int/lit8 v2, v2, 0x4

    .line 2011
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTime_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->startTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event;->access$2502(Lcom/google/wireless/webapps/Analytics$Event;J)J

    .line 2012
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 2013
    or-int/lit8 v2, v2, 0x8

    .line 2015
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTime_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->endTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event;->access$2602(Lcom/google/wireless/webapps/Analytics$Event;J)J

    .line 2016
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 2017
    or-int/lit8 v2, v2, 0x10

    .line 2019
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTimeMsec_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->startTimeMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event;->access$2702(Lcom/google/wireless/webapps/Analytics$Event;J)J

    .line 2020
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 2021
    or-int/lit8 v2, v2, 0x20

    .line 2023
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTimeMsec_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->endTimeMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event;->access$2802(Lcom/google/wireless/webapps/Analytics$Event;J)J

    .line 2024
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 2025
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    .line 2026
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2028
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$Event;->access$2902(Lcom/google/wireless/webapps/Analytics$Event;Ljava/util/List;)Ljava/util/List;

    .line 2029
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 2030
    or-int/lit8 v2, v2, 0x40

    .line 2032
    :cond_77
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$Event;->access$3002(Lcom/google/wireless/webapps/Analytics$Event;Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 2033
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_92

    .line 2034
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    .line 2035
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2037
    :cond_92
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$Event;->access$3102(Lcom/google/wireless/webapps/Analytics$Event;Ljava/util/List;)Ljava/util/List;

    .line 2038
    #setter for: Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Analytics$Event;->access$3202(Lcom/google/wireless/webapps/Analytics$Event;I)I

    .line 2039
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->clear()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->clear()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1948
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1949
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 1950
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1951
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 1952
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1953
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTime_:J

    .line 1954
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1955
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTime_:J

    .line 1956
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1957
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTimeMsec_:J

    .line 1958
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1959
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTimeMsec_:J

    .line 1960
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    .line 1962
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1963
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 1964
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1965
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    .line 1966
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 1967
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 2

    .prologue
    .line 2235
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2237
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2238
    return-object p0
.end method

.method public clearCustomValue()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 2

    .prologue
    .line 2534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    .line 2535
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2537
    return-object p0
.end method

.method public clearDetails()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 2

    .prologue
    .line 2451
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 2453
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2454
    return-object p0
.end method

.method public clearEndTime()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2277
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTime_:J

    .line 2280
    return-object p0
.end method

.method public clearEndTimeMsec()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3

    .prologue
    .line 2319
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTimeMsec_:J

    .line 2322
    return-object p0
.end method

.method public clearEventType()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 2

    .prologue
    .line 2192
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2193
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 2195
    return-object p0
.end method

.method public clearStartTime()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2256
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTime_:J

    .line 2259
    return-object p0
.end method

.method public clearStartTimeMsec()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3

    .prologue
    .line 2298
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTimeMsec_:J

    .line 2301
    return-object p0
.end method

.method public clearStep()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 2

    .prologue
    .line 2402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    .line 2403
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2405
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->clone()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->clone()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3

    .prologue
    .line 1971
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->create()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

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
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->clone()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getCustomValue(I)Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$CustomValue;

    return-object v0
.end method

.method public getCustomValueCount()I
    .registers 2

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCustomValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event;
    .registers 2

    .prologue
    .line 1975
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 2

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    return-object v0
.end method

.method public getEndTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2268
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTime_:J

    return-wide v0
.end method

.method public getEndTimeMsec()J
    .registers 3

    .prologue
    .line 2310
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTimeMsec_:J

    return-wide v0
.end method

.method public getEventType()Lcom/google/wireless/webapps/Analytics$Event$EventType;
    .registers 2

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2247
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTime_:J

    return-wide v0
.end method

.method public getStartTimeMsec()J
    .registers 3

    .prologue
    .line 2289
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTimeMsec_:J

    return-wide v0
.end method

.method public getStep(I)Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 3
    .parameter "index"

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event$Step;

    return-object v0
.end method

.method public getStepCount()I
    .registers 2

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStepList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event$Step;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 2201
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

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

.method public hasDetails()Z
    .registers 3

    .prologue
    .line 2417
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

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

.method public hasEndTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2265
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

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

.method public hasEndTimeMsec()Z
    .registers 3

    .prologue
    .line 2307
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

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

.method public hasEventType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2177
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStartTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2244
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

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

.method public hasStartTimeMsec()Z
    .registers 3

    .prologue
    .line 2286
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

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

.method public mergeAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2223
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2225
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2231
    :goto_1f
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2232
    return-object p0

    .line 2228
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    goto :goto_1f
.end method

.method public mergeDetails(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2439
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2441
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 2447
    :goto_20
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2448
    return-object p0

    .line 2444
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    goto :goto_20
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
    .line 1932
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

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
    .line 1932
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2097
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2098
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_b0

    .line 2103
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2105
    :sswitch_d
    return-object p0

    .line 2110
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2111
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$Event$EventType;->valueOf(I)Lcom/google/wireless/webapps/Analytics$Event$EventType;

    move-result-object v3

    .line 2112
    .local v3, value:Lcom/google/wireless/webapps/Analytics$Event$EventType;
    if-eqz v3, :cond_0

    .line 2113
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2114
    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    goto :goto_0

    .line 2119
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/webapps/Analytics$Event$EventType;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v1

    .line 2120
    .local v1, subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->hasAction()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2121
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->getAction()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 2123
    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2124
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_0

    .line 2128
    .end local v1           #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    :sswitch_3d
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTime_:J

    goto :goto_0

    .line 2133
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTime_:J

    goto :goto_0

    .line 2138
    :sswitch_57
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v1

    .line 2139
    .local v1, subBuilder:Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2140
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->addStep(Lcom/google/wireless/webapps/Analytics$Event$Step;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_0

    .line 2144
    .end local v1           #subBuilder:Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    :sswitch_66
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v1

    .line 2145
    .local v1, subBuilder:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->hasDetails()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2146
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->getDetails()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 2148
    :cond_77
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2149
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setDetails(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto/16 :goto_0

    .line 2153
    .end local v1           #subBuilder:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    :sswitch_83
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2154
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTimeMsec_:J

    goto/16 :goto_0

    .line 2158
    :sswitch_91
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2159
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTimeMsec_:J

    goto/16 :goto_0

    .line 2163
    :sswitch_9f
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->newBuilder()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v1

    .line 2164
    .local v1, subBuilder:Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2165
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto/16 :goto_0

    .line 2098
    nop

    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_3d
        0x20 -> :sswitch_4a
        0x2a -> :sswitch_57
        0x32 -> :sswitch_66
        0x38 -> :sswitch_83
        0x40 -> :sswitch_91
        0x4a -> :sswitch_9f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2043
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2085
    :cond_6
    :goto_6
    return-object p0

    .line 2044
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2045
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getEventType()Lcom/google/wireless/webapps/Analytics$Event$EventType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2047
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2048
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getAction()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->mergeAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2050
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2051
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTime(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2053
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasEndTime()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2054
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTime(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2056
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasStartTimeMsec()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2057
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getStartTimeMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2059
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasEndTimeMsec()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2060
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getEndTimeMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2062
    :cond_55
    #getter for: Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$Event;->access$2900(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2063
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2064
    #getter for: Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$Event;->access$2900(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    .line 2065
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2072
    :cond_73
    :goto_73
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2073
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event;->getDetails()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->mergeDetails(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 2075
    :cond_80
    #getter for: Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$Event;->access$3100(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2076
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2077
    #getter for: Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$Event;->access$3100(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    .line 2078
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 2067
    :cond_a0
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2068
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$Event;->access$2900(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_73

    .line 2080
    :cond_ad
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2081
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$Event;->access$3100(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setAction(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2217
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2219
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2220
    return-object p0
.end method

.method public setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2207
    if-nez p1, :cond_8

    .line 2208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2210
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2212
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2213
    return-object p0
.end method

.method public setCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2489
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2491
    return-object p0
.end method

.method public setCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2478
    if-nez p2, :cond_8

    .line 2479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2481
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureCustomValueIsMutable()V

    .line 2482
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2484
    return-object p0
.end method

.method public setDetails(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2433
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->build()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 2435
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2436
    return-object p0
.end method

.method public setDetails(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2423
    if-nez p1, :cond_8

    .line 2424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2426
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 2428
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2429
    return-object p0
.end method

.method public setEndTime(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2271
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2272
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTime_:J

    .line 2274
    return-object p0
.end method

.method public setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2313
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2314
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->endTimeMsec_:J

    .line 2316
    return-object p0
.end method

.method public setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2183
    if-nez p1, :cond_8

    .line 2184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2186
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2187
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 2189
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2250
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2251
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTime_:J

    .line 2253
    return-object p0
.end method

.method public setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2292
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->bitField0_:I

    .line 2293
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->startTimeMsec_:J

    .line 2295
    return-object p0
.end method

.method public setStep(ILcom/google/wireless/webapps/Analytics$Event$Step$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2356
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2357
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2359
    return-object p0
.end method

.method public setStep(ILcom/google/wireless/webapps/Analytics$Event$Step;)Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2346
    if-nez p2, :cond_8

    .line 2347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2349
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->ensureStepIsMutable()V

    .line 2350
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Builder;->step_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2352
    return-object p0
.end method
