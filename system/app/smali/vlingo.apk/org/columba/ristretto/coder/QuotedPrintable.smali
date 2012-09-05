.class public Lorg/columba/ristretto/coder/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final hexTable:[C

.field private static final packPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "org.columba.ristretto.coder"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/QuotedPrintable;->LOG:Ljava/util/logging/Logger;

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/columba/ristretto/coder/QuotedPrintable;->hexTable:[C

    .line 79
    const-string v0, "=([0-9a-fA-F\r][0-9a-fA-F\n])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/QuotedPrintable;->packPattern:Ljava/util/regex/Pattern;

    return-void

    .line 60
    :array_1a
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
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "input"
    .parameter "charset"

    .prologue
    .line 91
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, buffer:Ljava/nio/ByteBuffer;
    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintable;->packPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 93
    .local v4, matcher:Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 98
    .local v3, lastMatchEnd:I
    :goto_f
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 101
    :try_start_15
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-interface {p0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US-ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_2a} :catch_46

    .line 106
    :goto_2a
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, group:Ljava/lang/String;
    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 108
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    :cond_41
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_f

    .line 102
    .end local v2           #group:Ljava/lang/String;
    :catch_46
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintable;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_2a

    .line 116
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_51
    :try_start_51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US-ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_51 .. :try_end_66} :catch_75

    .line 121
    :goto_66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 124
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    return-object v5

    .line 117
    :catch_75
    move-exception v1

    .line 119
    .restart local v1       #e:Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintable;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_66
.end method

.method public static encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/StringBuffer;
    .registers 13
    .parameter "input"
    .parameter "charset"

    .prologue
    const/16 v10, 0x4a

    const/16 v9, 0x3d

    const/16 v8, 0xd

    .line 137
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v5, result:Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 140
    .local v0, current:Ljava/nio/CharBuffer;
    const/4 v3, 0x0

    .line 142
    .local v3, lineLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_8f

    .line 143
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 144
    const/4 v6, 0x0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 145
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 152
    .local v1, decoded:Ljava/nio/ByteBuffer;
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-eqz v6, :cond_8c

    .line 153
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 155
    .local v4, next:B
    const/16 v6, 0x9

    if-eq v4, v6, :cond_3d

    const/16 v6, 0x20

    if-ne v4, v6, :cond_51

    :cond_3d
    if-eq v3, v10, :cond_51

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_51

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5b

    :cond_51
    const/16 v6, 0x21

    if-lt v4, v6, :cond_6a

    if-eq v4, v9, :cond_6a

    const/16 v6, 0x7e

    if-gt v4, v6, :cond_6a

    .line 160
    :cond_5b
    int-to-char v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 176
    :goto_61
    if-le v3, v10, :cond_2b

    .line 177
    const-string v6, "=\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const/4 v3, 0x0

    goto :goto_2b

    .line 162
    :cond_6a
    if-ne v4, v8, :cond_75

    .line 163
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 165
    const/4 v3, 0x0

    goto :goto_61

    .line 167
    :cond_75
    const/16 v6, 0x47

    if-le v3, v6, :cond_7f

    .line 168
    const-string v6, "=\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const/4 v3, 0x0

    .line 171
    :cond_7f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    invoke-static {v4}, Lorg/columba/ristretto/coder/QuotedPrintable;->toHexString(B)[C

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v3, v3, 0x3

    goto :goto_61

    .line 142
    .end local v4           #next:B
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 183
    .end local v1           #decoded:Ljava/nio/ByteBuffer;
    :cond_8f
    return-object v5
.end method

.method private static toHexString(B)[C
    .registers 7
    .parameter "in"

    .prologue
    .line 193
    const/4 v4, 0x2

    new-array v2, v4, [C

    .line 195
    .local v2, result:[C
    if-gez p0, :cond_1c

    .line 196
    and-int/lit8 v4, p0, 0x7f

    or-int/lit16 v3, v4, 0x80

    .line 201
    .local v3, value:I
    :goto_9
    div-int/lit8 v0, v3, 0x10

    .line 202
    .local v0, hi:I
    rem-int/lit8 v1, v3, 0x10

    .line 204
    .local v1, lo:I
    const/4 v4, 0x0

    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintable;->hexTable:[C

    aget-char v5, v5, v0

    aput-char v5, v2, v4

    .line 205
    const/4 v4, 0x1

    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintable;->hexTable:[C

    aget-char v5, v5, v1

    aput-char v5, v2, v4

    .line 207
    return-object v2

    .line 198
    .end local v0           #hi:I
    .end local v1           #lo:I
    .end local v3           #value:I
    :cond_1c
    move v3, p0

    .restart local v3       #value:I
    goto :goto_9
.end method
