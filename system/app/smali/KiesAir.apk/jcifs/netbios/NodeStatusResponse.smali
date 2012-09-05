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

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->recordName:Ljcifs/netbios/Name;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 45
    return-void
.end method

.method private isInAscii([BII)Z
    .registers 6
    .parameter "src"
    .parameter "startIndex"
    .parameter "length"

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 75
    aget-byte v1, p1, p2

    if-gez v1, :cond_9

    .line 76
    const/4 v1, 0x0

    .line 79
    :goto_8
    return v1

    .line 73
    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 79
    :cond_e
    const/4 v1, 0x1

    goto :goto_8
.end method

.method private readNodeNameArray([BI)I
    .registers 24
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 83
    move/from16 v19, p2

    .line 85
    .local v19, start:I
    move-object/from16 v0, p0

    iget v3, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    new-array v3, v3, [Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iput-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v0, v3, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 97
    .local v18, scope:Ljava/lang/String;
    const/4 v13, 0x0

    .line 100
    .local v13, addrFound:Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_18
    :try_start_18
    move-object/from16 v0, p0

    iget v3, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    if-ge v15, v3, :cond_156

    .line 101
    add-int/lit8 v16, p2, 0xe

    .local v16, j:I
    :goto_20
    aget-byte v3, p1, v16

    const/16 v4, 0x20

    if-ne v3, v4, :cond_29

    add-int/lit8 v16, v16, -0x1

    goto :goto_20

    .line 104
    :cond_29
    sub-int v3, v16, p2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/NodeStatusResponse;->isInAscii([BII)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 105
    new-instance v17, Ljava/lang/String;

    sub-int v3, v16, p2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 109
    .local v17, n:Ljava/lang/String;
    :goto_4a
    add-int/lit8 v3, p2, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v14, v3, 0xff

    .line 110
    .local v14, hexCode:I
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_125

    const/4 v6, 0x1

    .line 111
    .local v6, groupName:Z
    :goto_5b
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x60

    shr-int/lit8 v7, v3, 0x5

    .line 112
    .local v7, ownerNodeType:I
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_128

    const/4 v8, 0x1

    .line 113
    .local v8, isBeingDeleted:Z
    :goto_6e
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_12b

    const/4 v9, 0x1

    .line 114
    .local v9, isInConflict:Z
    :goto_79
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12e

    const/4 v10, 0x1

    .line 115
    .local v10, isActive:Z
    :goto_83
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_131

    const/4 v11, 0x1

    .line 123
    .local v11, isPermanent:Z
    :goto_8d
    if-nez v13, :cond_134

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v3, v3, Ljcifs/netbios/Name;->hexCode:I

    if-ne v3, v14, :cond_134

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v4, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-eq v3, v4, :cond_b3

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v3, v3, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 127
    :cond_b3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v3, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v4, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v3, v4, :cond_cc

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    new-instance v4, Ljcifs/netbios/Name;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, v3, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 130
    :cond_cc
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v6, v3, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput v7, v3, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v8, v3, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v9, v3, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v10, v3, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v11, v3, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    iput-object v4, v3, Ljcifs/netbios/NbtAddress;->macAddress:[B

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 138
    const/4 v13, 0x1

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    aput-object v4, v3, v15

    .line 100
    :goto_10c
    add-int/lit8 p2, p2, 0x12

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_18

    .line 107
    .end local v6           #groupName:Z
    .end local v7           #ownerNodeType:I
    .end local v8           #isBeingDeleted:Z
    .end local v9           #isInConflict:Z
    .end local v10           #isActive:Z
    .end local v11           #isPermanent:Z
    .end local v14           #hexCode:I
    .end local v17           #n:Ljava/lang/String;
    :cond_112
    new-instance v17, Ljava/lang/String;

    sub-int v3, v16, p2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Ljcifs/netbios/Name;->CIFS_MULTIBYTE_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v17       #n:Ljava/lang/String;
    goto/16 :goto_4a

    .line 110
    .restart local v14       #hexCode:I
    :cond_125
    const/4 v6, 0x0

    goto/16 :goto_5b

    .line 112
    .restart local v6       #groupName:Z
    .restart local v7       #ownerNodeType:I
    :cond_128
    const/4 v8, 0x0

    goto/16 :goto_6e

    .line 113
    .restart local v8       #isBeingDeleted:Z
    :cond_12b
    const/4 v9, 0x0

    goto/16 :goto_79

    .line 114
    .restart local v9       #isInConflict:Z
    :cond_12e
    const/4 v10, 0x0

    goto/16 :goto_83

    .line 115
    .restart local v10       #isActive:Z
    :cond_131
    const/4 v11, 0x0

    goto/16 :goto_8d

    .line 141
    .restart local v11       #isPermanent:Z
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    move-object/from16 v20, v0

    new-instance v3, Ljcifs/netbios/NbtAddress;

    new-instance v4, Ljcifs/netbios/Name;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget v5, v5, Ljcifs/netbios/NbtAddress;->address:I

    move-object/from16 v0, p0

    iget-object v12, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    invoke-direct/range {v3 .. v12}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    aput-object v3, v20, v15
    :try_end_154
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_154} :catch_155

    goto :goto_10c

    .line 152
    .end local v6           #groupName:Z
    .end local v7           #ownerNodeType:I
    .end local v8           #isBeingDeleted:Z
    .end local v9           #isInConflict:Z
    .end local v10           #isActive:Z
    .end local v11           #isPermanent:Z
    .end local v14           #hexCode:I
    .end local v16           #j:I
    .end local v17           #n:Ljava/lang/String;
    :catch_155
    move-exception v3

    .line 154
    :cond_156
    sub-int v3, p2, v19

    return v3
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
    iget v4, p0, Ljcifs/netbios/NodeStatusResponse;->rDataLength:I

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
    .line 157
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
