.class final Lcom/google/zxing/e/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/e/a/l;->a:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x20t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method private static a(I)C
    .registers 2
    .parameter

    .prologue
    .line 233
    sget-object v0, Lcom/google/zxing/e/a/l;->a:[C

    array-length v0, v0

    if-lt p0, v0, :cond_a

    .line 234
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 236
    :cond_a
    sget-object v0, Lcom/google/zxing/e/a/l;->a:[C

    aget-char v0, v0, p0

    return v0
.end method

.method static a([BLcom/google/zxing/e/a/q;Lcom/google/zxing/e/a/n;Ljava/util/Hashtable;)Lcom/google/zxing/common/g;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/google/zxing/common/c;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/c;-><init>([B)V

    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    new-instance v4, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Ljava/util/Vector;-><init>(I)V

    .line 63
    :goto_14
    invoke-virtual {v0}, Lcom/google/zxing/common/c;->b()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_53

    .line 65
    sget-object v2, Lcom/google/zxing/e/a/p;->a:Lcom/google/zxing/e/a/p;

    move-object v7, v2

    .line 73
    :goto_1e
    sget-object v2, Lcom/google/zxing/e/a/p;->a:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_138

    .line 74
    sget-object v2, Lcom/google/zxing/e/a/p;->h:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    sget-object v2, Lcom/google/zxing/e/a/p;->i:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 76
    :cond_36
    const/4 v2, 0x1

    .line 115
    :goto_37
    sget-object v5, Lcom/google/zxing/e/a/p;->a:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 117
    new-instance v2, Lcom/google/zxing/common/g;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v4, 0x0

    :cond_4c
    if-nez p2, :cond_132

    const/4 v0, 0x0

    :goto_4f
    invoke-direct {v2, p0, v1, v4, v0}, Lcom/google/zxing/common/g;-><init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    return-object v2

    .line 68
    :cond_53
    const/4 v2, 0x4

    :try_start_54
    invoke-virtual {v0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/e/a/p;->a(I)Lcom/google/zxing/e/a/p;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5b} :catch_5e

    move-result-object v2

    move-object v7, v2

    .line 71
    goto :goto_1e

    .line 70
    :catch_5e
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 77
    :cond_64
    sget-object v2, Lcom/google/zxing/e/a/p;->d:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 80
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move v2, v6

    goto :goto_37

    .line 81
    :cond_73
    sget-object v2, Lcom/google/zxing/e/a/p;->f:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 83
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_92

    and-int/lit8 v2, v2, 0x7f

    .line 84
    :goto_87
    invoke-static {v2}, Lcom/google/zxing/common/d;->a(I)Lcom/google/zxing/common/d;

    move-result-object v3

    .line 85
    if-nez v3, :cond_cb

    .line 86
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 83
    :cond_92
    and-int/lit16 v3, v2, 0xc0

    const/16 v5, 0x80

    if-ne v3, v5, :cond_a4

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/c;->a(I)I

    move-result v3

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    goto :goto_87

    :cond_a4
    and-int/lit16 v3, v2, 0xe0

    const/16 v5, 0xc0

    if-ne v3, v5, :cond_b6

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/c;->a(I)I

    move-result v3

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    goto :goto_87

    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Bad ECI bits starting with byte "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cb
    move v2, v6

    .line 88
    goto/16 :goto_37

    .line 90
    :cond_ce
    sget-object v2, Lcom/google/zxing/e/a/p;->j:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 92
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move-result v2

    .line 93
    invoke-virtual {v7, p1}, Lcom/google/zxing/e/a/p;->a(Lcom/google/zxing/e/a/q;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/c;->a(I)I

    move-result v5

    .line 94
    const/4 v8, 0x1

    if-ne v2, v8, :cond_e9

    .line 95
    invoke-static {v0, v1, v5}, Lcom/google/zxing/e/a/l;->a(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;I)V

    :cond_e9
    move v2, v6

    .line 97
    goto/16 :goto_37

    .line 100
    :cond_ec
    invoke-virtual {v7, p1}, Lcom/google/zxing/e/a/p;->a(Lcom/google/zxing/e/a/q;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move-result v2

    .line 101
    sget-object v5, Lcom/google/zxing/e/a/p;->b:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 102
    invoke-static {v0, v1, v2}, Lcom/google/zxing/e/a/l;->c(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;I)V

    move v2, v6

    goto/16 :goto_37

    .line 103
    :cond_102
    sget-object v5, Lcom/google/zxing/e/a/p;->c:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 104
    invoke-static {v0, v1, v2, v6}, Lcom/google/zxing/e/a/l;->a(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;IZ)V

    move v2, v6

    goto/16 :goto_37

    .line 105
    :cond_110
    sget-object v5, Lcom/google/zxing/e/a/p;->e:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    move-object v5, p3

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/e/a/l;->a(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;ILcom/google/zxing/common/d;Ljava/util/Vector;Ljava/util/Hashtable;)V

    move v2, v6

    goto/16 :goto_37

    .line 107
    :cond_11f
    sget-object v5, Lcom/google/zxing/e/a/p;->g:Lcom/google/zxing/e/a/p;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 108
    invoke-static {v0, v1, v2}, Lcom/google/zxing/e/a/l;->b(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;I)V

    move v2, v6

    goto/16 :goto_37

    .line 110
    :cond_12d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 117
    :cond_132
    invoke-virtual {p2}, Lcom/google/zxing/e/a/n;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4f

    :cond_138
    move v2, v6

    goto/16 :goto_37

    :cond_13b
    move v6, v2

    goto/16 :goto_14
.end method

.method private static a(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/c;->b()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 131
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 136
    :cond_d
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    .line 137
    const/4 v0, 0x0

    move v1, v0

    .line 138
    :goto_13
    if-lez p2, :cond_43

    .line 140
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/c;->a(I)I

    move-result v0

    .line 141
    div-int/lit8 v3, v0, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v0, v0, 0x60

    or-int/2addr v0, v3

    .line 142
    const/16 v3, 0x3bf

    if-ge v0, v3, :cond_3e

    .line 144
    const v3, 0xa1a1

    add-int/2addr v0, v3

    .line 149
    :goto_2a
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 150
    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 151
    add-int/lit8 v0, v1, 0x2

    .line 152
    add-int/lit8 p2, p2, -0x1

    move v1, v0

    .line 153
    goto :goto_13

    .line 147
    :cond_3e
    const v3, 0xa6a1

    add-int/2addr v0, v3

    goto :goto_2a

    .line 156
    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 159
    return-void

    .line 158
    :catch_4e
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;ILcom/google/zxing/common/d;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/c;->b()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 206
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 209
    :cond_d
    new-array v1, p2, [B

    .line 210
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p2, :cond_1e

    .line 211
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 214
    :cond_1e
    if-nez p3, :cond_30

    .line 220
    invoke-static {v1, p5}, Lcom/google/zxing/common/o;->a([BLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_24
    :try_start_24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_35

    .line 229
    invoke-virtual {p4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    return-void

    .line 222
    :cond_30
    invoke-virtual {p3}, Lcom/google/zxing/common/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 227
    :catch_35
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;IZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x25

    const/4 v3, 0x1

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 245
    :goto_7
    if-le p2, v3, :cond_24

    .line 246
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/c;->a(I)I

    move-result v1

    .line 247
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    add-int/lit8 p2, p2, -0x2

    .line 250
    goto :goto_7

    .line 251
    :cond_24
    if-ne p2, v3, :cond_32

    .line 253
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/c;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :cond_32
    if-eqz p3, :cond_5e

    .line 258
    :goto_34
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_55

    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_58

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_58

    .line 262
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 258
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 265
    :cond_58
    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_55

    .line 270
    :cond_5e
    return-void
.end method

.method private static b(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/c;->b()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 167
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 172
    :cond_d
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    .line 173
    const/4 v0, 0x0

    move v1, v0

    .line 174
    :goto_13
    if-lez p2, :cond_3f

    .line 176
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/c;->a(I)I

    move-result v0

    .line 177
    div-int/lit16 v3, v0, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, v3

    .line 178
    const/16 v3, 0x1f00

    if-ge v0, v3, :cond_3a

    .line 180
    const v3, 0x8140

    add-int/2addr v0, v3

    .line 185
    :goto_2a
    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 186
    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 187
    add-int/lit8 v0, v1, 0x2

    .line 188
    add-int/lit8 p2, p2, -0x1

    move v1, v0

    .line 189
    goto :goto_13

    .line 183
    :cond_3a
    const v3, 0xc140

    add-int/2addr v0, v3

    goto :goto_2a

    .line 192
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/String;

    const-string v1, "SJIS"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_49} :catch_4a

    .line 195
    return-void

    .line 194
    :catch_4a
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static c(Lcom/google/zxing/common/c;Ljava/lang/StringBuffer;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0xa

    .line 276
    :goto_4
    const/4 v0, 0x3

    if-lt p2, v0, :cond_3f

    .line 278
    invoke-virtual {p0}, Lcom/google/zxing/common/c;->b()I

    move-result v0

    if-ge v0, v2, :cond_12

    .line 279
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 281
    :cond_12
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/c;->a(I)I

    move-result v0

    .line 282
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1f

    .line 283
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 285
    :cond_1f
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 287
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    add-int/lit8 p2, p2, -0x3

    .line 289
    goto :goto_4

    .line 290
    :cond_3f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6d

    .line 292
    invoke-virtual {p0}, Lcom/google/zxing/common/c;->b()I

    move-result v0

    if-ge v0, v4, :cond_4d

    .line 293
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 295
    :cond_4d
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/c;->a(I)I

    move-result v0

    .line 296
    const/16 v1, 0x64

    if-lt v0, v1, :cond_5a

    .line 297
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 299
    :cond_5a
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    :cond_6c
    :goto_6c
    return-void

    .line 301
    :cond_6d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6c

    .line 303
    invoke-virtual {p0}, Lcom/google/zxing/common/c;->b()I

    move-result v0

    if-ge v0, v3, :cond_7b

    .line 304
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 306
    :cond_7b
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/c;->a(I)I

    move-result v0

    .line 307
    if-lt v0, v2, :cond_86

    .line 308
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 310
    :cond_86
    invoke-static {v0}, Lcom/google/zxing/e/a/l;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6c
.end method
