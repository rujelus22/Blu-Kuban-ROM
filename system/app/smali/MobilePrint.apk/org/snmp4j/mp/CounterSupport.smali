.class public Lorg/snmp4j/mp/CounterSupport;
.super Ljava/lang/Object;
.source "CounterSupport.java"


# static fields
.field protected static instance:Lorg/snmp4j/mp/CounterSupport;


# instance fields
.field private transient counterListeners:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/mp/CounterSupport;->instance:Lorg/snmp4j/mp/CounterSupport;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lorg/snmp4j/mp/CounterSupport;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lorg/snmp4j/mp/CounterSupport;->instance:Lorg/snmp4j/mp/CounterSupport;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Lorg/snmp4j/mp/CounterSupport;

    invoke-direct {v0}, Lorg/snmp4j/mp/CounterSupport;-><init>()V

    sput-object v0, Lorg/snmp4j/mp/CounterSupport;->instance:Lorg/snmp4j/mp/CounterSupport;

    .line 51
    :cond_b
    sget-object v0, Lorg/snmp4j/mp/CounterSupport;->instance:Lorg/snmp4j/mp/CounterSupport;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCounterListener(Lorg/snmp4j/event/CounterListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 63
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 64
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    iput-object v0, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 67
    :cond_16
    monitor-exit p0

    return-void

    .line 61
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    move-object v0, v1

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public fireIncrementCounter(Lorg/snmp4j/event/CounterEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 90
    iget-object v3, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    if-eqz v3, :cond_19

    .line 91
    iget-object v2, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    .line 92
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 93
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 94
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/event/CounterListener;

    invoke-interface {v3, p1}, Lorg/snmp4j/event/CounterListener;->incrementCounter(Lorg/snmp4j/event/CounterEvent;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 97
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_19
    return-void
.end method

.method public declared-synchronized removeCounterListener(Lorg/snmp4j/event/CounterListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 76
    iget-object v1, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 77
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 78
    iput-object v0, p0, Lorg/snmp4j/mp/CounterSupport;->counterListeners:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 80
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 75
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
