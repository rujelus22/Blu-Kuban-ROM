.class public Lcom/vlingo/client/core/util/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/util/URLEncoder$CCharacter;
    }
.end annotation


# static fields
.field private static _dontNeedEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ -_.*"

    sput-object v0, Lcom/vlingo/client/core/util/URLEncoder;->_dontNeedEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static dontNeedEncoding(I)Z
    .registers 5
    .parameter "ch"

    .prologue
    .line 127
    sget-object v3, Lcom/vlingo/client/core/util/URLEncoder;->_dontNeedEncoding:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 128
    .local v2, len:I
    const/4 v0, 0x0

    .line 129
    .local v0, en:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_13

    .line 130
    sget-object v3, Lcom/vlingo/client/core/util/URLEncoder;->_dontNeedEncoding:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p0, :cond_14

    .line 132
    const/4 v0, 0x1

    .line 137
    :cond_13
    return v0

    .line 129
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .parameter "s"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v10, 0x0

    .line 27
    .local v10, needToChange:Z
    const/4 v14, 0x0

    .line 28
    .local v14, wroteUnencodedChar:Z
    const/16 v9, 0xa

    .line 29
    .local v9, maxBytesPerChar:I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 30
    .local v11, out:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 32
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p1

    invoke-direct {v12, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 34
    .local v12, writer:Ljava/io/OutputStreamWriter;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_ad

    .line 35
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 37
    .local v3, c:I
    invoke-static {v3}, Lcom/vlingo/client/core/util/URLEncoder;->dontNeedEncoding(I)Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 38
    const/16 v15, 0x20

    if-ne v3, v15, :cond_33

    .line 39
    const/16 v3, 0x2b

    .line 40
    const/4 v10, 0x1

    .line 43
    :cond_33
    int-to-char v15, v3

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    const/4 v14, 0x1

    .line 34
    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 48
    :cond_3b
    if-eqz v14, :cond_46

    .line 49
    :try_start_3d
    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p1

    invoke-direct {v13, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 50
    .end local v12           #writer:Ljava/io/OutputStreamWriter;
    .local v13, writer:Ljava/io/OutputStreamWriter;
    const/4 v14, 0x0

    move-object v12, v13

    .line 52
    .end local v13           #writer:Ljava/io/OutputStreamWriter;
    .restart local v12       #writer:Ljava/io/OutputStreamWriter;
    :cond_46
    invoke-virtual {v12, v3}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 61
    const v15, 0xd800

    if-lt v3, v15, :cond_74

    const v15, 0xdbff

    if-gt v3, v15, :cond_74

    .line 66
    add-int/lit8 v15, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_74

    .line 67
    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 72
    .local v5, d:I
    const v15, 0xdc00

    if-lt v5, v15, :cond_74

    const v15, 0xdfff

    if-gt v5, v15, :cond_74

    .line 78
    invoke-virtual {v12, v5}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 83
    .end local v5           #d:I
    :cond_74
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_77} :catch_a3

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 89
    .local v1, ba:[B
    const/4 v8, 0x0

    .local v8, j:I
    :goto_7c
    array-length v15, v1

    if-ge v8, v15, :cond_a8

    .line 90
    const/16 v15, 0x25

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    aget-byte v15, v1, v8

    shr-int/lit8 v15, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Lcom/vlingo/client/core/util/URLEncoder$CCharacter;->forDigit(II)C

    move-result v4

    .line 97
    .local v4, ch:C
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    aget-byte v15, v1, v8

    and-int/lit8 v15, v15, 0xf

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Lcom/vlingo/client/core/util/URLEncoder$CCharacter;->forDigit(II)C

    move-result v4

    .line 102
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    .line 84
    .end local v1           #ba:[B
    .end local v4           #ch:C
    .end local v8           #j:I
    :catch_a3
    move-exception v6

    .line 85
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_38

    .line 104
    .end local v6           #e:Ljava/io/IOException;
    .restart local v1       #ba:[B
    .restart local v8       #j:I
    :cond_a8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 105
    const/4 v10, 0x1

    goto :goto_38

    .line 109
    .end local v1           #ba:[B
    .end local v3           #c:I
    .end local v8           #j:I
    :cond_ad
    if-eqz v10, :cond_b3

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_b3
    return-object p0
.end method
