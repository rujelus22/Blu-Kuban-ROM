.class public Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;
.super Ljava/lang/Object;
.source "IceCrypt.java"


# static fields
.field private static final CLASSTAG:Ljava/lang/String;

.field private static final KEY:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->CLASSTAG:Ljava/lang/String;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->KEY:[B

    return-void

    :array_12
    .array-data 0x1
        0x25t
        0x80t
        0x4ct
        0x8bt
        0xb1t
        0xaft
        0xb7t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build_iv(Lcom/sec/android/app/music/common/richinfo/crypto/Block;)V
    .registers 4
    .parameter "iv"

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_d
    return-void
.end method

.method public static encryptByteToHexString([B)Ljava/lang/String;
    .registers 3
    .parameter "plainByte"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_byte([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt_byte([B)[B
    .registers 10
    .parameter "plainByte"

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, encryptedByte:[B
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;-><init>(I)V

    .line 60
    .local v0, crypto:Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;
    sget-object v8, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->KEY:[B

    invoke-virtual {v0, v8}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->set([B)V

    .line 62
    new-instance v5, Lcom/sec/android/app/music/common/richinfo/crypto/Block;

    invoke-direct {v5}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;-><init>()V

    .line 63
    .local v5, iv:Lcom/sec/android/app/music/common/richinfo/crypto/Block;
    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->build_iv(Lcom/sec/android/app/music/common/richinfo/crypto/Block;)V

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, inputStream:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 69
    .local v6, outputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_16
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_3c

    .line 70
    .end local v3           #inputStream:Ljava/io/ByteArrayInputStream;
    .local v4, inputStream:Ljava/io/ByteArrayInputStream;
    :try_start_1b
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_6a

    .line 72
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .local v7, outputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_20
    invoke-static {v0, v5, v4, v7}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_stream(Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;Lcom/sec/android/app/music/common/richinfo/crypto/Block;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 73
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_6d

    move-result-object v2

    .line 84
    :try_start_27
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_30

    .line 89
    :goto_2a
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_35

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 94
    .end local v4           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #inputStream:Ljava/io/ByteArrayInputStream;
    :goto_2f
    return-object v2

    .line 85
    .end local v3           #inputStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_30
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 90
    .end local v1           #e:Ljava/io/IOException;
    :catch_35
    move-exception v1

    .line 91
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 93
    .end local v4           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #inputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_2f

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    :goto_3d
    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_51

    .line 84
    :try_start_40
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4c

    .line 89
    .end local v1           #e:Ljava/lang/Exception;
    :goto_43
    :try_start_43
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_2f

    .line 90
    :catch_47
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 85
    .local v1, e:Ljava/lang/Exception;
    :catch_4c
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 83
    .end local v1           #e:Ljava/io/IOException;
    :catchall_51
    move-exception v8

    .line 84
    :goto_52
    :try_start_52
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_59

    .line 89
    :goto_55
    :try_start_55
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5e

    .line 92
    :goto_58
    throw v8

    .line 85
    :catch_59
    move-exception v1

    .line 86
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 90
    .end local v1           #e:Ljava/io/IOException;
    :catch_5e
    move-exception v1

    .line 91
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 83
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #inputStream:Ljava/io/ByteArrayInputStream;
    :catchall_63
    move-exception v8

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #inputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_52

    .end local v3           #inputStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catchall_66
    move-exception v8

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #inputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_52

    .line 80
    .end local v3           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #inputStream:Ljava/io/ByteArrayInputStream;
    :catch_6a
    move-exception v1

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #inputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_3d

    .end local v3           #inputStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_6d
    move-exception v1

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #inputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_3d
.end method

.method private static encrypt_stream(Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;Lcom/sec/android/app/music/common/richinfo/crypto/Block;Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 12
    .parameter "ik"
    .parameter "iv"
    .parameter "plainText"
    .parameter "cyperText"

    .prologue
    const/4 v5, 0x0

    .line 235
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/crypto/Block;

    invoke-direct {v0}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;-><init>()V

    .line 236
    .local v0, buf:Lcom/sec/android/app/music/common/richinfo/crypto/Block;
    new-instance v2, Lcom/sec/android/app/music/common/richinfo/crypto/Block;

    invoke-direct {v2}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;-><init>()V

    .line 237
    .local v2, inbuf:Lcom/sec/android/app/music/common/richinfo/crypto/Block;
    new-instance v4, Lcom/sec/android/app/music/common/richinfo/crypto/Block;

    invoke-direct {v4}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;-><init>()V

    .line 239
    .local v4, outbuf:Lcom/sec/android/app/music/common/richinfo/crypto/Block;
    invoke-virtual {v4, p1}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->copy(Lcom/sec/android/app/music/common/richinfo/crypto/Block;)V

    .line 241
    :cond_13
    invoke-virtual {v2, p2}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->read(Ljava/io/InputStream;)I

    move-result v3

    .local v3, n:I
    const/16 v6, 0x8

    if-ne v3, v6, :cond_29

    .line 242
    iget-object v6, v2, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    iget-object v7, v4, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->encrypt([B[B)V

    .line 243
    invoke-virtual {v4, p3}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->write(Ljava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 260
    :cond_28
    :goto_28
    return v5

    .line 248
    :cond_29
    if-eqz v3, :cond_3b

    .line 249
    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->pad(ILcom/sec/android/app/music/common/richinfo/crypto/Block;)V

    .line 250
    iget-object v6, v2, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    iget-object v7, v4, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->data:[B

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->encrypt([B[B)V

    .line 251
    invoke-virtual {v4, p3}, Lcom/sec/android/app/music/common/richinfo/crypto/Block;->write(Ljava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 255
    :cond_3b
    :try_start_3b
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40

    .line 260
    const/4 v5, 0x1

    goto :goto_28

    .line 256
    :catch_40
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/IOException;
    goto :goto_28
.end method

.method public static encrypt_string(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "plainText"

    .prologue
    .line 28
    if-nez p0, :cond_5

    .line 29
    const-string v2, ""

    .line 46
    :goto_4
    return-object v2

    .line 39
    :cond_5
    const/4 v1, 0x0

    .line 41
    .local v1, plainByte:[B
    :try_start_6
    const-string v2, "ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_b} :catch_11

    move-result-object v1

    .line 46
    :goto_c
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encryptByteToHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 42
    :catch_11
    move-exception v0

    .line 43
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_c
.end method
