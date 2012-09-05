.class Ljcifs/netbios/NodeStatusResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "NodeStatusResponse.java"


# instance fields
.field addressArray:[Ljcifs/netbios/NbtAddress;

.field private macAddress:[B

.field private numberOfNames:I

.field private queryAddress:Ljcifs/netbios/NbtAddress;

.field private stats:[B


# direct methods
.method constructor <init>(Ljcifs/netbios/NbtAddress;)V
    .registers 3
    .parameter "queryAddress"

    .prologue
    .line 41
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 42
    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 43
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 45
    return-void
.end method

.method private readNodeNameArray([BI)I
    .registers 24
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 71
    move/from16 v19, p2

    .line 73
    .local v19, start:I
    move-object/from16 v0, p0

    iget v3, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    new-array v3, v3, [Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iput-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v3, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 85
    .local v18, scope:Ljava/lang/String;
    const/4 v13, 0x0

    .line 88
    .local v13, addrFound:Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_18
    :try_start_18
    move-object/from16 v0, p0

    iget v3, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    if-lt v15, v3, :cond_21

    .line 137
    :goto_1e
    sub-int v3, p2, v19

    return v3

    .line 89
    :cond_21
    add-int/lit8 v16, p2, 0xe

    .local v16, j:I
    :goto_23
    aget-byte v3, p1, v16

    const/16 v4, 0x20

    if-eq v3, v4, :cond_102

    .line 91
    new-instance v17, Ljava/lang/String;

    sub-int v3, v16, p2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 92
    .local v17, n:Ljava/lang/String;
    add-int/lit8 v3, p2, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v14, v3, 0xff

    .line 93
    .local v14, hexCode:I
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_106

    const/4 v6, 0x1

    .line 94
    .local v6, groupName:Z
    :goto_4b
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x60

    shr-int/lit8 v7, v3, 0x5

    .line 95
    .local v7, ownerNodeType:I
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_109

    const/4 v8, 0x1

    .line 96
    .local v8, isBeingDeleted:Z
    :goto_5e
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_10c

    const/4 v9, 0x1

    .line 97
    .local v9, isInConflict:Z
    :goto_69
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_10f

    const/4 v10, 0x1

    .line 98
    .local v10, isActive:Z
    :goto_73
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_112

    const/4 v11, 0x1

    .line 106
    .local v11, isPermanent:Z
    :goto_7d
    if-nez v13, :cond_115

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v3, v3, Ljcifs/netbios/Name;->hexCode:I

    if-ne v3, v14, :cond_115

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v4, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-eq v3, v4, :cond_a3

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v3, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 110
    :cond_a3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v4, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v3, v4, :cond_bc

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    new-instance v4, Ljcifs/netbios/Name;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 113
    :cond_bc
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v6, v3, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput v7, v3, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v8, v3, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v9, v3, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v10, v3, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v11, v3, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    iput-object v4, v3, Ljcifs/netbios/NbtAddress;->macAddress:[B

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 121
    const/4 v13, 0x1

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    aput-object v4, v3, v15

    .line 88
    :goto_fc
    add-int/lit8 p2, p2, 0x12

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_18

    .line 89
    .end local v6           #groupName:Z
    .end local v7           #ownerNodeType:I
    .end local v8           #isBeingDeleted:Z
    .end local v9           #isInConflict:Z
    .end local v10           #isActive:Z
    .end local v11           #isPermanent:Z
    .end local v14           #hexCode:I
    .end local v17           #n:Ljava/lang/String;
    :cond_102
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_23

    .line 93
    .restart local v14       #hexCode:I
    .restart local v17       #n:Ljava/lang/String;
    :cond_106
    const/4 v6, 0x0

    goto/16 :goto_4b

    .line 95
    .restart local v6       #groupName:Z
    .restart local v7       #ownerNodeType:I
    :cond_109
    const/4 v8, 0x0

    goto/16 :goto_5e

    .line 96
    .restart local v8       #isBeingDeleted:Z
    :cond_10c
    const/4 v9, 0x0

    goto/16 :goto_69

    .line 97
    .restart local v9       #isInConflict:Z
    :cond_10f
    const/4 v10, 0x0

    goto/16 :goto_73

    .line 98
    .restart local v10       #isActive:Z
    :cond_112
    const/4 v11, 0x0

    goto/16 :goto_7d

    .line 124
    .restart local v11       #isPermanent:Z
    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    move-object/from16 v20, v0

    new-instance v3, Ljcifs/netbios/NbtAddress;

    new-instance v4, Ljcifs/netbios/Name;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget v5, v5, Ljcifs/netbios/NbtAddress;->address:I

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    invoke-direct/range {v3 .. v12}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    .line 124
    aput-object v3, v20, v15
    :try_end_135
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_135} :catch_136

    goto :goto_fc

    .line 135
    .end local v6           #groupName:Z
    .end local v7           #ownerNodeType:I
    .end local v8           #isBeingDeleted:Z
    .end local v9           #isInConflict:Z
    .end local v10           #isActive:Z
    .end local v11           #isPermanent:Z
    .end local v14           #hexCode:I
    .end local v16           #j:I
    .end local v17           #n:Ljava/lang/String;
    :catch_136
    move-exception v3

    goto/16 :goto_1e
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NodeStatusResponse;->readResourceRecordWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .registers 11
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    const/4 v7, 0x0

    .line 57
    move v2, p2

    .line 58
    .local v2, start:I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 59
    iget v4, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    mul-int/lit8 v0, v4, 0x12

    .line 60
    .local v0, namesLength:I
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    sub-int/2addr v4, v0

    add-int/lit8 v3, v4, -0x1

    .line 61
    .local v3, statsLength:I
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, srcIndex:I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 63
    add-int v4, v1, v0

    iget-object v5, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    const/4 v6, 0x6

    invoke-static {p1, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-direct {p0, p1, v1}, Ljcifs/netbios/NodeStatusResponse;->readNodeNameArray([BI)I

    move-result v4

    add-int p2, v1, v4

    .line 65
    .end local v1           #srcIndex:I
    .restart local p2
    new-array v4, v3, [B

    iput-object v4, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    .line 66
    iget-object v4, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    invoke-static {p1, p2, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    add-int/2addr p2, v3

    .line 68
    sub-int v4, p2, v2

    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NodeStatusResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
