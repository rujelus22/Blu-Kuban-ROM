.class public Lcom/sec/dsm/system/osp/DUIDUtil;
.super Ljava/lang/Object;
.source "DUIDUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDUIDfromIMEI(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    const/4 v8, 0x0

    .line 8
    .local v8, ret:Ljava/lang/String;
    const-wide v6, -0x3501454135014542L

    .line 9
    .local v6, keyValue:J
    :try_start_6
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    xor-long v2, v10, v6

    .line 11
    .local v2, firstCrypt:J
    new-instance v0, Lcom/sec/dsm/system/osp/Crc64;

    invoke-direct {v0}, Lcom/sec/dsm/system/osp/Crc64;-><init>()V

    .line 12
    .local v0, crc64:Lcom/sec/dsm/system/osp/Crc64;
    invoke-static {v2, v3}, Lcom/sec/dsm/system/osp/DUIDUtil;->longToByte(J)[B

    move-result-object v5

    .line 13
    .local v5, in:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1a
    array-length v10, v5

    if-ge v4, v10, :cond_25

    .line 14
    aget-byte v10, v5, v4

    invoke-virtual {v0, v10}, Lcom/sec/dsm/system/osp/Crc64;->update(B)V

    .line 13
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 16
    :cond_25
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/dsm/system/osp/Crc64;->getByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sec/dsm/system/osp/Base32;->encode([B)[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_3c

    .line 17
    .end local v8           #ret:Ljava/lang/String;
    .local v9, ret:Ljava/lang/String;
    const/4 v10, 0x0

    const/16 v11, 0xd

    :try_start_37
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_41

    move-result-object v8

    .line 22
    .end local v9           #ret:Ljava/lang/String;
    .restart local v8       #ret:Ljava/lang/String;
    return-object v8

    .line 18
    .end local v0           #crc64:Lcom/sec/dsm/system/osp/Crc64;
    .end local v2           #firstCrypt:J
    .end local v4           #i:I
    .end local v5           #in:[B
    :catch_3c
    move-exception v1

    .line 19
    .local v1, e:Ljava/lang/Exception;
    :goto_3d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    throw v1

    .line 18
    .end local v1           #e:Ljava/lang/Exception;
    .end local v8           #ret:Ljava/lang/String;
    .restart local v0       #crc64:Lcom/sec/dsm/system/osp/Crc64;
    .restart local v2       #firstCrypt:J
    .restart local v4       #i:I
    .restart local v5       #in:[B
    .restart local v9       #ret:Ljava/lang/String;
    :catch_41
    move-exception v1

    move-object v8, v9

    .end local v9           #ret:Ljava/lang/String;
    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_3d
.end method

.method public static getDUIDfromTWID(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v8, 0x0

    .line 51
    .local v8, ret:Ljava/lang/String;
    const-wide v6, 0xabbadacafebabeL

    .line 52
    .local v6, keyValue:J
    const/16 v10, 0x10

    :try_start_8
    invoke-static {p0, v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    xor-long v2, v10, v6

    .line 54
    .local v2, firstCrypt:J
    new-instance v0, Lcom/sec/dsm/system/osp/Crc64;

    invoke-direct {v0}, Lcom/sec/dsm/system/osp/Crc64;-><init>()V

    .line 55
    .local v0, crc64:Lcom/sec/dsm/system/osp/Crc64;
    invoke-static {v2, v3}, Lcom/sec/dsm/system/osp/DUIDUtil;->longToByte(J)[B

    move-result-object v5

    .line 56
    .local v5, in:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1c
    array-length v10, v5

    if-ge v4, v10, :cond_27

    .line 57
    aget-byte v10, v5, v4

    invoke-virtual {v0, v10}, Lcom/sec/dsm/system/osp/Crc64;->update(B)V

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 59
    :cond_27
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/dsm/system/osp/Crc64;->getByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sec/dsm/system/osp/Base32;->encode([B)[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_3e

    .line 60
    .end local v8           #ret:Ljava/lang/String;
    .local v9, ret:Ljava/lang/String;
    const/4 v10, 0x0

    const/16 v11, 0xd

    :try_start_39
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_43

    move-result-object v8

    .line 66
    .end local v9           #ret:Ljava/lang/String;
    .restart local v8       #ret:Ljava/lang/String;
    return-object v8

    .line 61
    .end local v0           #crc64:Lcom/sec/dsm/system/osp/Crc64;
    .end local v2           #firstCrypt:J
    .end local v4           #i:I
    .end local v5           #in:[B
    :catch_3e
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    :goto_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    throw v1

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    .end local v8           #ret:Ljava/lang/String;
    .restart local v0       #crc64:Lcom/sec/dsm/system/osp/Crc64;
    .restart local v2       #firstCrypt:J
    .restart local v4       #i:I
    .restart local v5       #in:[B
    .restart local v9       #ret:Ljava/lang/String;
    :catch_43
    move-exception v1

    move-object v8, v9

    .end local v9           #ret:Ljava/lang/String;
    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_3f
.end method

.method private static longToByte(J)[B
    .registers 9
    .parameter "in"

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 70
    new-array v0, v6, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
