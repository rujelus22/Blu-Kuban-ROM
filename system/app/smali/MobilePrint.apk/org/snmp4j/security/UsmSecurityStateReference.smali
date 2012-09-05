.class public Lorg/snmp4j/security/UsmSecurityStateReference;
.super Ljava/lang/Object;
.source "UsmSecurityStateReference.java"

# interfaces
.implements Lorg/snmp4j/security/SecurityStateReference;


# instance fields
.field private authenticationKey:[B

.field private authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

.field private privacyKey:[B

.field private privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

.field private securityEngineID:[B

.field private securityLevel:I

.field private securityName:[B

.field private userName:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public getAuthenticationKey()[B
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->authenticationKey:[B

    return-object v0
.end method

.method public getAuthenticationProtocol()Lorg/snmp4j/security/AuthenticationProtocol;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    return-object v0
.end method

.method public getPrivacyKey()[B
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->privacyKey:[B

    return-object v0
.end method

.method public getPrivacyProtocol()Lorg/snmp4j/security/PrivacyProtocol;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    return-object v0
.end method

.method public getSecurityEngineID()[B
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->securityEngineID:[B

    return-object v0
.end method

.method public getSecurityLevel()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->securityLevel:I

    return v0
.end method

.method public getSecurityName()[B
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->securityName:[B

    return-object v0
.end method

.method public getUserName()[B
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->userName:[B

    return-object v0
.end method

.method public setAuthenticationKey([B)V
    .registers 2
    .parameter "authenticationKey"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->authenticationKey:[B

    .line 78
    return-void
.end method

.method public setAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V
    .registers 2
    .parameter "authenticationProtocol"

    .prologue
    .line 65
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    .line 66
    return-void
.end method

.method public setPrivacyKey([B)V
    .registers 2
    .parameter "privacyKey"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->privacyKey:[B

    .line 84
    return-void
.end method

.method public setPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V
    .registers 2
    .parameter "privacyProtocol"

    .prologue
    .line 71
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    .line 72
    return-void
.end method

.method public setSecurityEngineID([B)V
    .registers 2
    .parameter "securityEngineID"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->securityEngineID:[B

    .line 60
    return-void
.end method

.method public setSecurityLevel(I)V
    .registers 2
    .parameter "securityLevel"

    .prologue
    .line 89
    iput p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->securityLevel:I

    .line 90
    return-void
.end method

.method public setSecurityName([B)V
    .registers 2
    .parameter "securityName"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->securityName:[B

    .line 54
    return-void
.end method

.method public setUserName([B)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityStateReference;->userName:[B

    .line 51
    return-void
.end method
