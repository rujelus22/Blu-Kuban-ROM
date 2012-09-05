.class Ljcifs/netbios/NameQueryResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "NameQueryResponse.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 24
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 25
    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameQueryResponse;->readResourceRecordWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .registers 10
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    const/4 v1, 0x0

    .line 37
    iget v3, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v3, :cond_9

    iget v3, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    if-eqz v3, :cond_a

    .line 50
    :cond_9
    :goto_9
    return v1

    .line 40
    :cond_a
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_13

    const/4 v1, 0x1

    .line 41
    .local v1, groupName:Z
    :cond_13
    aget-byte v3, p1, p2

    and-int/lit8 v3, v3, 0x60

    shr-int/lit8 v2, v3, 0x5

    .line 42
    .local v2, nodeType:I
    add-int/lit8 p2, p2, 0x2

    .line 43
    invoke-static {p1, p2}, Ljcifs/netbios/NameQueryResponse;->readInt4([BI)I

    move-result v0

    .line 44
    .local v0, address:I
    if-eqz v0, :cond_30

    .line 45
    iget-object v3, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    new-instance v5, Ljcifs/netbios/NbtAddress;

    iget-object v6, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-direct {v5, v6, v0, v1, v2}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    aput-object v5, v3, v4

    .line 50
    :goto_2e
    const/4 v1, 0x6

    goto :goto_9

    .line 47
    :cond_30
    iget-object v3, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameQueryResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string v2, ",addrEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
