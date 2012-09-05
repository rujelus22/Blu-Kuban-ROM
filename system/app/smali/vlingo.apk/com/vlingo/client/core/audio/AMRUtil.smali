.class public Lcom/vlingo/client/core/audio/AMRUtil;
.super Ljava/lang/Object;
.source "AMRUtil.java"


# static fields
.field private static final AMR_HEADER:[B = null

.field private static final FRAME_HEADER:I = 0x4

.field private static final FRAME_SIZE:I = 0xd

.field private static final FRAME_TIME:I = 0x14

.field private static final frameSizes:[S

.field private static final magicNum:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x6

    .line 33
    new-array v0, v3, [B

    sput-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    .line 35
    sget-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 36
    sget-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    const/4 v1, 0x1

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 37
    sget-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    const/4 v1, 0x2

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    .line 38
    sget-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    const/4 v1, 0x3

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    .line 39
    sget-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    const/4 v1, 0x4

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    .line 40
    sget-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    const/4 v1, 0x5

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 94
    new-array v0, v3, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->magicNum:[B

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_48

    sput-object v0, Lcom/vlingo/client/core/audio/AMRUtil;->frameSizes:[S

    return-void

    .line 94
    :array_40
    .array-data 0x1
        0x23t
        0x21t
        0x41t
        0x4dt
        0x52t
        0xat
    .end array-data

    .line 95
    nop

    :array_48
    .array-data 0x2
        0xct 0x0t
        0xdt 0x0t
        0xft 0x0t
        0x11t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x1at 0x0t
        0x1ft 0x0t
        0x5t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaddingToAMR([BIII)[B
    .registers 12
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .parameter "paddingMillis"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 59
    invoke-static {p0, p1, p2}, Lcom/vlingo/client/core/audio/AMRUtil;->isAMRAudioOK([BII)Z

    move-result v0

    .line 60
    .local v0, amrAudioOK:Z
    if-nez v0, :cond_9

    .line 80
    .end local p0
    :goto_8
    return-object p0

    .line 66
    .restart local p0
    :cond_9
    mul-int/lit8 v4, p3, 0xd

    div-int/lit8 v2, v4, 0x14

    .line 67
    .local v2, iPaddedFrames:I
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p2

    new-array v3, v4, [B

    .line 68
    .local v3, paddedAMR:[B
    sget-object v4, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    sget-object v5, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    sget-object v4, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v1, v4

    .local v1, i:I
    :goto_1d
    if-ge v1, v2, :cond_24

    .line 71
    aput-byte v7, v3, v1

    .line 70
    add-int/lit8 v1, v1, 0xd

    goto :goto_1d

    .line 74
    :cond_24
    sget-object v4, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v4, v4

    add-int/2addr v4, p1

    sget-object v5, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v5, v5

    add-int/2addr v5, v2

    sget-object v6, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v6, v6

    sub-int v6, p2, v6

    invoke-static {p0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    sget-object v4, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v4, v4

    add-int/2addr v4, v2

    add-int v1, v4, p2

    :goto_3a
    array-length v4, v3

    if-ge v1, v4, :cond_42

    .line 77
    aput-byte v7, v3, v1

    .line 76
    add-int/lit8 v1, v1, 0xd

    goto :goto_3a

    :cond_42
    move-object p0, v3

    .line 80
    goto :goto_8
.end method

.method public static isAMRAudioOK([BII)Z
    .registers 7
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 44
    if-eqz p0, :cond_6

    const/16 v2, 0xa

    if-ge p2, v2, :cond_8

    .line 45
    :cond_6
    const/4 v0, 0x0

    .line 55
    :cond_7
    :goto_7
    return v0

    .line 48
    :cond_8
    const/4 v0, 0x1

    .line 49
    .local v0, containsHeader:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    sget-object v2, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 50
    sget-object v2, Lcom/vlingo/client/core/audio/AMRUtil;->AMR_HEADER:[B

    aget-byte v2, v2, v1

    add-int v3, v1, p1

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_1b

    .line 51
    const/4 v0, 0x0

    .line 52
    goto :goto_7

    .line 49
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static readInAMRMaxFrames(Ljava/lang/String;I)[B
    .registers 21
    .parameter "fakeAMRFile"
    .parameter "fakeAMRMilliseconds"

    .prologue
    .line 100
    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_a

    .line 101
    :cond_8
    const/4 v6, 0x0

    .line 229
    :goto_9
    return-object v6

    .line 107
    :cond_a
    const/4 v14, -0x1

    .line 108
    .local v14, maxFrames:I
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 109
    const/4 v6, 0x0

    goto :goto_9

    .line 111
    :cond_15
    div-int/lit8 v14, p1, 0x14

    .line 123
    const/4 v9, 0x0

    .line 124
    .local v9, fakeAMRLen:I
    const/4 v6, 0x0

    .line 126
    .local v6, data:[B
    const/4 v2, 0x0

    .line 128
    .local v2, amrFile:Ljava/io/DataInputStream;
    :try_start_1a
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 131
    .local v13, input:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_c2

    .end local v2           #amrFile:Ljava/io/DataInputStream;
    .local v3, amrFile:Ljava/io/DataInputStream;
    move-object v2, v3

    .line 141
    .end local v3           #amrFile:Ljava/io/DataInputStream;
    .end local v13           #input:Ljava/io/FileInputStream;
    .restart local v2       #amrFile:Ljava/io/DataInputStream;
    :goto_27
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v17, 0x1f4

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 142
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x1f4

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 147
    .local v5, buf:[B
    const/16 v17, 0x6

    :try_start_38
    move/from16 v0, v17

    invoke-virtual {v2, v5, v9, v0}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_55

    move-result v17

    add-int v9, v9, v17

    .line 153
    const/4 v12, 0x0

    .local v12, i:I
    :goto_41
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v12, v0, :cond_5e

    .line 154
    aget-byte v17, v5, v12

    sget-object v18, Lcom/vlingo/client/core/audio/AMRUtil;->magicNum:[B

    aget-byte v18, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5b

    .line 157
    const/4 v6, 0x0

    goto :goto_9

    .line 148
    .end local v12           #i:I
    :catch_55
    move-exception v8

    .line 149
    .local v8, e1:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    const/4 v6, 0x0

    goto :goto_9

    .line 153
    .end local v8           #e1:Ljava/io/IOException;
    .restart local v12       #i:I
    :cond_5b
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    .line 162
    :cond_5e
    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 165
    const/4 v15, 0x0

    .line 167
    .local v15, readInFrames:I
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v11

    .line 168
    .local v11, header:I
    const/4 v10, 0x0

    .line 169
    .local v10, frameLen:I
    :cond_6f
    :goto_6f
    if-ge v15, v14, :cond_b0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_b0

    .line 173
    int-to-byte v0, v11

    move/from16 v17, v0

    aput-byte v17, v5, v10

    .line 175
    add-int/lit8 v10, v10, 0x1

    .line 176
    shr-int/lit8 v17, v11, 0x3

    and-int/lit8 v11, v17, 0xf

    .line 179
    sget-object v17, Lcom/vlingo/client/core/audio/AMRUtil;->frameSizes:[S

    aget-short v16, v17, v11

    .line 182
    .local v16, size:S
    if-eqz v16, :cond_92

    .line 183
    move/from16 v0, v16

    invoke-virtual {v2, v5, v10, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v17

    add-int/lit8 v10, v17, 0x1

    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 194
    :cond_92
    const/16 v17, 0x0

    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    add-int/2addr v9, v10

    .line 196
    const/4 v10, 0x0

    .line 198
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_a2} :catch_ac

    move-result v11

    .line 199
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_a9

    .line 203
    :cond_a9
    if-lt v15, v14, :cond_6f

    goto :goto_6f

    .line 208
    .end local v10           #frameLen:I
    .end local v11           #header:I
    .end local v16           #size:S
    :catch_ac
    move-exception v7

    .line 211
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    .end local v7           #e:Ljava/io/IOException;
    :cond_b0
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 217
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 218
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b9} :catch_bc

    move-result-object v6

    goto/16 :goto_9

    .line 219
    :catch_bc
    move-exception v7

    .line 222
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 136
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #buf:[B
    .end local v7           #e:Ljava/io/IOException;
    .end local v12           #i:I
    .end local v15           #readInFrames:I
    :catch_c2
    move-exception v17

    goto/16 :goto_27
.end method
