.class public Lorg/snmp4j/security/UsmUser;
.super Ljava/lang/Object;
.source "UsmUser.java"

# interfaces
.implements Lorg/snmp4j/User;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x1f597c84da40932fL


# instance fields
.field private authenticationPassphrase:Lorg/snmp4j/smi/OctetString;

.field private authenticationProtocol:Lorg/snmp4j/smi/OID;

.field private localizationEngineID:Lorg/snmp4j/smi/OctetString;

.field private privacyPassphrase:Lorg/snmp4j/smi/OctetString;

.field private privacyProtocol:Lorg/snmp4j/smi/OID;

.field private securityName:Lorg/snmp4j/smi/OctetString;


# direct methods
.method public constructor <init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;)V
    .registers 8
    .parameter "securityName"
    .parameter "authenticationProtocol"
    .parameter "authenticationPassphrase"
    .parameter "privacyProtocol"
    .parameter "privacyPassphrase"

    .prologue
    const/16 v1, 0x8

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_d

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_d
    if-eqz p2, :cond_1f

    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v0

    if-ge v0, v1, :cond_1f

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "USM passphrases must be at least 8 bytes long (RFC3414 \u00a711.2)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1f
    if-eqz p4, :cond_31

    if-eqz p5, :cond_31

    invoke-virtual {p5}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v0

    if-ge v0, v1, :cond_31

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "USM passphrases must be at least 8 bytes long (RFC3414 \u00a711.2)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_31
    iput-object p1, p0, Lorg/snmp4j/security/UsmUser;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 94
    iput-object p2, p0, Lorg/snmp4j/security/UsmUser;->authenticationProtocol:Lorg/snmp4j/smi/OID;

    .line 95
    iput-object p3, p0, Lorg/snmp4j/security/UsmUser;->authenticationPassphrase:Lorg/snmp4j/smi/OctetString;

    .line 96
    iput-object p4, p0, Lorg/snmp4j/security/UsmUser;->privacyProtocol:Lorg/snmp4j/smi/OID;

    .line 97
    iput-object p5, p0, Lorg/snmp4j/security/UsmUser;->privacyPassphrase:Lorg/snmp4j/smi/OctetString;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V
    .registers 7
    .parameter "securityName"
    .parameter "authenticationProtocol"
    .parameter "authenticationPassphrase"
    .parameter "privacyProtocol"
    .parameter "privacyPassphrase"
    .parameter "localizationEngineID"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p5}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;)V

    .line 136
    iput-object p6, p0, Lorg/snmp4j/security/UsmUser;->localizationEngineID:Lorg/snmp4j/smi/OctetString;

    .line 137
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 244
    new-instance v0, Lorg/snmp4j/security/UsmUser;

    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->securityName:Lorg/snmp4j/smi/OctetString;

    iget-object v2, p0, Lorg/snmp4j/security/UsmUser;->authenticationProtocol:Lorg/snmp4j/smi/OID;

    iget-object v3, p0, Lorg/snmp4j/security/UsmUser;->authenticationPassphrase:Lorg/snmp4j/smi/OctetString;

    iget-object v4, p0, Lorg/snmp4j/security/UsmUser;->privacyProtocol:Lorg/snmp4j/smi/OID;

    iget-object v5, p0, Lorg/snmp4j/security/UsmUser;->privacyPassphrase:Lorg/snmp4j/smi/OctetString;

    iget-object v6, p0, Lorg/snmp4j/security/UsmUser;->localizationEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V

    .line 248
    .local v0, copy:Lorg/snmp4j/security/UsmUser;
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .parameter "o"

    .prologue
    .line 239
    move-object v0, p1

    check-cast v0, Lorg/snmp4j/security/UsmUser;

    .line 240
    .local v0, other:Lorg/snmp4j/security/UsmUser;
    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->securityName:Lorg/snmp4j/smi/OctetString;

    iget-object v2, v0, Lorg/snmp4j/security/UsmUser;->securityName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1, v2}, Lorg/snmp4j/smi/OctetString;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->authenticationPassphrase:Lorg/snmp4j/smi/OctetString;

    if-nez v0, :cond_6

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->authenticationPassphrase:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    goto :goto_5
.end method

.method public getAuthenticationProtocol()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->authenticationProtocol:Lorg/snmp4j/smi/OID;

    if-nez v0, :cond_6

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->authenticationProtocol:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    goto :goto_5
.end method

.method public getLocalizationEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->localizationEngineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->privacyPassphrase:Lorg/snmp4j/smi/OctetString;

    if-nez v0, :cond_6

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->privacyPassphrase:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    goto :goto_5
.end method

.method public getPrivacyProtocol()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->privacyProtocol:Lorg/snmp4j/smi/OID;

    if-nez v0, :cond_6

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->privacyProtocol:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    goto :goto_5
.end method

.method public getSecurityModel()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x3

    return v0
.end method

.method public getSecurityName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->securityName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public isLocalized()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/snmp4j/security/UsmUser;->localizationEngineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UsmUser[secName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->securityName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",authProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->authenticationProtocol:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",authPassphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->authenticationPassphrase:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",privProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->privacyProtocol:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",privPassphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUser;->privacyPassphrase:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",localizationEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/snmp4j/security/UsmUser;->getLocalizationEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
