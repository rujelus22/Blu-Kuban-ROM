.class public Lorg/snmp4j/UserTarget;
.super Lorg/snmp4j/SecureTarget;
.source "UserTarget.java"


# static fields
.field private static final serialVersionUID:J = -0x13cbfc8518a84102L


# instance fields
.field private authoritativeEngineID:Lorg/snmp4j/smi/OctetString;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/snmp4j/SecureTarget;-><init>()V

    .line 43
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/UserTarget;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;[B)V
    .registers 5
    .parameter "address"
    .parameter "securityName"
    .parameter "authoritativeEngineID"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/SecureTarget;-><init>(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)V

    .line 43
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/UserTarget;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 65
    invoke-virtual {p0, p3}, Lorg/snmp4j/UserTarget;->setAuthoritativeEngineID([B)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;[BI)V
    .registers 6
    .parameter "address"
    .parameter "securityName"
    .parameter "authoritativeEngineID"
    .parameter "securityLevel"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/SecureTarget;-><init>(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)V

    .line 43
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/UserTarget;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 85
    invoke-virtual {p0, p3}, Lorg/snmp4j/UserTarget;->setAuthoritativeEngineID([B)V

    .line 86
    invoke-virtual {p0, p4}, Lorg/snmp4j/UserTarget;->setSecurityLevel(I)V

    .line 87
    return-void
.end method


# virtual methods
.method public getAuthoritativeEngineID()[B
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/snmp4j/UserTarget;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getSecurityModel()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x3

    return v0
.end method

.method public setAuthoritativeEngineID([B)V
    .registers 3
    .parameter "authoritativeEngineID"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/snmp4j/UserTarget;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 96
    return-void
.end method

.method public setSecurityModel(I)V
    .registers 4
    .parameter "securityModel"

    .prologue
    .line 125
    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The UserTarget target can only be used with the User Based Security Model (USM)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_b
    return-void
.end method
