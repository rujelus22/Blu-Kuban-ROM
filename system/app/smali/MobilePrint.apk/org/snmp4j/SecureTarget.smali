.class public abstract Lorg/snmp4j/SecureTarget;
.super Lorg/snmp4j/AbstractTarget;
.source "SecureTarget.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x35a2a695f93e4efeL


# instance fields
.field private securityLevel:I

.field private securityModel:I

.field private securityName:Lorg/snmp4j/smi/OctetString;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/snmp4j/AbstractTarget;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/snmp4j/SecureTarget;->securityLevel:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/SecureTarget;->securityModel:I

    .line 43
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/SecureTarget;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)V
    .registers 4
    .parameter "address"
    .parameter "securityName"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/snmp4j/AbstractTarget;-><init>(Lorg/snmp4j/smi/Address;)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/snmp4j/SecureTarget;->securityLevel:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/SecureTarget;->securityModel:I

    .line 43
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/SecureTarget;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 62
    invoke-virtual {p0, p2}, Lorg/snmp4j/SecureTarget;->setSecurityName(Lorg/snmp4j/smi/OctetString;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getSecurityLevel()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/snmp4j/SecureTarget;->securityLevel:I

    return v0
.end method

.method public getSecurityModel()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lorg/snmp4j/SecureTarget;->securityModel:I

    return v0
.end method

.method public final getSecurityName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/snmp4j/SecureTarget;->securityName:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public setSecurityLevel(I)V
    .registers 2
    .parameter "securityLevel"

    .prologue
    .line 114
    iput p1, p0, Lorg/snmp4j/SecureTarget;->securityLevel:I

    .line 115
    return-void
.end method

.method public setSecurityModel(I)V
    .registers 2
    .parameter "securityModel"

    .prologue
    .line 124
    iput p1, p0, Lorg/snmp4j/SecureTarget;->securityModel:I

    .line 125
    return-void
.end method

.method public final setSecurityName(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "securityName"

    .prologue
    .line 134
    iput-object p1, p0, Lorg/snmp4j/SecureTarget;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 135
    return-void
.end method
