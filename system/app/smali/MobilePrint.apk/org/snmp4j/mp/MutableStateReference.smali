.class public Lorg/snmp4j/mp/MutableStateReference;
.super Ljava/lang/Object;
.source "MutableStateReference.java"


# instance fields
.field private stateReference:Lorg/snmp4j/mp/StateReference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getStateReference()Lorg/snmp4j/mp/StateReference;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/snmp4j/mp/MutableStateReference;->stateReference:Lorg/snmp4j/mp/StateReference;

    return-object v0
.end method

.method public setStateReference(Lorg/snmp4j/mp/StateReference;)V
    .registers 2
    .parameter "stateReference"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/snmp4j/mp/MutableStateReference;->stateReference:Lorg/snmp4j/mp/StateReference;

    .line 41
    return-void
.end method
