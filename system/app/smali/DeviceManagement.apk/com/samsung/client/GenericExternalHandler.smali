.class public Lcom/samsung/client/GenericExternalHandler;
.super Ljava/lang/Object;
.source "GenericExternalHandler.java"


# instance fields
.field private mExtHdlr:Lcom/samsung/client/GenericExternalHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bytes2HexString([B)Ljava/lang/String;
    .registers 8
    .parameter "array"

    .prologue
    .line 152
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 153
    .local v4, strBuffer:Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_25

    aget-byte v1, v0, v2

    .line 154
    .local v1, b:B
    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 157
    .end local v1           #b:B
    :cond_25
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected final convertInt2Bytes(I)[B
    .registers 5
    .parameter "i"

    .prologue
    .line 142
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 143
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 144
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 145
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 146
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    return-object v0
.end method

.method protected final getData([B)[B
    .registers 8
    .parameter "arr"

    .prologue
    .line 87
    const-string v3, "GenericExternalHandler"

    const-string v4, "getData()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 89
    .local v2, uri_len:I
    const-string v3, "GenericExternalHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData() : uri len - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 92
    .local v1, data_len:I
    const-string v3, "GenericExternalHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData() : data len - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-array v0, v1, [B

    .line 95
    .local v0, data:[B
    add-int/lit8 v3, v2, 0x5

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    return-object v0
.end method

.method protected final getSubtree([B)Ljava/lang/String;
    .registers 8
    .parameter "arr"

    .prologue
    const/4 v5, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/client/GenericExternalHandler;->getUri([B)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, uri:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, segments:[Ljava/lang/String;
    const-string v2, "GenericExternalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubtree() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    aget-object v2, v0, v5

    return-object v2
.end method

.method protected final getUri([B)Ljava/lang/String;
    .registers 8
    .parameter "arr"

    .prologue
    .line 70
    const-string v3, "GenericExternalHandler"

    const-string v4, "getUri()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 72
    .local v2, uri_len:I
    const-string v3, "GenericExternalHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUri() : uri len - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-array v0, v2, [B

    .line 74
    .local v0, str:[B
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 76
    .local v1, uri:Ljava/lang/String;
    const-string v3, "GenericExternalHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v1
.end method

.method protected final getUriSegment([BI)Ljava/lang/String;
    .registers 8
    .parameter "arr"
    .parameter "i"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/client/GenericExternalHandler;->getUri([B)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, uri:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, segments:[Ljava/lang/String;
    const-string v2, "GenericExternalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubtree() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    aget-object v2, v0, p2

    return-object v2
.end method

.method public processRilRequest(B[BI)V
    .registers 9
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 29
    const-string v1, "GenericExternalHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRilResponse id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, p1, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, p2}, Lcom/samsung/client/GenericExternalHandler;->getSubtree([B)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, subtree:Ljava/lang/String;
    iput-object v4, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    .line 35
    const-string v1, "DSS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 36
    new-instance v1, Lcom/samsung/client/DSSExternalHandler;

    invoke-direct {v1}, Lcom/samsung/client/DSSExternalHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    .line 46
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    if-eqz v1, :cond_6e

    .line 47
    iget-object v1, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/client/GenericExternalHandler;->processRilRequest(B[BI)V

    .line 53
    :goto_3d
    return-void

    .line 37
    :cond_3e
    const-string v1, "OEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 38
    new-instance v1, Lcom/samsung/client/OEMExternalHandler;

    invoke-direct {v1}, Lcom/samsung/client/OEMExternalHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    goto :goto_34

    .line 39
    :cond_4e
    const-string v1, "Con"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 40
    new-instance v1, Lcom/samsung/client/ConExternalHandler;

    invoke-direct {v1}, Lcom/samsung/client/ConExternalHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    goto :goto_34

    .line 41
    :cond_5e
    const-string v1, "SPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 43
    new-instance v1, Lcom/samsung/client/SPAExternalHandler;

    invoke-direct {v1}, Lcom/samsung/client/SPAExternalHandler;-><init>()V

    iput-object v1, p0, Lcom/samsung/client/GenericExternalHandler;->mExtHdlr:Lcom/samsung/client/GenericExternalHandler;

    goto :goto_34

    .line 49
    :cond_6e
    const/16 v1, 0x1f4

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/client/GenericExternalHandler;->sendResponse(II[B)V

    goto :goto_3d
.end method

.method protected final sendResponse(II[B)V
    .registers 16
    .parameter "id"
    .parameter "status"
    .parameter "gen_data"

    .prologue
    .line 100
    const-string v9, "GenericExternalHandler"

    const-string v10, "sendResponse()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v9, 0x2

    new-array v7, v9, [B

    .line 102
    .local v7, status_code:[B
    const/4 v9, 0x0

    shr-int/lit8 v10, p2, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 103
    const/4 v9, 0x1

    and-int/lit16 v10, p2, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 105
    if-nez p3, :cond_28

    .line 106
    const-string v9, "GenericExternalHandler"

    const-string v10, "sendResponse() data is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v9, 0x1

    new-array p3, v9, [B

    .line 108
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, p3, v9

    .line 111
    :cond_28
    array-length v4, p3

    .line 112
    .local v4, len:I
    const/4 v9, 0x2

    new-array v6, v9, [B

    .line 113
    .local v6, len_bytes:[B
    const/4 v9, 0x0

    shr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 114
    const/4 v9, 0x1

    and-int/lit16 v10, v4, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 116
    array-length v9, v7

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, p3

    add-int v0, v9, v10

    .line 118
    .local v0, actual_data_length:I
    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {p0, v9}, Lcom/samsung/client/GenericExternalHandler;->convertInt2Bytes(I)[B

    move-result-object v3

    .line 119
    .local v3, data_len:[B
    array-length v9, v3

    add-int/2addr v9, v0

    new-array v2, v9, [B

    .line 121
    .local v2, data_bytes:[B
    const-string v9, "GenericExternalHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendResponse(): actual data length :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v3, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    const/4 v9, 0x0

    array-length v10, v3

    array-length v11, v7

    invoke-static {v7, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    const/4 v9, 0x0

    array-length v10, v3

    array-length v11, v7

    add-int/2addr v10, v11

    array-length v11, v6

    invoke-static {v6, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const/4 v9, 0x0

    array-length v10, v3

    array-length v11, v7

    add-int/2addr v10, v11

    array-length v11, v6

    add-int/2addr v10, v11

    array-length v11, p3

    invoke-static {p3, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/samsung/client/GenericExternalHandler;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, data:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v5, v9, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v5, v9

    .line 135
    .local v5, len_byte:[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    .line 137
    .local v8, str_len:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/client/SyncmlService;->getInstance()Lcom/samsung/client/SyncmlService;

    move-result-object v9

    invoke-virtual {v9, p1, v1, v8}, Lcom/samsung/client/SyncmlService;->sendResponse(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method
