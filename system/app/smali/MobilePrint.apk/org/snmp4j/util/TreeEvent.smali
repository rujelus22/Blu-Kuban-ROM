.class public Lorg/snmp4j/util/TreeEvent;
.super Lorg/snmp4j/util/RetrievalEvent;
.source "TreeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x4e8e327068e77934L


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "status"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "exception"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/PDU;)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "report"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/PDU;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Lorg/snmp4j/smi/VariableBinding;)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "vbs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Lorg/snmp4j/smi/VariableBinding;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getVariableBindings()[Lorg/snmp4j/smi/VariableBinding;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->vbs:[Lorg/snmp4j/smi/VariableBinding;

    return-object v0
.end method
