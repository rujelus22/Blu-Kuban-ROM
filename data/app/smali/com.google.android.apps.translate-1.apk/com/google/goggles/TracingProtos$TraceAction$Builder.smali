.class public final Lcom/google/goggles/TracingProtos$TraceAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$TraceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingProtos$TraceAction;",
        "Lcom/google/goggles/TracingProtos$TraceAction$Builder;",
        ">;",
        "Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;"
    }
.end annotation


# instance fields
.field private actionStartMs_:J

.field private bitField0_:I

.field private durationMs_:I

.field private gogglesId_:J

.field private pointVariables_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable;",
            ">;"
        }
    .end annotation
.end field

.field private serverDurationMs_:I

.field private spanVariables_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;"
        }
    .end annotation
.end field

.field private tracingCookie_:Ljava/lang/Object;

.field private trackingId_:Ljava/lang/Object;

.field private type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1650
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1674
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    .line 1763
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    .line 1915
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 1405
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->maybeForceBuilderInitialization()V

    .line 1406
    return-void
.end method

.method static synthetic access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 1

    .prologue
    .line 1399
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->create()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1457
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1460
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 1

    .prologue
    .line 1411
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePointVariablesIsMutable()V
    .registers 3

    .prologue
    .line 1766
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1767
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    .line 1768
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1770
    :cond_16
    return-void
.end method

.method private ensureSpanVariablesIsMutable()V
    .registers 3

    .prologue
    .line 1677
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1678
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    .line 1679
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1681
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1409
    return-void
.end method


# virtual methods
.method public addAllPointVariables(Ljava/lang/Iterable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/TracingProtos$PointVariable;",
            ">;)",
            "Lcom/google/goggles/TracingProtos$TraceAction$Builder;"
        }
    .end annotation

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1834
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1836
    return-object p0
.end method

.method public addAllSpanVariables(Ljava/lang/Iterable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;)",
            "Lcom/google/goggles/TracingProtos$TraceAction$Builder;"
        }
    .end annotation

    .prologue
    .line 1744
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1745
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1747
    return-object p0
.end method

.method public addPointVariables(ILcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1826
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1827
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->build()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1829
    return-object p0
.end method

.method public addPointVariables(ILcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1809
    if-nez p2, :cond_8

    .line 1810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1812
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1813
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1815
    return-object p0
.end method

.method public addPointVariables(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1819
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1820
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->build()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1822
    return-object p0
.end method

.method public addPointVariables(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1799
    if-nez p1, :cond_8

    .line 1800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1802
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1803
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1805
    return-object p0
.end method

.method public addSpanVariables(ILcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1737
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1738
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1740
    return-object p0
.end method

.method public addSpanVariables(ILcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1720
    if-nez p2, :cond_8

    .line 1721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1723
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1724
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1726
    return-object p0
.end method

.method public addSpanVariables(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1730
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1731
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1733
    return-object p0
.end method

.method public addSpanVariables(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1710
    if-nez p1, :cond_8

    .line 1711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1713
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1714
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    return-object p0
.end method

.method public build()Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1448
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1450
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->build()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1464
    new-instance v2, Lcom/google/goggles/TracingProtos$TraceAction;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingProtos$TraceAction;-><init>(Lcom/google/goggles/TracingProtos$TraceAction$Builder;Lcom/google/goggles/TracingProtos$1;)V

    .line 1465
    iget v3, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1466
    const/4 v1, 0x0

    .line 1467
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_99

    .line 1470
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1602(Lcom/google/goggles/TracingProtos$TraceAction;Lcom/google/goggles/TracingProtos$TraceAction$Type;)Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1471
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_28

    .line 1472
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    .line 1473
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1475
    :cond_28
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1702(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/util/List;)Ljava/util/List;

    .line 1476
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_42

    .line 1477
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    .line 1478
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1480
    :cond_42
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1802(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/util/List;)Ljava/util/List;

    .line 1481
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_4f

    .line 1482
    or-int/lit8 v0, v0, 0x2

    .line 1484
    :cond_4f
    iget-wide v4, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->actionStartMs_:J

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->actionStartMs_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1902(Lcom/google/goggles/TracingProtos$TraceAction;J)J

    .line 1485
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_5c

    .line 1486
    or-int/lit8 v0, v0, 0x4

    .line 1488
    :cond_5c
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->durationMs_:I

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->durationMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$2002(Lcom/google/goggles/TracingProtos$TraceAction;I)I

    .line 1489
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_69

    .line 1490
    or-int/lit8 v0, v0, 0x8

    .line 1492
    :cond_69
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->serverDurationMs_:I

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->serverDurationMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$2102(Lcom/google/goggles/TracingProtos$TraceAction;I)I

    .line 1493
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_76

    .line 1494
    or-int/lit8 v0, v0, 0x10

    .line 1496
    :cond_76
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$2202(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_83

    .line 1498
    or-int/lit8 v0, v0, 0x20

    .line 1500
    :cond_83
    iget-wide v4, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->gogglesId_:J

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->gogglesId_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/TracingProtos$TraceAction;->access$2302(Lcom/google/goggles/TracingProtos$TraceAction;J)J

    .line 1501
    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_90

    .line 1502
    or-int/lit8 v0, v0, 0x40

    .line 1504
    :cond_90
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$2402(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    #setter for: Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingProtos$TraceAction;->access$2502(Lcom/google/goggles/TracingProtos$TraceAction;I)I

    .line 1506
    return-object v2

    :cond_99
    move v0, v1

    goto/16 :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1416
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1417
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    .line 1419
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    .line 1421
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1422
    iput-wide v2, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->actionStartMs_:J

    .line 1423
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1424
    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->durationMs_:I

    .line 1425
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1426
    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->serverDurationMs_:I

    .line 1427
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1429
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1430
    iput-wide v2, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->gogglesId_:J

    .line 1431
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 1433
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1434
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->clear()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->clear()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActionStartMs()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3

    .prologue
    .line 1866
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1867
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->actionStartMs_:J

    .line 1869
    return-object p0
.end method

.method public clearDurationMs()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1887
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1888
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->durationMs_:I

    .line 1890
    return-object p0
.end method

.method public clearGogglesId()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1965
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->gogglesId_:J

    .line 1968
    return-object p0
.end method

.method public clearPointVariables()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1839
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    .line 1840
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1842
    return-object p0
.end method

.method public clearServerDurationMs()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1908
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1909
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->serverDurationMs_:I

    .line 1911
    return-object p0
.end method

.method public clearSpanVariables()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    .line 1751
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1753
    return-object p0
.end method

.method public clearTracingCookie()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1939
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1940
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction;->getTracingCookie()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1942
    return-object p0
.end method

.method public clearTrackingId()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1996
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1997
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 1999
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1667
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1668
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1670
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3

    .prologue
    .line 1438
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->create()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

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
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionStartMs()J
    .registers 3

    .prologue
    .line 1857
    iget-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->actionStartMs_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2

    .prologue
    .line 1442
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .registers 2

    .prologue
    .line 1878
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->durationMs_:I

    return v0
.end method

.method public getGogglesId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1956
    iget-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->gogglesId_:J

    return-wide v0
.end method

.method public getPointVariables(I)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable;

    return-object v0
.end method

.method public getPointVariablesCount()I
    .registers 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPointVariablesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerDurationMs()I
    .registers 2

    .prologue
    .line 1899
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->serverDurationMs_:I

    return v0
.end method

.method public getSpanVariables(I)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable;

    return-object v0
.end method

.method public getSpanVariablesCount()I
    .registers 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanVariablesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTracingCookie()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1921
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1922
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1923
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1926
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 1978
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1979
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1980
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 1983
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getType()Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    return-object v0
.end method

.method public hasActionStartMs()Z
    .registers 3

    .prologue
    .line 1854
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

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

.method public hasDurationMs()Z
    .registers 3

    .prologue
    .line 1875
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

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

.method public hasGogglesId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1953
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

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

.method public hasServerDurationMs()Z
    .registers 3

    .prologue
    .line 1896
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

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

.method public hasTracingCookie()Z
    .registers 3

    .prologue
    .line 1917
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

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

.method public hasTrackingId()Z
    .registers 3

    .prologue
    .line 1974
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1652
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1556
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1572
    :cond_7
    :goto_7
    return v1

    :cond_8
    move v0, v1

    .line 1560
    :goto_9
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->getSpanVariablesCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 1561
    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->getSpanVariables(I)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$SpanVariable;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1560
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    move v0, v1

    .line 1566
    :goto_1d
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->getPointVariablesCount()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 1567
    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->getPointVariables(I)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$PointVariable;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1572
    :cond_30
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1510
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1552
    :cond_6
    :goto_6
    return-object p0

    .line 1511
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1512
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getType()Lcom/google/goggles/TracingProtos$TraceAction$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setType(Lcom/google/goggles/TracingProtos$TraceAction$Type;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 1514
    :cond_14
    #getter for: Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1700(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1515
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1516
    #getter for: Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1700(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    .line 1517
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1524
    :cond_32
    :goto_32
    #getter for: Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1800(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1525
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1526
    #getter for: Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1800(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    .line 1527
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1534
    :cond_50
    :goto_50
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasActionStartMs()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1535
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getActionStartMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setActionStartMs(J)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 1537
    :cond_5d
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1538
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setDurationMs(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 1540
    :cond_6a
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasServerDurationMs()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1541
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getServerDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setServerDurationMs(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 1543
    :cond_77
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasTracingCookie()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1544
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getTracingCookie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setTracingCookie(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 1546
    :cond_84
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasGogglesId()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1547
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getGogglesId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setGogglesId(J)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 1549
    :cond_91
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->hasTrackingId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1550
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setTrackingId(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    goto/16 :goto_6

    .line 1519
    :cond_a0
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1520
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    #getter for: Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1700(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 1529
    :cond_ad
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1530
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    #getter for: Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction;->access$1800(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1581
    sparse-switch v0, :sswitch_data_8e

    .line 1586
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1588
    :sswitch_d
    return-object p0

    .line 1593
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1594
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Type;->valueOf(I)Lcom/google/goggles/TracingProtos$TraceAction$Type;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_0

    .line 1596
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1597
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    goto :goto_0

    .line 1602
    :sswitch_21
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    .line 1603
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1604
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->addSpanVariables(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    goto :goto_0

    .line 1608
    :sswitch_30
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    .line 1609
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1610
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->addPointVariables(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    goto :goto_0

    .line 1614
    :sswitch_3f
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1615
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->actionStartMs_:J

    goto :goto_0

    .line 1619
    :sswitch_4c
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1620
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->durationMs_:I

    goto :goto_0

    .line 1624
    :sswitch_59
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1625
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    goto :goto_0

    .line 1629
    :sswitch_66
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1630
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->gogglesId_:J

    goto :goto_0

    .line 1634
    :sswitch_73
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1635
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->serverDurationMs_:I

    goto :goto_0

    .line 1639
    :sswitch_80
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1640
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1581
    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_30
        0x20 -> :sswitch_3f
        0x28 -> :sswitch_4c
        0x42 -> :sswitch_59
        0x49 -> :sswitch_66
        0x50 -> :sswitch_73
        0x5a -> :sswitch_80
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
    .line 1399
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1399
    check-cast p1, Lcom/google/goggles/TracingProtos$TraceAction;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

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
    .line 1399
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removePointVariables(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1846
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1848
    return-object p0
.end method

.method public removeSpanVariables(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1757
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1759
    return-object p0
.end method

.method public setActionStartMs(J)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1860
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1861
    iput-wide p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->actionStartMs_:J

    .line 1863
    return-object p0
.end method

.method public setDurationMs(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1881
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1882
    iput p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->durationMs_:I

    .line 1884
    return-object p0
.end method

.method public setGogglesId(J)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1959
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1960
    iput-wide p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->gogglesId_:J

    .line 1962
    return-object p0
.end method

.method public setPointVariables(ILcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1793
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1794
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->build()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1796
    return-object p0
.end method

.method public setPointVariables(ILcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1783
    if-nez p2, :cond_8

    .line 1784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1786
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensurePointVariablesIsMutable()V

    .line 1787
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1789
    return-object p0
.end method

.method public setServerDurationMs(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1902
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1903
    iput p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->serverDurationMs_:I

    .line 1905
    return-object p0
.end method

.method public setSpanVariables(ILcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1705
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1707
    return-object p0
.end method

.method public setSpanVariables(ILcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1694
    if-nez p2, :cond_8

    .line 1695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1697
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->ensureSpanVariablesIsMutable()V

    .line 1698
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1700
    return-object p0
.end method

.method public setTracingCookie(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1930
    if-nez p1, :cond_8

    .line 1931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1933
    :cond_8
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1934
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1936
    return-object p0
.end method

.method setTracingCookie(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1945
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1946
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->tracingCookie_:Ljava/lang/Object;

    .line 1948
    return-void
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1987
    if-nez p1, :cond_8

    .line 1988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1990
    :cond_8
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1991
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 1993
    return-object p0
.end method

.method setTrackingId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2002
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 2003
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->trackingId_:Ljava/lang/Object;

    .line 2005
    return-void
.end method

.method public setType(Lcom/google/goggles/TracingProtos$TraceAction$Type;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1658
    if-nez p1, :cond_8

    .line 1659
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1661
    :cond_8
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->bitField0_:I

    .line 1662
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1664
    return-object p0
.end method
