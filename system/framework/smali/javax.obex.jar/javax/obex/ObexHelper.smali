.class public final Ljavax/obex/ObexHelper;
.super Ljava/lang/Object;
.source "ObexHelper.java"


# static fields
.field public static final BASE_PACKET_LENGTH:I = 0x3

.field public static final MAX_CLIENT_PACKET_SIZE:I = 0xfc00

.field public static final MAX_PACKET_SIZE_INT:I = 0xfffe

.field public static final OBEX_AUTH_REALM_CHARSET_ASCII:I = 0x0

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_1:I = 0x1

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_2:I = 0x2

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_3:I = 0x3

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_4:I = 0x4

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_5:I = 0x5

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_6:I = 0x6

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_7:I = 0x7

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_8:I = 0x8

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_9:I = 0x9

.field public static final OBEX_AUTH_REALM_CHARSET_UNICODE:I = 0xff

.field public static final OBEX_OPCODE_ABORT:I = 0xff

.field public static final OBEX_OPCODE_CONNECT:I = 0x80

.field public static final OBEX_OPCODE_DISCONNECT:I = 0x81

.field public static final OBEX_OPCODE_GET:I = 0x3

.field public static final OBEX_OPCODE_GET_FINAL:I = 0x83

.field public static final OBEX_OPCODE_PUT:I = 0x2

.field public static final OBEX_OPCODE_PUT_FINAL:I = 0x82

.field public static final OBEX_OPCODE_RESERVED:I = 0x4

.field public static final OBEX_OPCODE_RESERVED_FINAL:I = 0x84

.field public static final OBEX_OPCODE_SETPATH:I = 0x85


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B
    .registers 13
    .parameter "nonce"
    .parameter "realm"
    .parameter "access"
    .parameter "userID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 949
    const/4 v0, 0x0

    .line 951
    .local v0, authChall:[B
    array-length v1, p0

    if-eq v1, v7, :cond_13

    .line 952
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Nonce must be 16 bytes long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 973
    :cond_13
    if-nez p1, :cond_3d

    .line 974
    const/16 v1, 0x15

    new-array v0, v1, [B

    .line 987
    :goto_19
    aput-byte v4, v0, v4

    .line 988
    aput-byte v7, v0, v6

    .line 989
    invoke-static {p0, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    const/16 v1, 0x12

    aput-byte v6, v0, v1

    .line 993
    const/16 v1, 0x13

    aput-byte v6, v0, v1

    .line 994
    aput-byte v4, v0, v5

    .line 996
    if-nez p2, :cond_33

    .line 997
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 999
    :cond_33
    if-eqz p3, :cond_3c

    .line 1000
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 1003
    :cond_3c
    return-object v0

    .line 976
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_4d

    .line 977
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm must be less then 255 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-array v0, v1, [B

    .line 980
    const/16 v1, 0x15

    aput-byte v8, v0, v1

    .line 981
    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 982
    const/16 v1, 0x17

    aput-byte v6, v0, v1

    .line 983
    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19
.end method

.method public static computeMd5Hash([B)[B
    .registers 4
    .parameter "in"

    .prologue
    .line 926
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 927
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    return-object v2

    .line 928
    .end local v1           #md5:Ljava/security/MessageDigest;
    :catch_b
    move-exception v0

    .line 929
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static convertToByteArray(J)[B
    .registers 8
    .parameter "l"

    .prologue
    const-wide/16 v4, 0xff

    .line 788
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 790
    .local v0, b:[B
    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 791
    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 792
    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 793
    const/4 v1, 0x3

    and-long v2, v4, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 795
    return-object v0
.end method

.method public static convertToLong([B)J
    .registers 10
    .parameter "b"

    .prologue
    .line 765
    const-wide/16 v3, 0x0

    .line 766
    .local v3, result:J
    const-wide/16 v5, 0x0

    .line 767
    .local v5, value:J
    const-wide/16 v1, 0x0

    .line 769
    .local v1, power:J
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_21

    .line 770
    aget-byte v7, p0, v0

    int-to-long v5, v7

    .line 771
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_17

    .line 772
    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    .line 775
    :cond_17
    long-to-int v7, v1

    shl-long v7, v5, v7

    or-long/2addr v3, v7

    .line 776
    const-wide/16 v7, 0x8

    add-long/2addr v1, v7

    .line 769
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 779
    :cond_21
    return-wide v3
.end method

.method public static convertToUnicode([BZ)Ljava/lang/String;
    .registers 9
    .parameter "b"
    .parameter "includesNull"

    .prologue
    .line 884
    if-eqz p0, :cond_5

    array-length v5, p0

    if-nez v5, :cond_7

    .line 885
    :cond_5
    const/4 v5, 0x0

    .line 915
    :goto_6
    return-object v5

    .line 887
    :cond_7
    array-length v0, p0

    .line 888
    .local v0, arrayLength:I
    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_14

    .line 889
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array not of a valid form"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 891
    :cond_14
    shr-int/lit8 v0, v0, 0x1

    .line 892
    if-eqz p1, :cond_1a

    .line 893
    add-int/lit8 v0, v0, -0x1

    .line 896
    :cond_1a
    new-array v1, v0, [C

    .line 897
    .local v1, c:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v0, :cond_45

    .line 898
    mul-int/lit8 v5, v2, 0x2

    aget-byte v4, p0, v5

    .line 899
    .local v4, upper:I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v3, p0, v5

    .line 900
    .local v3, lower:I
    if-gez v4, :cond_2d

    .line 901
    add-int/lit16 v4, v4, 0x100

    .line 903
    :cond_2d
    if-gez v3, :cond_31

    .line 904
    add-int/lit16 v3, v3, 0x100

    .line 908
    :cond_31
    if-nez v4, :cond_3c

    if-nez v3, :cond_3c

    .line 909
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    .line 912
    :cond_3c
    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 915
    .end local v3           #lower:I
    .end local v4           #upper:I
    :cond_45
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static convertToUnicodeByteArray(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 805
    if-nez p0, :cond_5

    .line 806
    const/4 v2, 0x0

    .line 820
    :goto_4
    return-object v2

    .line 809
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 810
    .local v0, c:[C
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 811
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_29

    .line 812
    mul-int/lit8 v3, v1, 0x2

    aget-char v4, v0, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 813
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 817
    :cond_29
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aput-byte v5, v2, v3

    .line 818
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v2, v3

    goto :goto_4
.end method

.method public static createHeader(Ljavax/obex/HeaderSet;Z)[B
    .registers 23
    .parameter "head"
    .parameter "nullOut"

    .prologue
    .line 342
    const/4 v9, 0x0

    .line 343
    .local v9, intHeader:Ljava/lang/Long;
    const/4 v14, 0x0

    .line 344
    .local v14, stringHeader:Ljava/lang/String;
    const/4 v5, 0x0

    .line 345
    .local v5, dateHeader:Ljava/util/Calendar;
    const/4 v4, 0x0

    .line 346
    .local v4, byteHeader:Ljava/lang/Byte;
    const/4 v2, 0x0

    .line 347
    .local v2, buffer:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 348
    .local v16, value:[B
    const/4 v13, 0x0

    .line 349
    .local v13, result:[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 351
    .local v11, lengthArray:[B
    const/4 v7, 0x0

    .line 352
    .local v7, headImpl:Ljavax/obex/HeaderSet;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 353
    .local v12, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v7, p0

    .line 360
    :try_start_16
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_36

    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_36

    .line 362
    const/16 v17, -0x35

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 367
    :cond_36
    const/16 v17, 0xc0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 368
    if-eqz v9, :cond_66

    .line 369
    const/16 v17, -0x40

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 370
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 371
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 372
    if-eqz p1, :cond_66

    .line 373
    const/16 v17, 0xc0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 378
    :cond_66
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 379
    if-eqz v14, :cond_ba

    .line 380
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 382
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 383
    .local v10, length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 384
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 385
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 386
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 387
    if-eqz p1, :cond_ba

    .line 388
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 393
    .end local v10           #length:I
    :cond_ba
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 394
    if-eqz v14, :cond_119

    .line 395
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_d0
    .catchall {:try_start_16 .. :try_end_d0} :catchall_661
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_d0} :catch_178

    .line 397
    :try_start_d0
    const-string v17, "ISO8859_1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_661
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d0 .. :try_end_d7} :catch_176
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d7} :catch_178

    move-result-object v16

    .line 402
    :try_start_d8
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x4

    .line 403
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 404
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 405
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 406
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 407
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    if-eqz p1, :cond_119

    .line 409
    const/16 v17, 0x42

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 414
    .end local v10           #length:I
    :cond_119
    const/16 v17, 0xc3

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 415
    if-eqz v9, :cond_149

    .line 416
    const/16 v17, -0x3d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 417
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 418
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 419
    if-eqz p1, :cond_149

    .line 420
    const/16 v17, 0xc3

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 425
    :cond_149
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    .line 426
    if-eqz v5, :cond_266

    .line 432
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_15d
    .catchall {:try_start_d8 .. :try_end_15d} :catchall_661
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_15d} :catch_178

    .line 433
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .local v3, buffer:Ljava/lang/StringBuffer;
    const/16 v17, 0x1

    :try_start_15f
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 434
    .local v15, temp:I
    move v8, v15

    .local v8, i:I
    :goto_166
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ge v8, v0, :cond_181

    .line 435
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_173
    .catchall {:try_start_15f .. :try_end_173} :catchall_66f
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_173} :catch_5bd

    .line 434
    mul-int/lit8 v8, v8, 0xa

    goto :goto_166

    .line 398
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #i:I
    .end local v15           #temp:I
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    :catch_176
    move-exception v6

    .line 399
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :try_start_177
    throw v6
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_661
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_178} :catch_178

    .line 669
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_178
    move-exception v17

    .line 671
    :goto_179
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 673
    :try_start_17d
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_180} :catch_66a

    .line 678
    :goto_180
    return-object v13

    .line 437
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    .restart local v8       #i:I
    .restart local v15       #temp:I
    :cond_181
    :try_start_181
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 438
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 439
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_199

    .line 440
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :cond_199
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 443
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 444
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_1b1

    .line 445
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    :cond_1b1
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 448
    const-string v17, "T"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 450
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_1d0

    .line 451
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_1d0
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 454
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 455
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_1e8

    .line 456
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    :cond_1e8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 459
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 460
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_200

    .line 461
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :cond_200
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21a

    .line 466
    const-string v17, "Z"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21a
    .catchall {:try_start_181 .. :try_end_21a} :catchall_66f
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_21a} :catch_5bd

    .line 470
    :cond_21a
    :try_start_21a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ISO8859_1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_223
    .catchall {:try_start_21a .. :try_end_223} :catchall_66f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21a .. :try_end_223} :catch_5bb
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_223} :catch_5bd

    move-result-object v16

    .line 475
    :try_start_224
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 476
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 477
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 478
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 479
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 480
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 481
    if-eqz p1, :cond_265

    .line 482
    const/16 v17, 0x44

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_265
    .catchall {:try_start_224 .. :try_end_265} :catchall_66f
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_265} :catch_5bd

    :cond_265
    move-object v2, v3

    .line 487
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #i:I
    .end local v10           #length:I
    .end local v15           #temp:I
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    :cond_266
    const/16 v17, 0xc4

    :try_start_268
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    .line 488
    if-eqz v5, :cond_29e

    .line 489
    const/16 v17, 0xc4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 498
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 499
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 500
    if-eqz p1, :cond_29e

    .line 501
    const/16 v17, 0xc4

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 506
    :cond_29e
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 507
    if-eqz v14, :cond_2f2

    .line 508
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 509
    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 510
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 511
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 512
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 513
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 514
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 515
    if-eqz p1, :cond_2f2

    .line 516
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 521
    .end local v10           #length:I
    :cond_2f2
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 522
    if-eqz v16, :cond_345

    .line 523
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 525
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 526
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 527
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 528
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 529
    if-eqz p1, :cond_345

    .line 530
    const/16 v17, 0x46

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 535
    .end local v10           #length:I
    :cond_345
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 536
    if-eqz v16, :cond_398

    .line 537
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 538
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 539
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 540
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 541
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 542
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 543
    if-eqz p1, :cond_398

    .line 544
    const/16 v17, 0x47

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 549
    .end local v10           #length:I
    :cond_398
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 550
    if-eqz v16, :cond_3eb

    .line 551
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 552
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 553
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 554
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 555
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 556
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 557
    if-eqz p1, :cond_3eb

    .line 558
    const/16 v17, 0x4a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 563
    .end local v10           #length:I
    :cond_3eb
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 564
    if-eqz v16, :cond_43e

    .line 565
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 567
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 568
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 569
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 570
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 571
    if-eqz p1, :cond_43e

    .line 572
    const/16 v17, 0x4c

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 577
    .end local v10           #length:I
    :cond_43e
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 578
    if-eqz v16, :cond_491

    .line 579
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 580
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 581
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 582
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 583
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 584
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 585
    if-eqz p1, :cond_491

    .line 586
    const/16 v17, 0x4f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 591
    .end local v10           #length:I
    :cond_491
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_492
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v8, v0, :cond_5c1

    .line 594
    add-int/lit8 v17, v8, 0x30

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 595
    if-eqz v14, :cond_4ef

    .line 596
    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 597
    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 598
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 599
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 600
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 601
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 602
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 603
    if-eqz p1, :cond_4ef

    .line 604
    add-int/lit8 v17, v8, 0x30

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 609
    .end local v10           #length:I
    :cond_4ef
    add-int/lit8 v17, v8, 0x70

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 610
    if-eqz v16, :cond_545

    .line 611
    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x70

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 612
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 613
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 614
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 615
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 616
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 617
    if-eqz p1, :cond_545

    .line 618
    add-int/lit8 v17, v8, 0x70

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 623
    .end local v10           #length:I
    :cond_545
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 624
    if-eqz v4, :cond_57c

    .line 625
    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 626
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 627
    if-eqz p1, :cond_57c

    .line 628
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 633
    :cond_57c
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 634
    if-eqz v9, :cond_5b7

    .line 635
    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 636
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 637
    if-eqz p1, :cond_5b7

    .line 638
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5b7
    .catchall {:try_start_268 .. :try_end_5b7} :catchall_661
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_5b7} :catch_178

    .line 591
    :cond_5b7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_492

    .line 471
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    .restart local v15       #temp:I
    :catch_5bb
    move-exception v6

    .line 472
    .restart local v6       #e:Ljava/io/UnsupportedEncodingException;
    :try_start_5bc
    throw v6
    :try_end_5bd
    .catchall {:try_start_5bc .. :try_end_5bd} :catchall_66f
    .catch Ljava/io/IOException; {:try_start_5bc .. :try_end_5bd} :catch_5bd

    .line 669
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #i:I
    .end local v15           #temp:I
    :catch_5bd
    move-exception v17

    move-object v2, v3

    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    goto/16 :goto_179

    .line 644
    .restart local v8       #i:I
    :cond_5c1
    :try_start_5c1
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_60b

    .line 645
    const/16 v17, 0x4d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 646
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 647
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 648
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 649
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 650
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 651
    if-eqz p1, :cond_60b

    .line 652
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 657
    .end local v10           #length:I
    :cond_60b
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_655

    .line 658
    const/16 v17, 0x4e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 659
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 660
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 661
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 662
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 663
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 664
    if-eqz p1, :cond_655

    .line 665
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B
    :try_end_655
    .catchall {:try_start_5c1 .. :try_end_655} :catchall_661
    .catch Ljava/io/IOException; {:try_start_5c1 .. :try_end_655} :catch_178

    .line 671
    .end local v10           #length:I
    :cond_655
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 673
    :try_start_659
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65c
    .catch Ljava/lang/Exception; {:try_start_659 .. :try_end_65c} :catch_65e

    goto/16 :goto_180

    .line 674
    :catch_65e
    move-exception v17

    goto/16 :goto_180

    .line 671
    .end local v8           #i:I
    :catchall_661
    move-exception v17

    :goto_662
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 673
    :try_start_666
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_669
    .catch Ljava/lang/Exception; {:try_start_666 .. :try_end_669} :catch_66d

    .line 675
    :goto_669
    throw v17

    .line 674
    :catch_66a
    move-exception v17

    goto/16 :goto_180

    :catch_66d
    move-exception v18

    goto :goto_669

    .line 671
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    :catchall_66f
    move-exception v17

    move-object v2, v3

    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    goto :goto_662
.end method

.method public static findHeaderEnd([BII)I
    .registers 9
    .parameter "headerArray"
    .parameter "start"
    .parameter "maxSize"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, fullLength:I
    const/4 v3, -0x1

    .line 696
    .local v3, lastLength:I
    move v2, p1

    .line 697
    .local v2, index:I
    const/4 v4, 0x0

    .line 699
    .local v4, length:I
    :goto_4
    if-ge v0, p2, :cond_4d

    array-length v5, p0

    if-ge v2, v5, :cond_4d

    .line 700
    aget-byte v5, p0, v2

    if-gez v5, :cond_38

    aget-byte v5, p0, v2

    add-int/lit16 v1, v5, 0x100

    .line 701
    .local v1, headerID:I
    :goto_11
    move v3, v0

    .line 703
    and-int/lit16 v5, v1, 0xc0

    sparse-switch v5, :sswitch_data_58

    goto :goto_4

    .line 709
    :sswitch_18
    add-int/lit8 v2, v2, 0x1

    .line 710
    aget-byte v5, p0, v2

    if-gez v5, :cond_3b

    aget-byte v5, p0, v2

    add-int/lit16 v4, v5, 0x100

    .line 712
    :goto_22
    shl-int/lit8 v4, v4, 0x8

    .line 713
    add-int/lit8 v2, v2, 0x1

    .line 714
    aget-byte v5, p0, v2

    if-gez v5, :cond_3e

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    :goto_2e
    add-int/2addr v4, v5

    .line 716
    add-int/lit8 v4, v4, -0x3

    .line 717
    add-int/lit8 v2, v2, 0x1

    .line 718
    add-int/2addr v2, v4

    .line 719
    add-int/lit8 v5, v4, 0x3

    add-int/2addr v0, v5

    .line 720
    goto :goto_4

    .line 700
    .end local v1           #headerID:I
    :cond_38
    aget-byte v1, p0, v2

    goto :goto_11

    .line 710
    .restart local v1       #headerID:I
    :cond_3b
    aget-byte v4, p0, v2

    goto :goto_22

    .line 714
    :cond_3e
    aget-byte v5, p0, v2

    goto :goto_2e

    .line 724
    :sswitch_41
    add-int/lit8 v2, v2, 0x1

    .line 725
    add-int/lit8 v2, v2, 0x1

    .line 726
    add-int/lit8 v0, v0, 0x2

    .line 727
    goto :goto_4

    .line 731
    :sswitch_48
    add-int/lit8 v2, v2, 0x5

    .line 732
    add-int/lit8 v0, v0, 0x5

    goto :goto_4

    .line 742
    .end local v1           #headerID:I
    :cond_4d
    if-nez v3, :cond_55

    .line 749
    if-ge v0, p2, :cond_53

    .line 750
    array-length v5, p0

    .line 755
    :goto_52
    return v5

    .line 752
    :cond_53
    const/4 v5, -0x1

    goto :goto_52

    .line 755
    :cond_55
    add-int v5, v3, p1

    goto :goto_52

    .line 703
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_18
        0x40 -> :sswitch_18
        0x80 -> :sswitch_41
        0xc0 -> :sswitch_48
    .end sparse-switch
.end method

.method public static findTag(B[B)I
    .registers 6
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    .line 854
    const/4 v1, 0x0

    .line 856
    .local v1, length:I
    if-nez p1, :cond_6

    move v0, v2

    .line 871
    :cond_5
    :goto_5
    return v0

    .line 860
    :cond_6
    const/4 v0, 0x0

    .line 862
    .local v0, index:I
    :goto_7
    array-length v3, p1

    if-ge v0, v3, :cond_18

    aget-byte v3, p1, v0

    if-eq v3, p0, :cond_18

    .line 863
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 864
    add-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    goto :goto_7

    .line 867
    :cond_18
    array-length v3, p1

    if-lt v0, v3, :cond_5

    move v0, v2

    .line 868
    goto :goto_5
.end method

.method public static getTagValue(B[B)[B
    .registers 6
    .parameter "tag"
    .parameter "triplet"

    .prologue
    .line 832
    invoke-static {p0, p1}, Ljavax/obex/ObexHelper;->findTag(B[B)I

    move-result v0

    .line 833
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 834
    const/4 v2, 0x0

    .line 844
    :goto_8
    return-object v2

    .line 837
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 838
    aget-byte v3, p1, v0

    and-int/lit16 v1, v3, 0xff

    .line 840
    .local v1, length:I
    new-array v2, v1, [B

    .line 841
    .local v2, result:[B
    add-int/lit8 v0, v0, 0x1

    .line 842
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8
.end method

.method public static updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B
    .registers 18
    .parameter "header"
    .parameter "headerArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v6, 0x0

    .line 167
    .local v6, index:I
    const/4 v7, 0x0

    .line 169
    .local v7, length:I
    const/4 v10, 0x0

    .line 170
    .local v10, value:[B
    const/4 v1, 0x0

    .line 171
    .local v1, body:[B
    move-object/from16 v5, p0

    .line 173
    .local v5, headerImpl:Ljavax/obex/HeaderSet;
    :goto_6
    :try_start_6
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v6, v11, :cond_193

    .line 174
    aget-byte v11, p1, v6

    and-int/lit16 v4, v11, 0xff

    .line 175
    .local v4, headerID:I
    and-int/lit16 v11, v4, 0xc0

    sparse-switch v11, :sswitch_data_196

    goto :goto_6

    .line 188
    :sswitch_15
    const/4 v9, 0x1

    .line 189
    .local v9, trimTail:Z
    add-int/lit8 v6, v6, 0x1

    .line 190
    aget-byte v11, p1, v6

    and-int/lit16 v7, v11, 0xff

    .line 191
    shl-int/lit8 v7, v7, 0x8

    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    aget-byte v11, p1, v6

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v7, v11

    .line 194
    add-int/lit8 v7, v7, -0x3

    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 196
    new-array v10, v7, [B

    .line 197
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    if-eqz v7, :cond_3b

    if-lez v7, :cond_3c

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v10, v11

    if-eqz v11, :cond_3c

    .line 199
    :cond_3b
    const/4 v9, 0x0

    .line 201
    :cond_3c
    packed-switch v4, :pswitch_data_1a8

    .line 264
    :pswitch_3f
    and-int/lit16 v11, v4, 0xc0

    if-nez v11, :cond_12c

    .line 265
    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_4b} :catch_5e

    .line 272
    :goto_4b
    add-int/2addr v6, v7

    .line 273
    goto :goto_6

    .line 205
    :pswitch_4d
    if-nez v9, :cond_67

    .line 206
    :try_start_4f
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    const-string v14, "ISO8859_1"

    invoke-direct {v11, v10, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4f .. :try_end_5b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5b} :catch_5e

    goto :goto_4b

    .line 212
    :catch_5c
    move-exception v3

    .line 213
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5d
    throw v3
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5e} :catch_5e

    .line 323
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #headerID:I
    .end local v9           #trimTail:Z
    :catch_5e
    move-exception v3

    .line 324
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Header was not formatted properly"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #headerID:I
    .restart local v9       #trimTail:Z
    :cond_67
    :try_start_67
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    const-string v14, "ISO8859_1"

    invoke-direct {v11, v10, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_75} :catch_5c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_75} :catch_5e

    goto :goto_4b

    .line 218
    :pswitch_76
    :try_start_76
    new-array v11, v7, [B

    iput-object v11, v5, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 219
    iget-object v11, v5, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4b

    .line 224
    :pswitch_83
    new-array v11, v7, [B

    iput-object v11, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 225
    iget-object v11, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4b

    .line 232
    :pswitch_90
    add-int/lit8 v11, v7, 0x1

    new-array v1, v11, [B

    .line 233
    const/4 v11, 0x0

    int-to-byte v12, v4

    aput-byte v12, v1, v11

    .line 234
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_9e} :catch_5e

    goto :goto_4b

    .line 239
    :pswitch_9f
    :try_start_9f
    new-instance v2, Ljava/lang/String;

    const-string v11, "ISO8859_1"

    invoke-direct {v2, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 240
    .local v2, dateString:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 241
    .local v8, temp:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_c5

    const/16 v11, 0xf

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_c5

    .line 243
    const-string v11, "UTC"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 245
    :cond_c5
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/4 v11, 0x5

    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v11, 0xb

    const/16 v12, 0x9

    const/16 v13, 0xb

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xd

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v11, 0xd

    const/16 v12, 0xd

    const/16 v13, 0xf

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 257
    const/16 v11, 0x44

    invoke-virtual {v5, v11, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_128
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9f .. :try_end_128} :catch_12a
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_128} :catch_5e

    goto/16 :goto_4b

    .line 258
    .end local v2           #dateString:Ljava/lang/String;
    .end local v8           #temp:Ljava/util/Calendar;
    :catch_12a
    move-exception v3

    .line 259
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_12b
    throw v3

    .line 268
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_12c
    invoke-virtual {v5, v4, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12f} :catch_5e

    goto/16 :goto_4b

    .line 280
    .end local v9           #trimTail:Z
    :sswitch_131
    add-int/lit8 v6, v6, 0x1

    .line 282
    :try_start_133
    aget-byte v11, p1, v6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13c} :catch_194
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_13c} :catch_5e

    .line 286
    :goto_13c
    add-int/lit8 v6, v6, 0x1

    .line 287
    goto/16 :goto_6

    .line 295
    :sswitch_140
    add-int/lit8 v6, v6, 0x1

    .line 296
    const/4 v11, 0x4

    :try_start_143
    new-array v10, v11, [B

    .line 297
    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_14c} :catch_5e

    .line 299
    const/16 v11, 0xc4

    if-eq v4, v11, :cond_17a

    .line 302
    const/16 v11, 0xcb

    if-ne v4, v11, :cond_165

    .line 303
    const/4 v11, 0x4

    :try_start_155
    new-array v11, v11, [B

    iput-object v11, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 304
    const/4 v11, 0x0

    iget-object v12, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    :goto_161
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_6

    .line 306
    :cond_165
    invoke-static {v10}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_170} :catch_171
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_170} :catch_5e

    goto :goto_161

    .line 314
    :catch_171
    move-exception v3

    .line 316
    .local v3, e:Ljava/lang/Exception;
    :try_start_172
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Header was not formatted properly"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_17a} :catch_5e

    .line 310
    .end local v3           #e:Ljava/lang/Exception;
    :cond_17a
    :try_start_17a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 311
    .restart local v8       #temp:Ljava/util/Calendar;
    new-instance v11, Ljava/util/Date;

    invoke-static {v10}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 312
    const/16 v11, 0xc4

    invoke-virtual {v5, v11, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_192} :catch_171
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_192} :catch_5e

    goto :goto_161

    .line 327
    .end local v4           #headerID:I
    .end local v8           #temp:Ljava/util/Calendar;
    :cond_193
    return-object v1

    .line 283
    .restart local v4       #headerID:I
    :catch_194
    move-exception v11

    goto :goto_13c

    .line 175
    :sswitch_data_196
    .sparse-switch
        0x0 -> :sswitch_15
        0x40 -> :sswitch_15
        0x80 -> :sswitch_131
        0xc0 -> :sswitch_140
    .end sparse-switch

    .line 201
    :pswitch_data_1a8
    .packed-switch 0x42
        :pswitch_4d
        :pswitch_3f
        :pswitch_9f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_90
        :pswitch_90
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_76
        :pswitch_83
    .end packed-switch
.end method
