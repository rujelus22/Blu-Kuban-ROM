.class public final Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingCookieProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingCookieProtos$TracingCookieResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;",
        ">;",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private tracingCookies_:Lcom/google/protobuf/LazyStringList;

.field private validMs_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 601
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 483
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->maybeForceBuilderInitialization()V

    .line 484
    return-void
.end method

.method static synthetic access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 1

    .prologue
    .line 477
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->create()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 521
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 524
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 1

    .prologue
    .line 489
    new-instance v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTracingCookiesIsMutable()V
    .registers 3

    .prologue
    .line 603
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 604
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 605
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 607
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 487
    return-void
.end method


# virtual methods
.method public addAllTracingCookies(Ljava/lang/Iterable;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->ensureTracingCookiesIsMutable()V

    .line 640
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 642
    return-object p0
.end method

.method public addTracingCookies(Ljava/lang/String;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 629
    if-nez p1, :cond_8

    .line 630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 632
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->ensureTracingCookiesIsMutable()V

    .line 633
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 635
    return-object p0
.end method

.method addTracingCookies(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->ensureTracingCookiesIsMutable()V

    .line 652
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 654
    return-void
.end method

.method public build()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 512
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 514
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->build()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 528
    new-instance v2, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;-><init>(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;Lcom/google/goggles/TracingCookieProtos$1;)V

    .line 529
    iget v3, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 530
    const/4 v1, 0x0

    .line 531
    iget v4, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1f

    .line 532
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 534
    iget v4, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 536
    :cond_1f
    iget-object v4, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v2, v4}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->access$802(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 537
    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    .line 540
    :goto_29
    iget v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->validMs_:I

    #setter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->validMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->access$902(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;I)I

    .line 541
    #setter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->access$1002(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;I)I

    .line 542
    return-object v2

    :cond_32
    move v0, v1

    goto :goto_29
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 2

    .prologue
    .line 493
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 494
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 495
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->validMs_:I

    .line 497
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 498
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->clear()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->clear()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTracingCookies()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 2

    .prologue
    .line 645
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 646
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 648
    return-object p0
.end method

.method public clearValidMs()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 672
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->validMs_:I

    .line 674
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 3

    .prologue
    .line 502
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->create()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

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
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2

    .prologue
    .line 506
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public getTracingCookies(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTracingCookiesCount()I
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTracingCookiesList()Ljava/util/List;
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
    .line 610
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidMs()I
    .registers 2

    .prologue
    .line 662
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->validMs_:I

    return v0
.end method

.method public hasValidMs()Z
    .registers 3

    .prologue
    .line 659
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 546
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 560
    :cond_6
    :goto_6
    return-object p0

    .line 547
    :cond_7
    #getter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->access$800(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 548
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 549
    #getter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->access$800(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 550
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 557
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->hasValidMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 558
    invoke-virtual {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getValidMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->setValidMs(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    goto :goto_6

    .line 552
    :cond_33
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->ensureTracingCookiesIsMutable()V

    .line 553
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->access$800(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 573
    sparse-switch v0, :sswitch_data_28

    .line 578
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    :sswitch_d
    return-object p0

    .line 585
    :sswitch_e
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->ensureTracingCookiesIsMutable()V

    .line 586
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 590
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 591
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->validMs_:I

    goto :goto_0

    .line 573
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 477
    check-cast p1, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTracingCookies(ILjava/lang/String;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 620
    if-nez p2, :cond_8

    .line 621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 623
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->ensureTracingCookiesIsMutable()V

    .line 624
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-object p0
.end method

.method public setValidMs(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 665
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->bitField0_:I

    .line 666
    iput p1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->validMs_:I

    .line 668
    return-object p0
.end method
