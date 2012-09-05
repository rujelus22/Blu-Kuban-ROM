.class public Lorg/snmp4j/event/CounterEvent;
.super Ljava/util/EventObject;
.source "CounterEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x6ddd15e64bf4cb61L


# instance fields
.field private currentValue:Lorg/snmp4j/smi/Variable;

.field private oid:Lorg/snmp4j/smi/OID;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/smi/OID;)V
    .registers 4
    .parameter "source"
    .parameter "oid"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lorg/snmp4j/smi/Counter32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Counter32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/event/CounterEvent;->currentValue:Lorg/snmp4j/smi/Variable;

    .line 60
    iput-object p2, p0, Lorg/snmp4j/event/CounterEvent;->oid:Lorg/snmp4j/smi/OID;

    .line 61
    return-void
.end method


# virtual methods
.method public getCurrentValue()Lorg/snmp4j/smi/Variable;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/snmp4j/event/CounterEvent;->currentValue:Lorg/snmp4j/smi/Variable;

    return-object v0
.end method

.method public getOid()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/snmp4j/event/CounterEvent;->oid:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public setCurrentValue(Lorg/snmp4j/smi/Variable;)V
    .registers 2
    .parameter "currentValue"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/snmp4j/event/CounterEvent;->currentValue:Lorg/snmp4j/smi/Variable;

    .line 91
    return-void
.end method
