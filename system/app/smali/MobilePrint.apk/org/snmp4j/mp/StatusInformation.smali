.class public Lorg/snmp4j/mp/StatusInformation;
.super Ljava/lang/Object;
.source "StatusInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7da4269c363a17b7L


# instance fields
.field private contextEngineID:[B

.field private contextName:[B

.field private errorIndication:Lorg/snmp4j/smi/VariableBinding;

.field private securityLevel:Lorg/snmp4j/smi/Integer32;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/VariableBinding;[B[BLorg/snmp4j/smi/Integer32;)V
    .registers 5
    .parameter "errorIndication"
    .parameter "contextName"
    .parameter "contextEngineID"
    .parameter "securityLevel"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/snmp4j/mp/StatusInformation;->errorIndication:Lorg/snmp4j/smi/VariableBinding;

    .line 50
    iput-object p2, p0, Lorg/snmp4j/mp/StatusInformation;->contextName:[B

    .line 51
    iput-object p3, p0, Lorg/snmp4j/mp/StatusInformation;->contextEngineID:[B

    .line 52
    iput-object p4, p0, Lorg/snmp4j/mp/StatusInformation;->securityLevel:Lorg/snmp4j/smi/Integer32;

    .line 53
    return-void
.end method


# virtual methods
.method public getContextEngineID()[B
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/snmp4j/mp/StatusInformation;->contextEngineID:[B

    return-object v0
.end method

.method public getContextName()[B
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/snmp4j/mp/StatusInformation;->contextName:[B

    return-object v0
.end method

.method public getErrorIndication()Lorg/snmp4j/smi/VariableBinding;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/snmp4j/mp/StatusInformation;->errorIndication:Lorg/snmp4j/smi/VariableBinding;

    return-object v0
.end method

.method public getSecurityLevel()Lorg/snmp4j/smi/Integer32;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/snmp4j/mp/StatusInformation;->securityLevel:Lorg/snmp4j/smi/Integer32;

    return-object v0
.end method

.method public setContextEngineID([B)V
    .registers 2
    .parameter "contextEngineID"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/snmp4j/mp/StatusInformation;->contextEngineID:[B

    .line 69
    return-void
.end method

.method public setContextName([B)V
    .registers 2
    .parameter "contextName"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/snmp4j/mp/StatusInformation;->contextName:[B

    .line 63
    return-void
.end method

.method public setErrorIndication(Lorg/snmp4j/smi/VariableBinding;)V
    .registers 2
    .parameter "errorIndication"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/snmp4j/mp/StatusInformation;->errorIndication:Lorg/snmp4j/smi/VariableBinding;

    .line 60
    return-void
.end method

.method public setSecurityLevel(Lorg/snmp4j/smi/Integer32;)V
    .registers 2
    .parameter "securityLevel"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/snmp4j/mp/StatusInformation;->securityLevel:Lorg/snmp4j/smi/Integer32;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/snmp4j/mp/StatusInformation;->errorIndication:Lorg/snmp4j/smi/VariableBinding;

    if-nez v0, :cond_7

    .line 82
    const-string v0, "noError"

    .line 84
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/snmp4j/mp/StatusInformation;->errorIndication:Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
