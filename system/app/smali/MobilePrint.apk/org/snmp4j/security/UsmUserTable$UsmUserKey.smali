.class public Lorg/snmp4j/security/UsmUserTable$UsmUserKey;
.super Ljava/lang/Object;
.source "UsmUserTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/security/UsmUserTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsmUserKey"
.end annotation


# instance fields
.field engineID:Lorg/snmp4j/smi/OctetString;

.field securityName:Lorg/snmp4j/smi/OctetString;


# direct methods
.method public constructor <init>(Lorg/snmp4j/security/UsmUserEntry;)V
    .registers 3
    .parameter "entry"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmUserEntry;->getEngineID()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->setEngineID(Lorg/snmp4j/smi/OctetString;)V

    .line 133
    invoke-virtual {p1}, Lorg/snmp4j/security/UsmUserEntry;->getUsmUser()Lorg/snmp4j/security/UsmUser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/snmp4j/security/UsmUser;->getSecurityName()Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 134
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)V
    .registers 3
    .parameter "engineID"
    .parameter "securityName"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-direct {p0, p1}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->setEngineID(Lorg/snmp4j/smi/OctetString;)V

    .line 138
    iput-object p2, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->securityName:Lorg/snmp4j/smi/OctetString;

    .line 139
    return-void
.end method

.method private setEngineID(Lorg/snmp4j/smi/OctetString;)V
    .registers 3
    .parameter "engineID"

    .prologue
    .line 142
    if-nez p1, :cond_a

    .line 143
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    .line 148
    :goto_9
    return-void

    .line 146
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    goto :goto_9
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6
    .parameter "o"

    .prologue
    .line 162
    instance-of v2, p1, Lorg/snmp4j/security/UsmUserEntry;

    if-eqz v2, :cond_10

    .line 163
    new-instance v2, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    check-cast p1, Lorg/snmp4j/security/UsmUserEntry;

    .end local p1
    invoke-direct {v2, p1}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;-><init>(Lorg/snmp4j/security/UsmUserEntry;)V

    invoke-virtual {p0, v2}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 179
    :cond_f
    :goto_f
    return v1

    .restart local p1
    :cond_10
    move-object v0, p1

    .line 165
    check-cast v0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    .line 166
    .local v0, other:Lorg/snmp4j/security/UsmUserTable$UsmUserKey;
    const/4 v1, 0x0

    .line 167
    .local v1, result:I
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_2f

    .line 168
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    iget-object v3, v0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OctetString;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 176
    :cond_24
    :goto_24
    if-nez v1, :cond_f

    .line 177
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->securityName:Lorg/snmp4j/smi/OctetString;

    iget-object v3, v0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->securityName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OctetString;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_f

    .line 170
    :cond_2f
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_39

    iget-object v2, v0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    if-nez v2, :cond_39

    .line 171
    const/4 v1, 0x1

    goto :goto_24

    .line 173
    :cond_39
    iget-object v2, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    if-nez v2, :cond_24

    iget-object v2, v0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    if-eqz v2, :cond_24

    .line 174
    const/4 v1, -0x1

    goto :goto_24
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 155
    instance-of v1, p1, Lorg/snmp4j/security/UsmUserEntry;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;

    if-eqz v1, :cond_10

    .line 156
    :cond_9
    invoke-virtual {p0, p1}, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 158
    :cond_10
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->engineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/snmp4j/security/UsmUserTable$UsmUserKey;->securityName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    return v0
.end method
