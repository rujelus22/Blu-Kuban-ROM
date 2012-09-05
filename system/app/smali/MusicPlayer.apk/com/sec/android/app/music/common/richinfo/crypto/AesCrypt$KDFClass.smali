.class Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt$KDFClass;
.super Ljava/lang/Object;
.source "AesCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KDFClass"
.end annotation


# static fields
.field private static final InitSeed:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 220
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt$KDFClass;->InitSeed:[B

    return-void

    :array_a
    .array-data 0x1
        0x54t
        0xd9t
        0xedt
        0x7ft
        0x5at
        0x14t
        0xd2t
        0xbt
        0xe8t
        0x78t
        0xa7t
        0x8bt
        0x70t
        0x1et
        0xe8t
        0xa9t
        0x4ct
        0x42t
        0x9dt
        0xdbt
        0x39t
        0xf1t
        0xc0t
        0x61t
        0xebt
        0xe5t
        0x94t
        0xcft
        0xdt
        0xadt
        0x19t
        0xb8t
        0xdct
        0xaat
        0xe9t
        0xe1t
        0xa1t
        0x23t
        0x3et
        0xfbt
        0x4t
        0x77t
        0x50t
        0x9at
        0xbet
        0x27t
        0x3dt
        0x11t
        0x7dt
        0xft
        0x2et
        0x3ct
        0x3ft
        0xc9t
        0x26t
        0x62t
        0x18t
        0x8bt
        0x93t
        0x75t
        0x80t
        0x3t
        0xfet
        0x3bt
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SecCryptoKDF()[B
    .registers 20

    .prologue
    .line 239
    sget-object v16, Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt$KDFClass;->InitSeed:[B

    .line 241
    .local v16, seedKey:[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    div-int/lit8 v3, v17, 0x14

    .line 242
    .local v3, D:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    rem-int/lit8 v5, v17, 0x14

    .line 244
    .local v5, chk:I
    if-lez v5, :cond_14

    .line 245
    add-int/lit8 v3, v3, 0x1

    .line 247
    :cond_14
    mul-int/lit8 v17, v3, 0x14

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 251
    .local v4, T:[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v12, v17, 0x4

    .line 252
    .local v12, length:I
    const/4 v9, 0x0

    .line 254
    .local v9, idx:I
    new-array v10, v12, [B

    .line 255
    .local v10, inVal:[B
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 257
    .local v6, counter:[B
    const/4 v13, 0x0

    .line 259
    .local v13, md:Ljava/security/MessageDigest;
    :try_start_2d
    const-string v17, "SHA-1"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_32} :catch_54

    move-result-object v13

    .line 265
    const/4 v8, 0x0

    .local v8, i:I
    :goto_34
    if-ge v8, v3, :cond_a4

    .line 266
    const/16 v17, 0x3

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v17

    .line 267
    const/4 v11, 0x0

    .local v11, j:I
    :goto_42
    if-ge v11, v12, :cond_8a

    .line 268
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_5a

    .line 269
    aget-byte v17, v16, v11

    aput-byte v17, v10, v11

    .line 267
    :cond_51
    :goto_51
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    .line 260
    .end local v8           #i:I
    .end local v11           #j:I
    :catch_54
    move-exception v7

    .line 261
    .local v7, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 262
    const/4 v15, 0x0

    .line 288
    .end local v7           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_59
    return-object v15

    .line 270
    .restart local v8       #i:I
    .restart local v11       #j:I
    :cond_5a
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    if-ge v11, v0, :cond_71

    .line 271
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v11, v17

    aget-byte v17, v6, v17

    aput-byte v17, v10, v11

    goto :goto_51

    .line 272
    :cond_71
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    if-ge v11, v0, :cond_51

    .line 273
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v11, v17

    add-int/lit8 v17, v17, -0x4

    aget-byte v17, v16, v17

    aput-byte v17, v10, v11

    goto :goto_51

    .line 276
    :cond_8a
    invoke-virtual {v13, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 277
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 278
    .local v14, outVal:[B
    const/4 v11, 0x0

    :goto_92
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_a1

    .line 279
    aget-byte v17, v14, v11

    aput-byte v17, v4, v9

    .line 280
    add-int/lit8 v9, v9, 0x1

    .line 278
    add-int/lit8 v11, v11, 0x1

    goto :goto_92

    .line 265
    :cond_a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 283
    .end local v11           #j:I
    .end local v14           #outVal:[B
    :cond_a4
    invoke-virtual {v13, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 284
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 286
    .restart local v14       #outVal:[B
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 287
    .local v15, secretKey:[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v14, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_59
.end method
