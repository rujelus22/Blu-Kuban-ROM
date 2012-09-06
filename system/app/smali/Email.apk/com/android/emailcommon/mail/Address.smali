.class public Lcom/android/emailcommon/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/mail/Address;

    sput-object v0, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "address"
    .parameter "personal"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .registers 7
    .parameter "addressList"

    .prologue
    .line 119
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27

    .line 120
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 121
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, length:I
    :goto_e
    if-ge v1, v2, :cond_27

    .line 122
    aget-object v3, v4, v1

    .line 123
    .local v3, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 125
    const/4 v5, 0x0

    .line 129
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :goto_23
    return v5

    .line 121
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #token:Landroid/text/util/Rfc822Token;
    .restart local v4       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 129
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_27
    const/4 v5, 0x1

    goto :goto_23
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v5, 0x40

    const/16 v6, 0x2e

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 171
    .local v4, len:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 172
    .local v0, firstAt:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 173
    .local v2, lastAt:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 174
    .local v1, firstDot:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 175
    .local v3, lastDot:I
    if-lez v0, :cond_2a

    if-ne v0, v2, :cond_2a

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_2a

    if-gt v1, v3, :cond_2a

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_2a

    const/4 v5, 0x1

    :goto_29
    return v5

    :cond_2a
    const/4 v5, 0x0

    goto :goto_29
.end method

.method public static pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .registers 9
    .parameter "addresses"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 410
    if-nez p0, :cond_6

    .line 411
    const/4 v5, 0x0

    .line 436
    :goto_5
    return-object v5

    .line 413
    :cond_6
    array-length v3, p0

    .line 414
    .local v3, nAddr:I
    if-nez v3, :cond_c

    .line 415
    const-string v5, ""

    goto :goto_5

    .line 419
    :cond_c
    if-ne v3, v7, :cond_1d

    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 420
    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 423
    :cond_1d
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    if-ge v2, v3, :cond_43

    .line 425
    if-eqz v2, :cond_2a

    .line 426
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    :cond_2a
    aget-object v0, p0, v2

    .line 429
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 432
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 436
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_43
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "packedList"

    .prologue
    .line 351
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
    .registers 9
    .parameter "addressList"

    .prologue
    .line 140
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b

    .line 141
    :cond_8
    sget-object v7, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    .line 158
    :goto_a
    return-object v7

    .line 143
    :cond_b
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 144
    .local v6, tokens:[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v6

    .local v3, length:I
    :goto_16
    if-ge v2, v3, :cond_40

    .line 146
    aget-object v5, v6, v2

    .line 147
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 149
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 150
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 152
    const/4 v4, 0x0

    .line 154
    :cond_35
    new-instance v7, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v4           #name:Ljava/lang/String;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 158
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #token:Landroid/text/util/Rfc822Token;
    :cond_40
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/emailcommon/mail/Address;

    goto :goto_a
.end method

.method public static parseAndPack(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "textList"

    .prologue
    .line 332
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .registers 6
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 307
    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_8

    .line 308
    :cond_6
    const/4 v2, 0x0

    .line 318
    :goto_7
    return-object v2

    .line 310
    :cond_8
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 311
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 313
    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_33

    .line 315
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 318
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .registers 6
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 269
    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_8

    .line 270
    :cond_6
    const/4 v2, 0x0

    .line 281
    :goto_7
    return-object v2

    .line 272
    :cond_8
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 273
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 275
    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_33

    .line 278
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 281
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static toString([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;
    .registers 2
    .parameter "addresses"

    .prologue
    .line 221
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "addresses"
    .parameter "separator"

    .prologue
    const/4 v4, 0x0

    .line 232
    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_8

    .line 233
    :cond_6
    const/4 v2, 0x0

    .line 244
    :goto_7
    return-object v2

    .line 235
    :cond_8
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 236
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 238
    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_35

    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 244
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;
    .registers 11
    .parameter "addressList"

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 360
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    .line 361
    :cond_a
    sget-object v6, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    .line 394
    :goto_c
    return-object v6

    .line 363
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 365
    .local v3, length:I
    const/4 v5, 0x0

    .line 366
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 373
    .local v4, pairEndIndex:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 375
    .local v1, addressEndIndex:I
    :goto_1c
    if-ge v5, v3, :cond_50

    .line 376
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 377
    if-ne v4, v8, :cond_26

    .line 378
    move v4, v3

    .line 381
    :cond_26
    if-eq v1, v8, :cond_2a

    if-gt v4, v1, :cond_3a

    .line 384
    :cond_2a
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    :goto_34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v5, v4, 0x1

    .line 393
    goto :goto_1c

    .line 386
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_3a
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .restart local v0       #address:Lcom/android/emailcommon/mail/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_34

    .line 394
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_50
    sget-object v6, Lcom/android/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/emailcommon/mail/Address;

    goto :goto_c
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;
    .registers 3
    .parameter "packedList"

    .prologue
    .line 341
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 342
    .local v0, array:[Lcom/android/emailcommon/mail/Address;
    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static unpackToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "packedList"

    .prologue
    .line 325
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 181
    instance-of v0, p1, Lcom/android/emailcommon/mail/Address;

    if-eqz v0, :cond_13

    .line 190
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/emailcommon/mail/Address;

    .end local p1
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    :goto_12
    return v0

    .restart local p1
    :cond_13
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public pack()Ljava/lang/String;
    .registers 5

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, personal:Ljava/lang/String;
    if-nez v1, :cond_b

    .line 448
    .end local v0           #address:Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0       #address:Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 82
    sget-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .registers 4
    .parameter "personal"

    .prologue
    .line 101
    if-eqz p1, :cond_25

    .line 102
    sget-object v0, Lcom/android/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    sget-object v0, Lcom/android/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 106
    const/4 p1, 0x0

    .line 109
    :cond_25
    iput-object p1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 292
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 294
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_e
.end method

.method public toHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 204
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    const-string v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_3d
    return-object v0

    .line 207
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 210
    :cond_60
    iget-object v0, p0, Lcom/android/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_3d
.end method
