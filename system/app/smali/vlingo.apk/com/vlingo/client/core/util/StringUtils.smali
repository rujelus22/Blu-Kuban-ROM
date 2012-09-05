.class public abstract Lcom/vlingo/client/core/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arePhoneNumbersTheSame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "n1"
    .parameter "n2"

    .prologue
    const/4 v1, 0x1

    .line 143
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    const/4 v0, 0x0

    .line 153
    :goto_6
    return v0

    .line 145
    :cond_7
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 147
    :cond_17
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_27
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_37
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 5
    .parameter "arr"

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_12

    .line 114
    aget-byte v0, p0, v1

    .line 115
    .local v0, b:B
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 117
    .end local v0           #b:B
    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    return-object p0
.end method

.method public static cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "number"

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 134
    .local v1, cleaned:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 135
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1f

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1f

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 139
    .end local v0           #c:C
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "version1"
    .parameter "version2"

    .prologue
    const/16 v8, 0x2e

    const/4 v6, 0x0

    .line 308
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 322
    :cond_9
    :goto_9
    return v6

    .line 311
    :cond_a
    invoke-static {p0, v8}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, v1:[Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, v2:[Ljava/lang/String;
    array-length v7, v2

    array-length v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 315
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v1, :cond_9

    .line 316
    const/4 v4, 0x0

    .local v4, vc1:I
    const/4 v5, 0x0

    .line 317
    .local v5, vc2:I
    array-length v7, v2

    if-ge v0, v7, :cond_26

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 318
    :cond_26
    array-length v7, v3

    if-ge v0, v7, :cond_2f

    aget-object v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 319
    :cond_2f
    if-le v4, v5, :cond_33

    const/4 v6, 0x1

    goto :goto_9

    .line 320
    :cond_33
    if-ge v4, v5, :cond_37

    const/4 v6, -0x1

    goto :goto_9

    .line 315
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static final convertBytesToString([B)Ljava/lang/String;
    .registers 4
    .parameter "bytes"

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    .line 43
    :goto_7
    return-object v1

    .line 42
    :catch_8
    move-exception v0

    .line 43
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_7
.end method

.method public static final convertStringToBytes(Ljava/lang/String;)[B
    .registers 3
    .parameter "str"

    .prologue
    .line 49
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 51
    :goto_6
    return-object v1

    .line 50
    :catch_7
    move-exception v0

    .line 51
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "number"

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/vlingo/client/core/util/StringUtils;->formatPhoneNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPhoneNumber(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .parameter "number"
    .parameter "showParens"

    .prologue
    const/4 v5, 0x1

    const/16 v11, 0xa

    const/4 v10, 0x6

    const/4 v6, 0x0

    const/4 v9, 0x3

    .line 162
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_11

    :cond_e
    const-string p0, ""

    .line 234
    .end local p0
    :cond_10
    :goto_10
    return-object p0

    .line 164
    .restart local p0
    :cond_11
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, c:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 166
    .local v3, clen:I
    if-nez v3, :cond_1e

    const-string p0, ""

    goto :goto_10

    .line 167
    :cond_1e
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v3, 0x10

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 168
    .local v2, cleaned:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_68

    move v4, v5

    .line 169
    .local v4, startsWithOne:Z
    :goto_2e
    const-string v7, "+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 170
    const-string v7, "+"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_3b
    if-eqz v4, :cond_fa

    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    add-int/lit8 v3, v3, -0x1

    .line 176
    if-lt v3, v9, :cond_70

    if-gt v3, v10, :cond_70

    .line 177
    if-eqz p1, :cond_6a

    const-string v5, "1 ("

    :goto_4b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    if-eqz p1, :cond_6d

    const-string v5, ") "

    :goto_59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .end local v4           #startsWithOne:Z
    :cond_68
    move v4, v6

    .line 168
    goto :goto_2e

    .line 177
    .restart local v4       #startsWithOne:Z
    :cond_6a
    const-string v5, "1-"

    goto :goto_4b

    .line 179
    :cond_6d
    const-string v5, "-"

    goto :goto_59

    .line 183
    :cond_70
    const/4 v5, 0x7

    if-lt v3, v5, :cond_a9

    if-gt v3, v11, :cond_a9

    .line 184
    if-eqz p1, :cond_a3

    const-string v5, "1 ("

    :goto_79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    if-eqz p1, :cond_a6

    const-string v5, ") "

    :goto_87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 184
    :cond_a3
    const-string v5, "1-"

    goto :goto_79

    .line 186
    :cond_a6
    const-string v5, "-"

    goto :goto_87

    .line 192
    :cond_a9
    if-le v3, v11, :cond_10

    .line 193
    add-int/lit8 v1, v3, -0xa

    .line 194
    .local v1, cidx:I
    if-eqz p1, :cond_f1

    const-string v5, "1 "

    :goto_b1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    if-eqz p1, :cond_f4

    const-string v5, " ("

    :goto_bf
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    add-int/lit8 v5, v1, 0x3

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    if-eqz p1, :cond_f7

    const-string v5, ") "

    :goto_cf
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v1, 0x6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 203
    goto/16 :goto_10

    .line 194
    :cond_f1
    const-string v5, "1-"

    goto :goto_b1

    .line 196
    :cond_f4
    const-string v5, "-"

    goto :goto_bf

    .line 198
    :cond_f7
    const-string v5, "-"

    goto :goto_cf

    .line 206
    .end local v1           #cidx:I
    :cond_fa
    const/4 v5, 0x4

    if-lt v3, v5, :cond_119

    const/4 v5, 0x7

    if-gt v3, v5, :cond_119

    .line 207
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 212
    :cond_119
    const/16 v5, 0x8

    if-lt v3, v5, :cond_153

    if-gt v3, v11, :cond_153

    .line 213
    if-eqz p1, :cond_14d

    const-string v5, "("

    :goto_123
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    if-eqz p1, :cond_150

    const-string v5, ") "

    :goto_131
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 213
    :cond_14d
    const-string v5, ""

    goto :goto_123

    .line 215
    :cond_150
    const-string v5, "-"

    goto :goto_131

    .line 221
    :cond_153
    if-le v3, v11, :cond_10

    .line 222
    add-int/lit8 v1, v3, -0xa

    .line 223
    .restart local v1       #cidx:I
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    if-eqz p1, :cond_194

    const-string v5, " ("

    :goto_162
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v5, v1, 0x3

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    if-eqz p1, :cond_197

    const-string v5, ") "

    :goto_172
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v1, 0x6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 224
    :cond_194
    const-string v5, "-"

    goto :goto_162

    .line 226
    :cond_197
    const-string v5, "-"

    goto :goto_172
.end method

.method public static getHostname(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    .line 241
    const-string v2, "://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, slashPos:I
    if-ne v1, v4, :cond_c

    .line 243
    const-string v2, ""

    .line 250
    :goto_b
    return-object v2

    .line 244
    :cond_c
    const-string v2, "/"

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, endSlashPos:I
    if-ne v0, v4, :cond_24

    .line 246
    const-string v2, ";"

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 247
    if-ne v0, v4, :cond_24

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 250
    :cond_24
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method

.method public static getSubstring(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"
    .parameter "startDelimiter"
    .parameter "endDelimiter"

    .prologue
    const/4 v2, 0x0

    .line 419
    if-nez p0, :cond_4

    .line 438
    :cond_3
    :goto_3
    return-object v2

    .line 422
    :cond_4
    const/4 v1, 0x0

    .line 423
    .local v1, startIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 425
    .local v0, endIndex:I
    if-eqz p1, :cond_16

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 427
    if-ltz v1, :cond_3

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 432
    :cond_16
    if-eqz p2, :cond_1e

    .line 433
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 434
    if-ltz v0, :cond_3

    .line 438
    :cond_1e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static final getWordAtCursor(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "phrase"
    .parameter "cursorPosition"

    .prologue
    .line 24
    const-string v1, ""

    .line 25
    .local v1, word:Ljava/lang/String;
    if-ltz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_32

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, words:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 28
    .local v0, pos:I
    const/4 v2, 0x0

    .line 29
    .local v2, wordindex:I
    :goto_1c
    if-le p1, v0, :cond_2d

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2d

    .line 30
    add-int/lit8 v2, v2, 0x1

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1c

    .line 32
    :cond_2d
    array-length v4, v3

    if-gt v2, v4, :cond_32

    .line 33
    aget-object v1, v3, v2

    .line 36
    .end local v0           #pos:I
    .end local v2           #wordindex:I
    .end local v3           #words:[Ljava/lang/String;
    :cond_32
    return-object v1
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v0, 0x0

    .line 380
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 381
    const/4 v0, 0x1

    .line 386
    :cond_6
    :goto_6
    return v0

    .line 382
    :cond_7
    if-eqz p0, :cond_b

    if-eqz p1, :cond_6

    .line 384
    :cond_b
    if-nez p0, :cond_f

    if-nez p1, :cond_6

    .line 386
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method

.method public static isIPAddress(Ljava/lang/String;)Z
    .registers 14
    .parameter "s"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/16 v9, 0x2e

    const/4 v7, 0x0

    .line 334
    invoke-static {p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_13

    .line 376
    :cond_12
    :goto_12
    return v7

    .line 338
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 340
    const/4 v1, 0x0

    .local v1, dotCount:I
    new-array v2, v12, [I

    .line 343
    .local v2, dotPos:[I
    aput v10, v2, v7

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    aput v8, v2, v11

    .line 346
    const/4 v4, 0x0

    .local v4, index:I
    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_40

    if-ge v1, v11, :cond_40

    .line 347
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_37

    if-ne v0, v9, :cond_12

    .line 350
    :cond_37
    if-ne v0, v9, :cond_3d

    .line 351
    add-int/lit8 v1, v1, 0x1

    aput v4, v2, v1

    .line 346
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 355
    .end local v0           #ch:C
    :cond_40
    const/4 v8, 0x3

    if-ne v1, v8, :cond_12

    .line 363
    const/4 v1, 0x1

    :goto_44
    if-ge v1, v12, :cond_65

    .line 364
    add-int/lit8 v8, v1, -0x1

    :try_start_48
    aget v8, v2, v8

    add-int/lit8 v4, v8, 0x1

    .line 365
    aget v8, v2, v1

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, num:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_63

    move-result v6

    .line 368
    .local v6, number:I
    if-ltz v6, :cond_12

    const/16 v8, 0xff

    if-gt v6, v8, :cond_12

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 372
    .end local v5           #num:Ljava/lang/String;
    .end local v6           #number:I
    :catch_63
    move-exception v3

    .line 373
    .local v3, e:Ljava/lang/Exception;
    goto :goto_12

    .line 376
    .end local v3           #e:Ljava/lang/Exception;
    :cond_65
    const/4 v7, 0x1

    goto :goto_12
.end method

.method public static isNullOrWhiteSpace(Ljava/lang/String;)Z
    .registers 3
    .parameter "s"

    .prologue
    .line 67
    if-eqz p0, :cond_e

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 68
    :cond_e
    const/4 v0, 0x1

    .line 70
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .registers 6
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, len:I
    if-nez v2, :cond_8

    .line 129
    :cond_7
    :goto_7
    return v3

    .line 124
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_2e

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    .local v0, ch:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_17

    const/16 v4, 0x39

    if-le v0, v4, :cond_2b

    :cond_17
    const/16 v4, 0x20

    if-eq v0, v4, :cond_2b

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_2b

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_2b

    const/16 v4, 0x28

    if-eq v0, v4, :cond_2b

    const/16 v4, 0x29

    if-ne v0, v4, :cond_7

    .line 124
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 129
    .end local v0           #ch:C
    :cond_2e
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public static isVersionAtLeast(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "version"
    .parameter "atLeast"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 300
    :cond_6
    :goto_6
    return v1

    .line 299
    :cond_7
    invoke-static {p0, p1}, Lcom/vlingo/client/core/util/StringUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, res:I
    if-eqz v0, :cond_f

    if-ne v0, v2, :cond_6

    :cond_f
    move v1, v2

    goto :goto_6
.end method

.method public static isZero(Ljava/lang/String;)Z
    .registers 4
    .parameter "string"

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, bIsZero:Z
    const/4 v1, 0x1

    .line 405
    .local v1, intValue:I
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_c

    move-result v1

    .line 413
    :goto_6
    if-nez v1, :cond_a

    const/4 v0, 0x1

    .line 415
    :goto_9
    return v0

    .line 413
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 407
    :catch_c
    move-exception v2

    goto :goto_6
.end method

.method public static removeFromEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .parameter "strToRemove"

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 329
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 330
    return-object p0
.end method

.method public static final removeTopChoice([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "choices"

    .prologue
    .line 56
    if-eqz p0, :cond_5

    array-length v3, p0

    if-nez v3, :cond_7

    .line 57
    :cond_5
    const/4 v1, 0x0

    .line 63
    :cond_6
    return-object v1

    .line 58
    :cond_7
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 59
    .local v2, size:I
    new-array v1, v2, [Ljava/lang/String;

    .line 60
    .local v1, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_6

    .line 61
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    aput-object v3, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "_text"
    .parameter "_searchStr"
    .parameter "_replacementStr"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, searchStringPos:I
    const/4 v3, 0x0

    .line 95
    .local v3, startPos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 98
    .local v1, searchStringLength:I
    :goto_e
    const/4 v4, -0x1

    if-eq v2, v4, :cond_23

    .line 99
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int v3, v2, v1

    .line 101
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_e

    .line 105
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static replaceHostname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "url"
    .parameter "newHostname"

    .prologue
    const/4 v5, -0x1

    .line 258
    const-string v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 259
    .local v2, slashPos:I
    if-ne v2, v5, :cond_c

    .line 260
    const-string v3, ""

    .line 271
    :goto_b
    return-object v3

    .line 261
    :cond_c
    const-string v3, "/"

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, endSlashPos:I
    if-ne v1, v5, :cond_24

    .line 263
    const-string v3, ";"

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 264
    if-ne v1, v5, :cond_24

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 268
    :cond_24
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, buff:Ljava/lang/StringBuffer;
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 270
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 8
    .parameter "str"
    .parameter "delimiter"

    .prologue
    .line 278
    if-nez p0, :cond_4

    .line 279
    const/4 v0, 0x0

    .line 293
    :goto_3
    return-object v0

    .line 280
    :cond_4
    const/4 v1, 0x0

    .line 281
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

    .line 282
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_14

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 281
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 285
    :cond_17
    add-int/lit8 v5, v1, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .line 286
    .local v0, arr:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 287
    .local v3, index:I
    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2e

    .line 288
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 289
    .local v4, pos:I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 290
    add-int/lit8 v3, v4, 0x1

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 292
    .end local v4           #pos:I
    :cond_2e
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    goto :goto_3
.end method
