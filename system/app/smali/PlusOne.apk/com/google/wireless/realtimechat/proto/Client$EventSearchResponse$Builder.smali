.class public final Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37666
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37690
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    .line 37526
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 37527
    return-void
.end method

.method static synthetic access$51700()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 1

    .prologue
    .line 37520
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 1

    .prologue
    .line 37532
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventIsMutable()V
    .registers 3

    .prologue
    .line 37736
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 37737
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    .line 37738
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37740
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37530
    return-void
.end method


# virtual methods
.method public addAllEvent(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 37803
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37804
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37806
    return-object p0
.end method

.method public addEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37796
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37797
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37799
    return-object p0
.end method

.method public addEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37779
    if-nez p2, :cond_8

    .line 37780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37782
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37783
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37785
    return-object p0
.end method

.method public addEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 37789
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37790
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37792
    return-object p0
.end method

.method public addEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37769
    if-nez p1, :cond_8

    .line 37770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37772
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37773
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37775
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 3

    .prologue
    .line 37555
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    .line 37556
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37557
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37559
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 6

    .prologue
    .line 37573
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 37574
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37575
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37576
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37577
    or-int/lit8 v2, v2, 0x1

    .line 37579
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$51902(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37580
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 37581
    or-int/lit8 v2, v2, 0x2

    .line 37583
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$52002(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37584
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 37585
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    .line 37586
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37588
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$52102(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 37589
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$52202(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;I)I

    .line 37590
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37536
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37537
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37538
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37539
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37540
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37541
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    .line 37542
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37543
    return-object p0
.end method

.method public clearConversation()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37726
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37728
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37729
    return-object p0
.end method

.method public clearEvent()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    .line 37810
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37812
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37683
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37684
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37686
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 3

    .prologue
    .line 37547
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

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
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 2

    .prologue
    .line 37695
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 37551
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 3
    .parameter "index"

    .prologue
    .line 37749
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 37746
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37743
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 37671
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasConversation()Z
    .registers 3

    .prologue
    .line 37692
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37668
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37714
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 37716
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37722
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37723
    return-object p0

    .line 37719
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    goto :goto_1f
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
    .line 37520
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

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
    .line 37520
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37623
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 37624
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4c

    .line 37629
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37631
    :sswitch_d
    return-object p0

    .line 37636
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 37637
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 37638
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 37639
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37640
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 37645
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v1

    .line 37646
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->hasConversation()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 37647
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->getConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 37649
    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37650
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->setConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    goto :goto_0

    .line 37654
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :sswitch_3d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v1

    .line 37655
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37656
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->addEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    goto :goto_0

    .line 37624
    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x1a -> :sswitch_21
        0x22 -> :sswitch_3d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37594
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37611
    :cond_6
    :goto_6
    return-object p0

    .line 37595
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37596
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    .line 37598
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->hasConversation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 37599
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    .line 37601
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$52100(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 37602
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 37603
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$52100(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    .line 37604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 37606
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37607
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->access$52100(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 37708
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37710
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37711
    return-object p0
.end method

.method public setConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37698
    if-nez p1, :cond_8

    .line 37699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37701
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->conversation_:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 37703
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37704
    return-object p0
.end method

.method public setEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37763
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37764
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37766
    return-object p0
.end method

.method public setEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37753
    if-nez p2, :cond_8

    .line 37754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37756
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->ensureEventIsMutable()V

    .line 37757
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37759
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37674
    if-nez p1, :cond_8

    .line 37675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37677
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->bitField0_:I

    .line 37678
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37680
    return-object p0
.end method
