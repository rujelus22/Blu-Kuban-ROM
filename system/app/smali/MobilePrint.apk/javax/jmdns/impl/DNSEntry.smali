.class public abstract Ljavax/jmdns/impl/DNSEntry;
.super Ljava/lang/Object;
.source "DNSEntry.java"


# instance fields
.field private final _dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field private final _key:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field final _qualifiedNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _recordType:Ljavax/jmdns/impl/constants/DNSRecordType;

.field private final _type:Ljava/lang/String;

.field private final _unique:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .registers 12
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ljavax/jmdns/impl/DNSEntry;->_recordType:Ljavax/jmdns/impl/constants/DNSRecordType;

    .line 45
    iput-object p3, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 46
    iput-boolean p4, p0, Ljavax/jmdns/impl/DNSEntry;->_unique:Z

    .line 47
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    .line 48
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, domain:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, protocol:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, application:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, instance:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5e
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ca

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljava/lang/String;

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_cd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_af
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_key:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_c7
    const-string v4, ""

    goto :goto_5e

    :cond_ca
    const-string v4, ""

    goto :goto_80

    .line 53
    :cond_cd
    const-string v4, ""

    goto :goto_af
.end method


# virtual methods
.method public compareTo(Ljavax/jmdns/impl/DNSEntry;)I
    .registers 8
    .parameter "that"

    .prologue
    .line 252
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->toByteArray()[B

    move-result-object v3

    .line 253
    .local v3, thisBytes:[B
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->toByteArray()[B

    move-result-object v2

    .line 254
    .local v2, thatBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    array-length v4, v3

    array-length v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, n:I
    :goto_f
    if-lt v0, v1, :cond_15

    .line 261
    array-length v4, v3

    array-length v5, v2

    sub-int/2addr v4, v5

    :goto_14
    return v4

    .line 255
    :cond_15
    aget-byte v4, v3, v0

    aget-byte v5, v2, v0

    if-le v4, v5, :cond_1d

    .line 256
    const/4 v4, 0x1

    goto :goto_14

    .line 257
    :cond_1d
    aget-byte v4, v3, v0

    aget-byte v5, v2, v0

    if-ge v4, v5, :cond_25

    .line 258
    const/4 v4, -0x1

    goto :goto_14

    .line 254
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, result:Z
    instance-of v2, p1, Ljavax/jmdns/impl/DNSEntry;

    if-eqz v2, :cond_2f

    move-object v0, p1

    .line 64
    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 65
    .local v0, other:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    if-ne v2, v3, :cond_30

    const/4 v1, 0x1

    .line 67
    .end local v0           #other:Ljavax/jmdns/impl/DNSEntry;
    :cond_2f
    :goto_2f
    return v1

    .line 65
    .restart local v0       #other:Ljavax/jmdns/impl/DNSEntry;
    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_key:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_key:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getQualifiedNameMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_6
.end method

.method public getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_recordType:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_recordType:Ljavax/jmdns/impl/constants/DNSRecordType;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    goto :goto_6
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, subtype:Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0           #subtype:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #subtype:Ljava/lang/String;
    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 269
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDomainDiscoveryQuery()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "dns-sd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 162
    iget-object v1, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, name:Ljava/lang/String;
    const-string v1, "b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "db"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "dr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "lb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    move v1, v2

    .line 165
    .end local v0           #name:Ljava/lang/String;
    :goto_46
    return v1

    .line 163
    .restart local v0       #name:Ljava/lang/String;
    :cond_47
    const/4 v1, 0x1

    goto :goto_46

    .end local v0           #name:Ljava/lang/String;
    :cond_49
    move v1, v2

    .line 165
    goto :goto_46
.end method

.method public abstract isExpired(J)Z
.end method

.method public isReverseLookup()Z
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->isV4ReverseLookup()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->isV6ReverseLookup()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 4
    .parameter "entry"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    if-eq v0, v1, :cond_32

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public isSameRecordClass(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 4
    .parameter "entry"

    .prologue
    .line 205
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSameType(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 4
    .parameter "entry"

    .prologue
    .line 215
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isServicesDiscoveryMetaQuery()Z
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dns-sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_services"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public abstract isStale(J)Z
.end method

.method public isUnique()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSEntry;->_unique:Z

    return v0
.end method

.method public isV4ReverseLookup()Z
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "in-addr.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isV6ReverseLookup()Z
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ip6.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sameSubtype(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 87
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .registers 4
    .parameter "dout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 224
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 225
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 226
    return-void
.end method

.method protected toByteArray()[B
    .registers 5

    .prologue
    .line 235
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v1, dout:Ljava/io/DataOutputStream;
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSEntry;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    return-object v3

    .line 240
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dout:Ljava/io/DataOutputStream;
    :catch_15
    move-exception v2

    .line 241
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    .local v0, aLog:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-boolean v1, p0, Ljavax/jmdns/impl/DNSEntry;->_unique:Z

    if-eqz v1, :cond_85

    const-string v1, "-unique,"

    :goto_61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSEntry;->toString(Ljava/lang/StringBuilder;)V

    .line 285
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 282
    :cond_85
    const-string v1, ","

    goto :goto_61
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "aLog"

    .prologue
    .line 294
    return-void
.end method
