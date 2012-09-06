.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendKeyValue(Ljava/lang/String;IILjava/util/Hashtable;)V
    .registers 8
    .parameter "uri"
    .parameter "paramStart"
    .parameter "paramEnd"
    .parameter "result"

    .prologue
    .line 252
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 253
    .local v1, separator:I
    if-ltz v1, :cond_19

    .line 255
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, key:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private static findFirstEscape([C)I
    .registers 5
    .parameter "escapedArray"

    .prologue
    .line 173
    array-length v2, p0

    .line 174
    .local v2, max:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_12

    .line 175
    aget-char v0, p0, v1

    .line 176
    .local v0, c:C
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_e

    const/16 v3, 0x25

    if-ne v0, v3, :cond_f

    .line 180
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_e
    :goto_e
    return v1

    .line 174
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    .end local v0           #c:C
    :cond_12
    const/4 v1, -0x1

    goto :goto_e
.end method

.method protected static isStringOfDigits(Ljava/lang/String;I)Z
    .registers 7
    .parameter "value"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 201
    if-nez p0, :cond_4

    .line 214
    :cond_3
    :goto_3
    return v3

    .line 204
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 205
    .local v2, stringLength:I
    if-ne p1, v2, :cond_3

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, p1, :cond_1c

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 214
    .end local v0           #c:C
    :cond_1c
    const/4 v3, 0x1

    goto :goto_3
.end method

.method protected static isSubstringOfDigits(Ljava/lang/String;II)Z
    .registers 9
    .parameter "value"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 218
    if-nez p0, :cond_4

    .line 232
    :cond_3
    :goto_3
    return v4

    .line 221
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 222
    .local v3, stringLength:I
    add-int v2, p1, p2

    .line 223
    .local v2, max:I
    if-lt v3, v2, :cond_3

    .line 226
    move v1, p1

    .local v1, i:I
    :goto_d
    if-ge v1, v2, :cond_1e

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 228
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 232
    .end local v0           #c:C
    :cond_1e
    const/4 v4, 0x1

    goto :goto_3
.end method

.method static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 12
    .parameter "prefix"
    .parameter "rawText"
    .parameter "endChar"
    .parameter "trim"

    .prologue
    .line 264
    const/4 v3, 0x0

    .line 265
    .local v3, matches:Ljava/util/Vector;
    const/4 v2, 0x0

    .line 266
    .local v2, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 267
    .local v4, max:I
    :cond_6
    if-ge v2, v4, :cond_e

    .line 268
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 269
    if-gez v2, :cond_18

    .line 299
    :cond_e
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 300
    :cond_16
    const/4 v6, 0x0

    .line 302
    :goto_17
    return-object v6

    .line 272
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 273
    move v5, v2

    .line 274
    .local v5, start:I
    const/4 v0, 0x0

    .line 275
    .local v0, done:Z
    :goto_1f
    if-nez v0, :cond_6

    .line 276
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 277
    if-gez v2, :cond_2d

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 280
    const/4 v0, 0x1

    goto :goto_1f

    .line 281
    :cond_2d
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_3a

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 286
    :cond_3a
    if-nez v3, :cond_42

    .line 287
    new-instance v3, Ljava/util/Vector;

    .end local v3           #matches:Ljava/util/Vector;
    const/4 v6, 0x3

    invoke-direct {v3, v6}, Ljava/util/Vector;-><init>(I)V

    .line 289
    .restart local v3       #matches:Ljava/util/Vector;
    :cond_42
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, element:Ljava/lang/String;
    if-eqz p3, :cond_50

    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_50
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    .line 295
    const/4 v0, 0x1

    .line 296
    goto :goto_1f

    .line 302
    .end local v0           #done:Z
    .end local v1           #element:Ljava/lang/String;
    .end local v5           #start:I
    :cond_57
    invoke-static {v3}, Lcom/google/zxing/client/result/ResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_17
.end method

.method static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 6
    .parameter "prefix"
    .parameter "rawText"
    .parameter "endChar"
    .parameter "trim"

    .prologue
    .line 306
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, matches:[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method protected static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "value"
    .parameter "result"

    .prologue
    .line 84
    if-eqz p0, :cond_a

    .line 85
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_a
    return-void
.end method

.method protected static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "value"
    .parameter "result"

    .prologue
    .line 91
    if-eqz p0, :cond_13

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 93
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 97
    .end local v0           #i:I
    :cond_13
    return-void
.end method

.method protected static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 100
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_3
.end method

.method private static parseHexDigit(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 184
    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    .line 185
    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 186
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    .line 197
    :goto_c
    return v0

    .line 188
    :cond_d
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    .line 189
    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 190
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_c

    .line 192
    :cond_1a
    const/16 v0, 0x30

    if-lt p0, v0, :cond_25

    .line 193
    const/16 v0, 0x39

    if-gt p0, v0, :cond_25

    .line 194
    add-int/lit8 v0, p0, -0x30

    goto :goto_c

    .line 197
    :cond_25
    const/4 v0, -0x1

    goto :goto_c
.end method

.method static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 5
    .parameter "uri"

    .prologue
    .line 236
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 237
    .local v1, paramStart:I
    if-gez v1, :cond_a

    .line 238
    const/4 v2, 0x0

    .line 248
    :goto_9
    return-object v2

    .line 240
    :cond_a
    new-instance v2, Ljava/util/Hashtable;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 241
    .local v2, result:Ljava/util/Hashtable;
    add-int/lit8 v1, v1, 0x1

    .line 243
    :goto_12
    const/16 v3, 0x26

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, paramEnd:I
    if-ltz v0, :cond_20

    .line 244
    invoke-static {p0, v1, v0, v2}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/String;IILjava/util/Hashtable;)V

    .line 245
    add-int/lit8 v1, v0, 0x1

    goto :goto_12

    .line 247
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v1, v3, v2}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/String;IILjava/util/Hashtable;)V

    goto :goto_9
.end method

.method public static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 5
    .parameter "theResult"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    .local v0, result:Lcom/google/zxing/client/result/ParsedResult;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 80
    :goto_7
    return-object v1

    .line 44
    :cond_8
    invoke-static {p0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v1, v0

    .line 45
    goto :goto_7

    .line 46
    :cond_10
    invoke-static {p0}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object v1, v0

    .line 47
    goto :goto_7

    .line 48
    :cond_18
    invoke-static {p0}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object v1, v0

    .line 49
    goto :goto_7

    .line 50
    :cond_20
    invoke-static {p0}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_28

    move-object v1, v0

    .line 51
    goto :goto_7

    .line 52
    :cond_28
    invoke-static {p0}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_30

    move-object v1, v0

    .line 53
    goto :goto_7

    .line 54
    :cond_30
    invoke-static {p0}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object v0

    if-eqz v0, :cond_38

    move-object v1, v0

    .line 55
    goto :goto_7

    .line 56
    :cond_38
    invoke-static {p0}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    if-eqz v0, :cond_40

    move-object v1, v0

    .line 57
    goto :goto_7

    .line 58
    :cond_40
    invoke-static {p0}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    if-eqz v0, :cond_48

    move-object v1, v0

    .line 59
    goto :goto_7

    .line 60
    :cond_48
    invoke-static {p0}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object v0

    if-eqz v0, :cond_50

    move-object v1, v0

    .line 61
    goto :goto_7

    .line 62
    :cond_50
    invoke-static {p0}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v0

    if-eqz v0, :cond_58

    move-object v1, v0

    .line 63
    goto :goto_7

    .line 64
    :cond_58
    invoke-static {p0}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v0

    if-eqz v0, :cond_60

    move-object v1, v0

    .line 65
    goto :goto_7

    .line 66
    :cond_60
    invoke-static {p0}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v0

    if-eqz v0, :cond_68

    move-object v1, v0

    .line 67
    goto :goto_7

    .line 68
    :cond_68
    invoke-static {p0}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object v0

    if-eqz v0, :cond_70

    move-object v1, v0

    .line 69
    goto :goto_7

    .line 70
    :cond_70
    invoke-static {p0}, Lcom/google/zxing/client/result/URLTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    if-eqz v0, :cond_78

    move-object v1, v0

    .line 71
    goto :goto_7

    .line 72
    :cond_78
    invoke-static {p0}, Lcom/google/zxing/client/result/URIResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    if-eqz v0, :cond_80

    move-object v1, v0

    .line 73
    goto :goto_7

    .line 74
    :cond_80
    invoke-static {p0}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;

    move-result-object v0

    if-eqz v0, :cond_88

    move-object v1, v0

    .line 76
    goto :goto_7

    .line 77
    :cond_88
    invoke-static {p0}, Lcom/google/zxing/client/result/ProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;

    move-result-object v0

    if-eqz v0, :cond_91

    move-object v1, v0

    .line 78
    goto/16 :goto_7

    .line 80
    :cond_91
    new-instance v1, Lcom/google/zxing/client/result/TextParsedResult;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method static toStringArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 5
    .parameter "strings"

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 312
    .local v2, size:I
    new-array v1, v2, [Ljava/lang/String;

    .line 313
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_7
    if-ge v0, v2, :cond_14

    .line 314
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 316
    :cond_14
    return-object v1
.end method

.method protected static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "escaped"

    .prologue
    const/16 v8, 0x5c

    .line 104
    if-eqz p0, :cond_36

    .line 105
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    .local v0, backslash:I
    if-ltz v0, :cond_36

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 108
    .local v3, max:I
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    .local v5, unescaped:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, nextIsEscaped:Z
    move v2, v0

    .local v2, i:I
    :goto_1f
    if-ge v2, v3, :cond_32

    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 113
    .local v1, c:C
    if-nez v4, :cond_29

    if-eq v1, v8, :cond_30

    .line 114
    :cond_29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    const/4 v4, 0x0

    .line 111
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 117
    :cond_30
    const/4 v4, 0x1

    goto :goto_2d

    .line 120
    .end local v1           #c:C
    :cond_32
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    .end local v0           #backslash:I
    .end local v2           #i:I
    .end local v3           #max:I
    .end local v4           #nextIsEscaped:Z
    .end local v5           #unescaped:Ljava/lang/StringBuffer;
    .end local p0
    :cond_36
    return-object p0
.end method

.method private static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "escaped"

    .prologue
    const/16 v9, 0x25

    .line 129
    if-nez p0, :cond_6

    .line 130
    const/4 p0, 0x0

    .line 169
    .end local p0
    .local v1, escapedArray:[C
    .local v2, first:I
    :cond_5
    :goto_5
    return-object p0

    .line 132
    .end local v1           #escapedArray:[C
    .end local v2           #first:I
    .restart local p0
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 134
    .restart local v1       #escapedArray:[C
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->findFirstEscape([C)I

    move-result v2

    .line 135
    .restart local v2       #first:I
    if-ltz v2, :cond_5

    .line 139
    array-length v5, v1

    .line 141
    .local v5, max:I
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, -0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 143
    .local v7, unescaped:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 145
    move v4, v2

    .local v4, i:I
    :goto_1d
    if-ge v4, v5, :cond_66

    .line 146
    aget-char v0, v1, v4

    .line 147
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_2d

    .line 149
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 150
    :cond_2d
    if-ne v0, v9, :cond_62

    .line 152
    add-int/lit8 v8, v5, -0x2

    if-lt v4, v8, :cond_37

    .line 153
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 155
    :cond_37
    add-int/lit8 v4, v4, 0x1

    aget-char v8, v1, v4

    invoke-static {v8}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v3

    .line 156
    .local v3, firstDigitValue:I
    add-int/lit8 v4, v4, 0x1

    aget-char v8, v1, v4

    invoke-static {v8}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v6

    .line 157
    .local v6, secondDigitValue:I
    if-ltz v3, :cond_4b

    if-gez v6, :cond_5a

    .line 159
    :cond_4b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    add-int/lit8 v8, v4, -0x1

    aget-char v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    aget-char v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_5a
    shl-int/lit8 v8, v3, 0x4

    add-int/2addr v8, v6

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 166
    .end local v3           #firstDigitValue:I
    .end local v6           #secondDigitValue:I
    :cond_62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 169
    .end local v0           #c:C
    :cond_66
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method
