.class public Lorg/snmp4j/security/UsmUserEntry;
.super Ljava/lang/Object;
.source "UsmUserEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = -0x29ee4e2fc0ad32deL


# instance fields
.field private authenticationKey:[B

.field private engineID:Lorg/snmp4j/smi/OctetString;

.field private privacyKey:[B

.field private userName:Lorg/snmp4j/smi/OctetString;

.field private usmUser:Lorg/snmp4j/security/UsmUser;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    .line 49
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    .line 50
    new-instance v0, Lorg/snmp4j/security/UsmUser;

    new-instance v1, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v1}, Lorg/snmp4j/smi/OctetString;-><init>()V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;)V

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V
    .registers 4
    .parameter "userName"
    .parameter "user"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    .line 63
    iput-object p2, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    .line 64
    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->isLocalized()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 65
    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->getAuthenticationProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 67
    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->getAuthenticationPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->authenticationKey:[B

    .line 68
    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->getPrivacyProtocol()Lorg/snmp4j/smi/OID;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 70
    invoke-virtual {p2}, Lorg/snmp4j/security/UsmUser;->getPrivacyPassphrase()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->privacyKey:[B

    .line 74
    :cond_39
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V
    .registers 4
    .parameter "userName"
    .parameter "engineID"
    .parameter "user"

    .prologue
    .line 89
    invoke-direct {p0, p1, p3}, Lorg/snmp4j/security/UsmUserEntry;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/UsmUser;)V

    .line 90
    iput-object p2, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    .line 91
    return-void
.end method

.method public constructor <init>([BLorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;[BLorg/snmp4j/smi/OID;[B)V
    .registers 14
    .parameter "engineID"
    .parameter "securityName"
    .parameter "authProtocol"
    .parameter "authKey"
    .parameter "privProtocol"
    .parameter "privKey"

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-nez p1, :cond_33

    move-object v0, v2

    :goto_7
    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    .line 112
    iput-object p2, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    .line 113
    iput-object p4, p0, Lorg/snmp4j/security/UsmUserEntry;->authenticationKey:[B

    .line 114
    iput-object p6, p0, Lorg/snmp4j/security/UsmUserEntry;->privacyKey:[B

    .line 115
    new-instance v0, Lorg/snmp4j/security/UsmUser;

    iget-object v1, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    iget-object v3, p0, Lorg/snmp4j/security/UsmUserEntry;->authenticationKey:[B

    if-eqz v3, :cond_39

    new-instance v3, Lorg/snmp4j/smi/OctetString;

    iget-object v4, p0, Lorg/snmp4j/security/UsmUserEntry;->authenticationKey:[B

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    :goto_1e
    iget-object v4, p0, Lorg/snmp4j/security/UsmUserEntry;->privacyKey:[B

    if-eqz v4, :cond_3b

    new-instance v5, Lorg/snmp4j/smi/OctetString;

    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->privacyKey:[B

    invoke-direct {v5, v2}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    :goto_29
    iget-object v6, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    move-object v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/snmp4j/security/UsmUser;-><init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    .line 122
    return-void

    .line 111
    :cond_33
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0, p1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    goto :goto_7

    :cond_39
    move-object v3, v2

    .line 115
    goto :goto_1e

    :cond_3b
    move-object v5, v2

    goto :goto_29
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6
    .parameter "o"

    .prologue
    .line 166
    move-object v0, p1

    check-cast v0, Lorg/snmp4j/security/UsmUserEntry;

    .line 167
    .local v0, other:Lorg/snmp4j/security/UsmUserEntry;
    const/4 v1, 0x0

    .line 168
    .local v1, result:I
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_29

    iget-object v2, v0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_29

    .line 169
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    iget-object v3, v0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OctetString;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 177
    :cond_14
    :goto_14
    if-nez v1, :cond_28

    .line 178
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    iget-object v3, v0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OctetString;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 179
    if-nez v1, :cond_28

    .line 180
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    iget-object v3, v0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    invoke-virtual {v2, v3}, Lorg/snmp4j/security/UsmUser;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 183
    :cond_28
    return v1

    .line 171
    :cond_29
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_33

    iget-object v2, v0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    if-nez v2, :cond_33

    .line 172
    const/4 v1, 0x1

    goto :goto_14

    .line 174
    :cond_33
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    if-nez v2, :cond_14

    iget-object v2, v0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_14

    .line 175
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public getAuthenticationKey()[B
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->authenticationKey:[B

    return-object v0
.end method

.method public getEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getPrivacyKey()[B
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->privacyKey:[B

    return-object v0
.end method

.method public getUserName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getUsmUser()Lorg/snmp4j/security/UsmUser;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    return-object v0
.end method

.method public setAuthenticationKey([B)V
    .registers 2
    .parameter "authenticationKey"

    .prologue
    .line 143
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserEntry;->authenticationKey:[B

    .line 144
    return-void
.end method

.method public setEngineID(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "engineID"

    .prologue
    .line 128
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    .line 129
    return-void
.end method

.method public setPrivacyKey([B)V
    .registers 2
    .parameter "privacyKey"

    .prologue
    .line 149
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserEntry;->privacyKey:[B

    .line 150
    return-void
.end method

.method public setUserName(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 131
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    .line 132
    return-void
.end method

.method public setUsmUser(Lorg/snmp4j/security/UsmUser;)V
    .registers 2
    .parameter "usmUser"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UsmUserEntry[userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUserEntry;->userName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",usmUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUserEntry;->usmUser:Lorg/snmp4j/security/UsmUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
