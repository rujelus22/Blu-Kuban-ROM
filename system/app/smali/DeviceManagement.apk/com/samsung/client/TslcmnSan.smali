.class public Lcom/samsung/client/TslcmnSan;
.super Ljava/lang/Object;
.source "TslcmnSan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/TslcmnSan$TslSanMsg;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static TslCmnSanParser([BILcom/samsung/client/TslcmnSan$TslSanMsg;)I
    .registers 11
    .parameter "msg"
    .parameter "len"
    .parameter "san"

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x11

    const/16 v5, 0x17

    const/4 v2, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, version:I
    const/4 v0, 0x0

    .line 69
    .local v0, serverIdLen:I
    const-string v3, "TslcmnSan"

    const-string v4, "tslcmn_san_parser"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz p2, :cond_16

    if-eqz p0, :cond_16

    if-nez p1, :cond_1e

    .line 72
    :cond_16
    const-string v3, "TslcmnSan"

    const-string v4, "NULL params, failed. return 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_1d
    return v2

    .line 76
    :cond_1e
    if-ge p1, v7, :cond_28

    .line 77
    const-string v3, "TslcmnSan"

    const-string v4, "Invalid params, failed. return 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 81
    :cond_28
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x18

    if-ge p1, v3, :cond_38

    .line 82
    const-string v3, "TslcmnSan"

    const-string v4, "Invalid params, failed. return 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 86
    :cond_38
    const/16 v3, 0x10

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 87
    shl-int/lit8 v1, v1, 0x8

    .line 88
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 89
    shr-int/lit8 v1, v1, 0x6

    .line 91
    iput v1, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->version:I

    .line 94
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    iput v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    .line 97
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->initiator:I

    .line 100
    const/16 v3, 0x15

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0x16

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->sessionId:I

    .line 103
    aget-byte v3, p0, v5

    and-int/lit16 v0, v3, 0xff

    .line 104
    new-array v3, v0, [B

    iput-object v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->srvrId:[B

    .line 105
    if-eqz v0, :cond_81

    .line 106
    iget-object v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->srvrId:[B

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    invoke-static {p0, v7, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    :cond_81
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x18

    sub-int v3, p1, v3

    iput v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->bodyLen:I

    .line 111
    iget v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->bodyLen:I

    if-eqz v3, :cond_af

    .line 112
    iget v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->bodyLen:I

    new-array v3, v3, [B

    iput-object v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->body:[B

    .line 113
    iget-object v3, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->body:[B

    if-nez v3, :cond_a2

    .line 114
    const-string v3, "TslcmnSan"

    const-string v4, "san body is NULL, failed. return 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 118
    :cond_a2
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x18

    iget-object v4, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->body:[B

    iget v5, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->bodyLen:I

    invoke-static {p0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_af
    iput-object p0, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msg:[B

    .line 124
    iput p1, p2, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msgLen:I

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_1d
.end method
