.class public final Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$LogEnvelopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$LogEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Analytics$LogEnvelope;",
        "Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Analytics$LogEnvelopeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private buildNumber_:Ljava/lang/Object;

.field private client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

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

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event;",
            ">;"
        }
    .end annotation
.end field

.field private platform_:Ljava/lang/Object;

.field private sendTimeMsec_:J

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 646
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    .line 742
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    .line 831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    .line 445
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->maybeForceBuilderInitialization()V

    .line 446
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 1

    .prologue
    .line 439
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->create()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 1

    .prologue
    .line 451
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCustomValueIsMutable()V
    .registers 3

    .prologue
    .line 834
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    .line 836
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 838
    :cond_17
    return-void
.end method

.method private ensureEventIsMutable()V
    .registers 3

    .prologue
    .line 745
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    .line 747
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 749
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 449
    return-void
.end method


# virtual methods
.method public addAllCustomValue(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;"
        }
    .end annotation

    .prologue
    .line 901
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/webapps/Analytics$CustomValue;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 902
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 904
    return-object p0
.end method

.method public addAllEvent(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$Event;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/webapps/Analytics$Event;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 813
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 815
    return-object p0
.end method

.method public addCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue$Builder;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 895
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 897
    return-object p0
.end method

.method public addCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 877
    if-nez p2, :cond_8

    .line 878
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 880
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 881
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 883
    return-object p0
.end method

.method public addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 888
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    return-object p0
.end method

.method public addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 867
    if-nez p1, :cond_8

    .line 868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 870
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 871
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    return-object p0
.end method

.method public addEvent(ILcom/google/wireless/webapps/Analytics$Event$Builder;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 806
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    return-object p0
.end method

.method public addEvent(ILcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 788
    if-nez p2, :cond_8

    .line 789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 791
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 792
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 794
    return-object p0
.end method

.method public addEvent(Lcom/google/wireless/webapps/Analytics$Event$Builder;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 799
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    return-object p0
.end method

.method public addEvent(Lcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 778
    if-nez p1, :cond_8

    .line 779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 781
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 782
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    .line 483
    .local v0, result:Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 484
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 486
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 6

    .prologue
    .line 500
    new-instance v1, Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;-><init>(Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;Lcom/google/wireless/webapps/Analytics$1;)V

    .line 501
    .local v1, result:Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 502
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 503
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 504
    or-int/lit8 v2, v2, 0x1

    .line 506
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$302(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 507
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 508
    or-int/lit8 v2, v2, 0x2

    .line 510
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$402(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 512
    or-int/lit8 v2, v2, 0x4

    .line 514
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$502(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 516
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    .line 517
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 519
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$602(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 520
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5e

    .line 521
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    .line 522
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 524
    :cond_5e
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$702(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 525
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6b

    .line 526
    or-int/lit8 v2, v2, 0x8

    .line 528
    :cond_6b
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$802(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_78

    .line 530
    or-int/lit8 v2, v2, 0x10

    .line 532
    :cond_78
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->sendTimeMsec_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->sendTimeMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$902(Lcom/google/wireless/webapps/Analytics$LogEnvelope;J)J

    .line 533
    #setter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$1002(Lcom/google/wireless/webapps/Analytics$LogEnvelope;I)I

    .line 534
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->clear()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->clear()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3

    .prologue
    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 456
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 457
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    .line 459
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    .line 461
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    .line 463
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 464
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    .line 465
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    .line 467
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 468
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->sendTimeMsec_:J

    .line 469
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 470
    return-object p0
.end method

.method public clearBuildNumber()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 944
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 945
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getBuildNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    .line 947
    return-object p0
.end method

.method public clearClient()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 663
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 664
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 666
    return-object p0
.end method

.method public clearCustomValue()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    .line 908
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 910
    return-object p0
.end method

.method public clearEvent()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 818
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    .line 819
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 821
    return-object p0
.end method

.method public clearPlatform()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 730
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 731
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    .line 733
    return-object p0
.end method

.method public clearSendTimeMsec()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3

    .prologue
    .line 970
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 971
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->sendTimeMsec_:J

    .line 973
    return-object p0
.end method

.method public clearVersion()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 694
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 695
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    .line 697
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->clone()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->clone()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3

    .prologue
    .line 474
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->create()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

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
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->clone()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    .line 926
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    .line 931
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getClient()Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    return-object v0
.end method

.method public getCustomValue(I)Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$CustomValue;

    return-object v0
.end method

.method public getCustomValueCount()I
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

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
    .line 841
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2

    .prologue
    .line 478
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/google/wireless/webapps/Analytics$Event;
    .registers 3
    .parameter "index"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

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
            "Lcom/google/wireless/webapps/Analytics$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    .line 712
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 713
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    .line 717
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getSendTimeMsec()J
    .registers 3

    .prologue
    .line 961
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->sendTimeMsec_:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    .line 676
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 677
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    .line 681
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasBuildNumber()Z
    .registers 3

    .prologue
    .line 922
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

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

.method public hasClient()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 648
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPlatform()Z
    .registers 3

    .prologue
    .line 708
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

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

.method public hasSendTimeMsec()Z
    .registers 3

    .prologue
    .line 958
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 672
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

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
    .line 578
    const/4 v0, 0x1

    return v0
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
    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 439
    check-cast p1, Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

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
    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 587
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_74

    .line 592
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 594
    :sswitch_d
    return-object p0

    .line 599
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 600
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->valueOf(I)Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    move-result-object v3

    .line 601
    .local v3, value:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    if-eqz v3, :cond_0

    .line 602
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 603
    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_0

    .line 608
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    goto :goto_0

    .line 613
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    goto :goto_0

    .line 618
    :sswitch_3b
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v1

    .line 619
    .local v1, subBuilder:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 620
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->addEvent(Lcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    goto :goto_0

    .line 624
    .end local v1           #subBuilder:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    :sswitch_4a
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->newBuilder()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v1

    .line 625
    .local v1, subBuilder:Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 626
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    goto :goto_0

    .line 630
    .end local v1           #subBuilder:Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    :sswitch_59
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 631
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 635
    :sswitch_66
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 636
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->sendTimeMsec_:J

    goto :goto_0

    .line 587
    nop

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_4a
        0x32 -> :sswitch_59
        0x38 -> :sswitch_66
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 538
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 574
    :cond_6
    :goto_6
    return-object p0

    .line 539
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->hasClient()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 540
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getClient()Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setClient(Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 542
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 543
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setVersion(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 545
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->hasPlatform()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 546
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setPlatform(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 548
    :cond_2e
    #getter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$600(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 549
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 550
    #getter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$600(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    .line 551
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 558
    :cond_4c
    :goto_4c
    #getter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$700(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 559
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 560
    #getter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$700(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    .line 561
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 568
    :cond_6a
    :goto_6a
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->hasBuildNumber()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 569
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getBuildNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setBuildNumber(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 571
    :cond_77
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->hasSendTimeMsec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getSendTimeMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setSendTimeMsec(J)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    goto :goto_6

    .line 553
    :cond_85
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 554
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$600(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c

    .line 563
    :cond_92
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 564
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->access$700(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6a
.end method

.method public setBuildNumber(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 935
    if-nez p1, :cond_8

    .line 936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 938
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 939
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildNumber_:Ljava/lang/Object;

    .line 941
    return-object p0
.end method

.method public setClient(Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 654
    if-nez p1, :cond_8

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 658
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 660
    return-object p0
.end method

.method public setCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue$Builder;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 862
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 864
    return-object p0
.end method

.method public setCustomValue(ILcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 851
    if-nez p2, :cond_8

    .line 852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 854
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureCustomValueIsMutable()V

    .line 855
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 857
    return-object p0
.end method

.method public setEvent(ILcom/google/wireless/webapps/Analytics$Event$Builder;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 773
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 775
    return-object p0
.end method

.method public setEvent(ILcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 762
    if-nez p2, :cond_8

    .line 763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 765
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->ensureEventIsMutable()V

    .line 766
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 768
    return-object p0
.end method

.method public setPlatform(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 721
    if-nez p1, :cond_8

    .line 722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 724
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 725
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->platform_:Ljava/lang/Object;

    .line 727
    return-object p0
.end method

.method public setSendTimeMsec(J)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 964
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 965
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->sendTimeMsec_:J

    .line 967
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 685
    if-nez p1, :cond_8

    .line 686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 688
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->bitField0_:I

    .line 689
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->version_:Ljava/lang/Object;

    .line 691
    return-object p0
.end method
