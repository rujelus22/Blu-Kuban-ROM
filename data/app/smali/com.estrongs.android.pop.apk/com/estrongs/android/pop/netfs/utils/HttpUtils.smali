.class public Lcom/estrongs/android/pop/netfs/utils/HttpUtils;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static BUFFER_SIZE:I

.field private static final legalChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->$assertionsDisabled:Z

    const/16 v0, 0x800

    sput v0, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->BUFFER_SIZE:I

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_17

    :goto_f
    return-object v1

    :catch_10
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_17
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while decoding BASE64: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    array-length v4, p0

    new-instance v5, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v6, v4, -0x3

    move v0, v1

    move v2, v1

    :goto_10
    if-le v2, v6, :cond_52

    add-int v0, v1, v4

    add-int/lit8 v0, v0, -0x2

    if-ne v2, v0, :cond_a3

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4d
    :goto_4d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    sget-object v7, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v7, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v2, v0, 0x1

    const/16 v7, 0xe

    if-lt v0, v7, :cond_cb

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move v2, v3

    goto/16 :goto_10

    :cond_a3
    add-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_4d

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->legalChars:[C

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "=="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4d

    :cond_cb
    move v0, v2

    move v2, v3

    goto/16 :goto_10
.end method

.method public static buildGetUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->buildGetUrl(Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildGetUrl(Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_44

    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%7E"

    const-string v2, "~"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    const-string v1, ""

    const/4 v0, 0x1

    move v3, v4

    :goto_23
    array-length v5, p1

    if-lt v3, v5, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_55
    add-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    if-eqz v5, :cond_c7

    if-eqz v0, :cond_cb

    move v0, v4

    :goto_5e
    if-eqz p2, :cond_df

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "+"

    const-string v7, "%20"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "%7E"

    const-string v7, "~"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%7E"

    const-string v7, "~"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_23

    :cond_cb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5e

    :cond_df
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_125
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_125} :catch_127

    move-result-object v1

    goto :goto_c7

    :catch_127
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_43

    :cond_12b
    move-object v0, v2

    goto/16 :goto_43
.end method

.method private static decode(C)I
    .registers 4

    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x41

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_a

    :cond_18
    const/16 v0, 0x30

    if-lt p0, v0, :cond_27

    const/16 v0, 0x39

    if-gt p0, v0, :cond_27

    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x1a

    goto :goto_a

    :cond_27
    sparse-switch p0, :sswitch_data_48

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3f
    const/16 v0, 0x3e

    goto :goto_a

    :sswitch_42
    const/16 v0, 0x3f

    goto :goto_a

    :sswitch_45
    const/4 v0, 0x0

    goto :goto_a

    nop

    :sswitch_data_48
    .sparse-switch
        0x2b -> :sswitch_3f
        0x2f -> :sswitch_42
        0x3d -> :sswitch_45
    .end sparse-switch
.end method

.method private static decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7

    const/16 v4, 0x3d

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_11

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_14

    :cond_11
    if-ne v0, v1, :cond_17

    :cond_13
    return-void

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->decode(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->decode(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->decode(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->decode(C)I

    move-result v3

    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_13

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_13

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_7
.end method

.method public static getClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    const/16 v1, 0x7530

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private static getHexChar(I)Ljava/lang/Character;
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_c

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    add-int/lit8 v0, p0, 0x61

    add-int/lit8 v0, v0, -0xa

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_b
.end method

.method public static getInt(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v0, :cond_1a

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1a

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_18
    move v1, v0

    goto :goto_5

    :cond_1a
    if-eqz v0, :cond_29

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_29

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_27

    move-result v0

    goto :goto_18

    :catch_27
    move-exception v0

    goto :goto_5

    :cond_29
    move v0, v1

    goto :goto_18
.end method

.method public static parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .registers 9

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ERROR"

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RESULT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_24
    return-object v0

    :cond_25
    const-string v0, "OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RESULT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_38
    :try_start_38
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_43
    .catch Lorg/json/simple/parser/ParseException; {:try_start_38 .. :try_end_43} :catch_44

    goto :goto_24

    :catch_44
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicStatusLine;

    new-instance v4, Lorg/apache/http/ProtocolVersion;

    const-string v5, "HTTP"

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x3e7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad JSON From Server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/simple/parser/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    const-string v1, "ERROR"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RESULT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method public static readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 5

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget v0, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->BUFFER_SIZE:I

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-string v0, ""

    :goto_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :goto_25
    return-object v0

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_38
    const-string v0, ""

    goto :goto_25
.end method

.method public static setParameters(Lorg/apache/http/client/methods/HttpPost;[Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_1b

    :try_start_2
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    sget-boolean v0, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Params must have an even number of elements."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_22
    array-length v2, p1

    if-lt v0, v2, :cond_30

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1b

    :cond_30
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    if-eqz v2, :cond_5e

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5e} :catch_17

    :cond_5e
    add-int/lit8 v0, v0, 0x2

    goto :goto_22
.end method

.method public static toHexStr([B)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getHexChar(I)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getHexChar(I)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
