.class public Lorg/snmp4j/mp/DefaultCounterListener;
.super Ljava/lang/Object;
.source "DefaultCounterListener.java"

# interfaces
.implements Lorg/snmp4j/event/CounterListener;


# instance fields
.field private counters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/mp/DefaultCounterListener;->counters:Ljava/util/Hashtable;

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized incrementCounter(Lorg/snmp4j/event/CounterEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lorg/snmp4j/event/CounterEvent;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v1

    .line 64
    .local v1, id:Lorg/snmp4j/smi/OID;
    iget-object v2, p0, Lorg/snmp4j/mp/DefaultCounterListener;->counters:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/VariableBinding;

    .line 65
    .local v0, counter:Lorg/snmp4j/smi/VariableBinding;
    if-nez v0, :cond_2f

    .line 66
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    .end local v0           #counter:Lorg/snmp4j/smi/VariableBinding;
    new-instance v2, Lorg/snmp4j/smi/Counter32;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lorg/snmp4j/smi/Counter32;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    .line 67
    .restart local v0       #counter:Lorg/snmp4j/smi/VariableBinding;
    iget-object v2, p0, Lorg/snmp4j/mp/DefaultCounterListener;->counters:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_20
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/smi/Variable;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/smi/Variable;

    invoke-virtual {p1, v2}, Lorg/snmp4j/event/CounterEvent;->setCurrentValue(Lorg/snmp4j/smi/Variable;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_39

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/smi/Counter32;

    invoke-virtual {v2}, Lorg/snmp4j/smi/Counter32;->increment()V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_20

    .line 63
    .end local v0           #counter:Lorg/snmp4j/smi/VariableBinding;
    .end local v1           #id:Lorg/snmp4j/smi/OID;
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2
.end method
