.class Lorg/jivesoftware/smack/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/Base64$OutputStream;
    }
.end annotation


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field private static final _NATIVE_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 103
    const/16 v2, 0x40

    new-array v2, v2, [B

    fill-array-data v2, :array_22

    sput-object v2, Lorg/jivesoftware/smack/util/Base64;->_NATIVE_ALPHABET:[B

    .line 125
    :try_start_9
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_10} :catch_1d

    move-result-object v0

    .line 131
    .local v0, __bytes:[B
    :goto_11
    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    .line 138
    const/16 v2, 0x7f

    new-array v2, v2, [B

    fill-array-data v2, :array_46

    sput-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    return-void

    .line 128
    .end local v0           #__bytes:[B
    :catch_1d
    move-exception v1

    .line 129
    .local v1, use:Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_NATIVE_ALPHABET:[B

    .restart local v0       #__bytes:[B
    goto :goto_11

    .line 103
    nop

    :array_22
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 138
    :array_46
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$100()[B
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    return-object v0
.end method

.method static synthetic access$200([BI[BI)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([B[BI)[B
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 15
    .parameter "s"

    .prologue
    const/4 v13, 0x0

    .line 724
    :try_start_1
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_55

    move-result-object v5

    .line 732
    .local v5, bytes:[B
    :goto_7
    array-length v11, v5

    invoke-static {v5, v13, v11}, Lorg/jivesoftware/smack/util/Base64;->decode([BII)[B

    move-result-object v5

    .line 736
    if-eqz v5, :cond_54

    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_54

    .line 738
    aget-byte v11, v5, v13

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int v8, v11, v12

    .line 739
    .local v8, head:I
    const v11, 0x8b1f

    if-ne v11, v8, :cond_54

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 742
    .local v6, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 743
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v4, v11, [B

    .line 747
    .local v4, buffer:[B
    :try_start_2d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_92

    .line 748
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_32
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_86
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_94

    .line 749
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_37
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_89
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_97

    .line 751
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v7, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_3c
    :try_start_3c
    invoke-virtual {v7, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    .local v9, length:I
    if-ltz v9, :cond_5b

    .line 752
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_3c

    .line 759
    .end local v9           #length:I
    :catch_47
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 764
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_7a

    .line 769
    :goto_4e
    :try_start_4e
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_7c

    .line 774
    :goto_51
    :try_start_51
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_7e

    .line 783
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v8           #head:I
    :cond_54
    :goto_54
    return-object v5

    .line 726
    .end local v5           #bytes:[B
    :catch_55
    move-exception v10

    .line 727
    .local v10, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_7

    .line 756
    .end local v10           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #head:I
    .restart local v9       #length:I
    :cond_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_47

    move-result-object v5

    .line 764
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_76

    .line 769
    :goto_62
    :try_start_62
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_78

    .line 774
    :goto_65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_54

    .line 775
    :catch_69
    move-exception v11

    goto :goto_54

    .line 763
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v9           #length:I
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_6b
    move-exception v11

    .line 764
    :goto_6c
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_80

    .line 769
    :goto_6f
    :try_start_6f
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_82

    .line 774
    :goto_72
    :try_start_72
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_84

    .line 777
    :goto_75
    throw v11

    .line 765
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v9       #length:I
    :catch_76
    move-exception v11

    goto :goto_62

    .line 770
    :catch_78
    move-exception v11

    goto :goto_65

    .line 765
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v9           #length:I
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_7a
    move-exception v11

    goto :goto_4e

    .line 770
    :catch_7c
    move-exception v11

    goto :goto_51

    .line 775
    :catch_7e
    move-exception v11

    goto :goto_54

    .line 765
    :catch_80
    move-exception v12

    goto :goto_6f

    .line 770
    :catch_82
    move-exception v12

    goto :goto_72

    .line 775
    :catch_84
    move-exception v12

    goto :goto_75

    .line 763
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_86
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6c

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_89
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6c

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_8d
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6c

    .line 759
    :catch_92
    move-exception v11

    goto :goto_4b

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_94
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4b

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_97
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4b
.end method

.method public static decode([BII)[B
    .registers 16
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v11, 0x0

    .line 669
    mul-int/lit8 v10, p2, 0x3

    div-int/lit8 v4, v10, 0x4

    .line 670
    .local v4, len34:I
    new-array v6, v4, [B

    .line 671
    .local v6, outBuff:[B
    const/4 v7, 0x0

    .line 673
    .local v7, outBuffPosn:I
    const/4 v10, 0x4

    new-array v0, v10, [B

    .line 674
    .local v0, b4:[B
    const/4 v1, 0x0

    .line 678
    .local v1, b4Posn:I
    move v3, p1

    .local v3, i:I
    move v2, v1

    .end local v1           #b4Posn:I
    .local v2, b4Posn:I
    :goto_e
    add-int v10, p1, p2

    if-ge v3, v10, :cond_6a

    .line 679
    aget-byte v10, p0, v3

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v8, v10

    .line 680
    .local v8, sbiCrop:B
    sget-object v10, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v9, v10, v8

    .line 682
    .local v9, sbiDecode:B
    const/4 v10, -0x5

    if-lt v9, v10, :cond_38

    .line 685
    const/4 v10, -0x1

    if-lt v9, v10, :cond_65

    .line 686
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    aput-byte v8, v0, v2

    .line 687
    const/4 v10, 0x3

    if-le v1, v10, :cond_66

    .line 688
    invoke-static {v0, v11, v6, v7}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BI)I

    move-result v10

    add-int/2addr v7, v10

    .line 689
    const/4 v1, 0x0

    .line 692
    const/16 v10, 0x3d

    if-ne v8, v10, :cond_66

    .line 707
    .end local v8           #sbiCrop:B
    .end local v9           #sbiDecode:B
    :goto_32
    new-array v5, v7, [B

    .line 708
    .local v5, out:[B
    invoke-static {v6, v11, v5, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    .end local v5           #out:[B
    :goto_37
    return-object v5

    .line 701
    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    .restart local v8       #sbiCrop:B
    .restart local v9       #sbiDecode:B
    :cond_38
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Base64 input character at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, p0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(decimal)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 703
    const/4 v5, 0x0

    move v1, v2

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    goto :goto_37

    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    :cond_65
    move v1, v2

    .line 678
    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    :cond_66
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    goto :goto_e

    .end local v8           #sbiCrop:B
    .end local v9           #sbiDecode:B
    :cond_6a
    move v1, v2

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    goto :goto_32
.end method

.method private static decode4to3([BI[BI)I
    .registers 10
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v3, 0x3d

    .line 592
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_27

    .line 597
    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int v1, v2, v3

    .line 600
    .local v1, outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 601
    const/4 v2, 0x1

    .line 649
    .end local v1           #outBuff:I
    :goto_26
    return v2

    .line 605
    :cond_27
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_60

    .line 611
    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int v1, v2, v3

    .line 615
    .restart local v1       #outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 616
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 617
    const/4 v2, 0x2

    goto :goto_26

    .line 630
    .end local v1           #outBuff:I
    :cond_60
    :try_start_60
    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 635
    .restart local v1       #outBuff:I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 636
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 637
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a1} :catch_a3

    .line 639
    const/4 v2, 0x3

    goto :goto_26

    .line 640
    .end local v1           #outBuff:I
    :catch_a3
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v5, p0, p1

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 643
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 647
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    const/4 v2, -0x1

    goto/16 :goto_26
.end method

.method private static encode3to4([BII[BI)[B
    .registers 10
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 256
    if-lez p2, :cond_29

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    :goto_c
    const/4 v2, 0x1

    if-le p2, v2, :cond_2b

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_17
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_23

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_23
    or-int v0, v2, v1

    .line 260
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_9a

    .line 283
    :goto_28
    return-object p3

    .end local v0           #inBuff:I
    :cond_29
    move v3, v1

    .line 256
    goto :goto_c

    :cond_2b
    move v2, v1

    goto :goto_17

    .line 262
    .restart local v0       #inBuff:I
    :pswitch_2d
    sget-object v1, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 263
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 264
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 265
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    and-int/lit8 v3, v0, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    goto :goto_28

    .line 269
    :pswitch_58
    sget-object v1, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 270
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 271
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 272
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_28

    .line 276
    :pswitch_7d
    sget-object v1, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 277
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 278
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 279
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_28

    .line 260
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_58
        :pswitch_2d
    .end packed-switch
.end method

.method private static encode3to4([B[BI)[B
    .registers 4
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-static {p1, v0, p2, p0, v0}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BI)[B

    .line 215
    return-object p0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 27
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 474
    and-int/lit8 v10, p3, 0x8

    .line 475
    .local v10, dontBreakLines:I
    and-int/lit8 v12, p3, 0x2

    .line 478
    .local v12, gzip:I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v12, v0, :cond_69

    .line 479
    const/4 v6, 0x0

    .line 480
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 481
    .local v13, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v4, 0x0

    .line 485
    .local v4, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_d
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_53
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_41

    .line 486
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .local v7, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_12
    new-instance v5, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    or-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    invoke-direct {v5, v7, v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_11d

    .line 487
    .end local v4           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local v5, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_1b
    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v14, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_112
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_121

    .line 489
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v14, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_20
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v14, v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 490
    invoke-virtual {v14}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_117
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2c} :catch_126

    .line 498
    :try_start_2c
    invoke-virtual {v14}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_f6

    .line 503
    :goto_2f
    :try_start_2f
    invoke-virtual {v5}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_f9

    .line 508
    :goto_32
    :try_start_32
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_fc

    .line 516
    :goto_35
    :try_start_35
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_40} :catch_5e

    .line 558
    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_40
    return-object v20

    .line 492
    .restart local v4       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_41
    move-exception v11

    .line 493
    .local v11, e:Ljava/io/IOException;
    :goto_42
    :try_start_42
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_53

    .line 494
    const/16 v20, 0x0

    .line 498
    :try_start_47
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_ff

    .line 503
    :goto_4a
    :try_start_4a
    invoke-virtual {v4}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_102

    .line 508
    :goto_4d
    :try_start_4d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_40

    .line 509
    :catch_51
    move-exception v21

    goto :goto_40

    .line 497
    .end local v11           #e:Ljava/io/IOException;
    :catchall_53
    move-exception v20

    .line 498
    :goto_54
    :try_start_54
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_105

    .line 503
    :goto_57
    :try_start_57
    invoke-virtual {v4}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_108

    .line 508
    :goto_5a
    :try_start_5a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_10b

    .line 511
    :goto_5d
    throw v20

    .line 518
    .end local v4           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_5e
    move-exception v19

    .line 519
    .local v19, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    goto :goto_40

    .line 526
    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v19           #uue:Ljava/io/UnsupportedEncodingException;
    :cond_69
    if-nez v10, :cond_b6

    const/4 v8, 0x1

    .line 528
    .local v8, breakLines:Z
    :goto_6c
    mul-int/lit8 v20, p2, 0x4

    div-int/lit8 v16, v20, 0x3

    .line 529
    .local v16, len43:I
    rem-int/lit8 v20, p2, 0x3

    if-lez v20, :cond_b8

    const/16 v20, 0x4

    :goto_76
    add-int v21, v16, v20

    if-eqz v8, :cond_bb

    div-int/lit8 v20, v16, 0x4c

    :goto_7c
    add-int v20, v20, v21

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 533
    .local v18, outBuff:[B
    const/4 v9, 0x0

    .line 534
    .local v9, d:I
    const/4 v11, 0x0

    .line 535
    .local v11, e:I
    add-int/lit8 v15, p2, -0x2

    .line 536
    .local v15, len2:I
    const/16 v17, 0x0

    .line 537
    .local v17, lineLength:I
    :goto_8a
    if-ge v9, v15, :cond_be

    .line 538
    add-int v20, v9, p1

    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v11}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BI)[B

    .line 540
    add-int/lit8 v17, v17, 0x4

    .line 541
    if-eqz v8, :cond_b1

    const/16 v20, 0x4c

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b1

    .line 542
    add-int/lit8 v20, v11, 0x4

    const/16 v21, 0xa

    aput-byte v21, v18, v20

    .line 543
    add-int/lit8 v11, v11, 0x1

    .line 544
    const/16 v17, 0x0

    .line 537
    :cond_b1
    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v11, v11, 0x4

    goto :goto_8a

    .line 526
    .end local v8           #breakLines:Z
    .end local v9           #d:I
    .end local v11           #e:I
    .end local v15           #len2:I
    .end local v16           #len43:I
    .end local v17           #lineLength:I
    .end local v18           #outBuff:[B
    :cond_b6
    const/4 v8, 0x0

    goto :goto_6c

    .line 529
    .restart local v8       #breakLines:Z
    .restart local v16       #len43:I
    :cond_b8
    const/16 v20, 0x0

    goto :goto_76

    :cond_bb
    const/16 v20, 0x0

    goto :goto_7c

    .line 548
    .restart local v9       #d:I
    .restart local v11       #e:I
    .restart local v15       #len2:I
    .restart local v17       #lineLength:I
    .restart local v18       #outBuff:[B
    :cond_be
    move/from16 v0, p2

    if-ge v9, v0, :cond_d3

    .line 549
    add-int v20, v9, p1

    sub-int v21, p2, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v11}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BI)[B

    .line 550
    add-int/lit8 v11, v11, 0x4

    .line 555
    :cond_d3
    :try_start_d3
    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v11, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_e4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d3 .. :try_end_e4} :catch_e6

    goto/16 :goto_40

    .line 557
    :catch_e6
    move-exception v19

    .line 558
    .restart local v19       #uue:Ljava/io/UnsupportedEncodingException;
    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v11}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_40

    .line 499
    .end local v8           #breakLines:Z
    .end local v9           #d:I
    .end local v11           #e:I
    .end local v15           #len2:I
    .end local v16           #len43:I
    .end local v17           #lineLength:I
    .end local v18           #outBuff:[B
    .end local v19           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_f6
    move-exception v20

    goto/16 :goto_2f

    .line 504
    :catch_f9
    move-exception v20

    goto/16 :goto_32

    .line 509
    :catch_fc
    move-exception v20

    goto/16 :goto_35

    .line 499
    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .local v11, e:Ljava/io/IOException;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_ff
    move-exception v21

    goto/16 :goto_4a

    .line 504
    :catch_102
    move-exception v21

    goto/16 :goto_4d

    .line 499
    .end local v11           #e:Ljava/io/IOException;
    :catch_105
    move-exception v21

    goto/16 :goto_57

    .line 504
    :catch_108
    move-exception v21

    goto/16 :goto_5a

    .line 509
    :catch_10b
    move-exception v21

    goto/16 :goto_5d

    .line 497
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_10e
    move-exception v20

    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_54

    .end local v4           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_112
    move-exception v20

    move-object v4, v5

    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v4       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_54

    .end local v4           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_117
    move-exception v20

    move-object v4, v5

    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v4       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object v13, v14

    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_54

    .line 492
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_11d
    move-exception v11

    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_42

    .end local v4           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_121
    move-exception v11

    move-object v4, v5

    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v4       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_42

    .end local v4           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_126
    move-exception v11

    move-object v4, v5

    .end local v5           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v4       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object v13, v14

    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_42
.end method
