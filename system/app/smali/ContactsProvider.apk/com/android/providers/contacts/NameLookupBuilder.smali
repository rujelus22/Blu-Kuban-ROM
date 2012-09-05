.class public abstract Lcom/android/providers/contacts/NameLookupBuilder;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"


# static fields
.field protected static final KOREAN_JAUM_CONVERT_MAP:[I


# instance fields
.field private mNames:[Ljava/lang/String;

.field private mNicknameClusters:[[Ljava/lang/String;

.field private mOriginNames:[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/providers/contacts/NameSplitter;)V
    .registers 4
    .parameter "splitter"

    .prologue
    const/16 v1, 0xa

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 38
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    .line 39
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 78
    return-void
.end method

.method private appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "builder"
    .parameter "name"

    .prologue
    const/16 v8, 0x3131

    const v7, 0xac00

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, position:I
    const/4 v1, 0x0

    .line 211
    .local v1, consonantLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 212
    .local v4, stringLength:I
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 214
    :goto_11
    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 215
    .local v0, character:I
    const/16 v5, 0x20

    if-eq v0, v5, :cond_23

    const/16 v5, 0x2c

    if-eq v0, v5, :cond_23

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_35

    .line 248
    :cond_23
    :goto_23
    if-lt v3, v4, :cond_6c

    .line 255
    :cond_25
    :goto_25
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 221
    :cond_35
    const/16 v5, 0x1100

    if-lt v0, v5, :cond_23

    const/16 v5, 0x1112

    if-le v0, v5, :cond_3f

    if-lt v0, v8, :cond_23

    :cond_3f
    const/16 v5, 0x314e

    if-le v0, v5, :cond_45

    if-lt v0, v7, :cond_23

    :cond_45
    const v5, 0xd7a3

    if-gt v0, v5, :cond_23

    .line 228
    if-lt v0, v7, :cond_5a

    .line 232
    sub-int v5, v0, v7

    div-int/lit16 v5, v5, 0x24c

    add-int/lit16 v0, v5, 0x1100

    .line 246
    :cond_52
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 233
    :cond_5a
    if-lt v0, v8, :cond_52

    .line 236
    add-int/lit16 v5, v0, -0x3131

    sget-object v6, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    array-length v6, v6

    if-ge v5, v6, :cond_25

    .line 240
    sget-object v5, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v6, v0, -0x3131

    aget v0, v5, v6

    .line 241
    if-nez v0, :cond_52

    goto :goto_25

    :cond_6c
    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_11
.end method

.method private appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .registers 8
    .parameter "builder"
    .parameter "fullName"
    .parameter "fullNameStyle"

    .prologue
    .line 178
    const/4 v2, 0x5

    if-ne p3, v2, :cond_30

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, consonants:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_22

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 192
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 199
    :cond_25
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 201
    .end local v0           #consonants:Ljava/lang/String;
    .end local v1           #i:I
    :cond_30
    return-void
.end method

.method private appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .registers 6
    .parameter "builder"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 367
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v0

    .line 369
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_1a

    .line 370
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    goto :goto_a

    .line 374
    :cond_1a
    return-void
.end method

.method private insertCollationKey(JJI)V
    .registers 14
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    if-ge v7, p5, :cond_15

    .line 335
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 338
    :cond_15
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 340
    return-void
.end method

.method private insertNameVariant(JJIIZ)V
    .registers 16
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"
    .parameter "lookupType"
    .parameter "buildCollationKey"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 311
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    if-ge v7, p5, :cond_1e

    .line 312
    if-eqz v7, :cond_12

    .line 313
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_12
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 318
    :cond_1e
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 320
    if-eqz p7, :cond_30

    .line 321
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 323
    :cond_30
    return-void
.end method

.method private insertNameVariants(JJIIZZ)V
    .registers 23
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "initiallyExact"
    .parameter "buildCollationKey"

    .prologue
    .line 277
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_17

    .line 278
    if-eqz p7, :cond_15

    const/4 v8, 0x0

    :goto_9
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 302
    :cond_14
    return-void

    .line 278
    :cond_15
    const/4 v8, 0x1

    goto :goto_9

    .line 286
    :cond_17
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v12, v2, p5

    .line 287
    .local v12, firstToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aget-object v11, v2, p5

    .line 288
    .local v11, firstString:Ljava/lang/String;
    move/from16 v13, p5

    .local v13, i:I
    :goto_21
    move/from16 v0, p6

    if-ge v13, v0, :cond_14

    .line 289
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v13

    aput-object v3, v2, p5

    .line 290
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v12, v2, v13

    .line 291
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aget-object v3, v3, v13

    aput-object v3, v2, p5

    .line 292
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aput-object v11, v2, v13

    .line 294
    add-int/lit8 v7, p5, 0x1

    if-eqz p7, :cond_6c

    move/from16 v0, p5

    if-ne v13, v0, :cond_6c

    const/4 v9, 0x1

    :goto_46
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 297
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, p5

    aput-object v3, v2, v13

    .line 298
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v12, v2, p5

    .line 299
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aget-object v3, v3, p5

    aput-object v3, v2, v13

    .line 300
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aput-object v11, v2, p5

    .line 288
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    .line 294
    :cond_6c
    const/4 v9, 0x0

    goto :goto_46
.end method

.method private insertNicknamePermutations(JJII)V
    .registers 21
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "tokenCount"

    .prologue
    .line 348
    move/from16 v11, p5

    .local v11, i:I
    :goto_2
    move/from16 v0, p6

    if-ge v11, v0, :cond_3b

    .line 349
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    aget-object v10, v1, v11

    .line 350
    .local v10, clusters:[Ljava/lang/String;
    if-eqz v10, :cond_38

    .line 351
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v13, v1, v11

    .line 352
    .local v13, token:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_11
    array-length v1, v10

    if-ge v12, v1, :cond_34

    .line 353
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v10, v12

    aput-object v2, v1, v11

    .line 356
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 359
    add-int/lit8 v6, v11, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 352
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 361
    :cond_34
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v13, v1, v11

    .line 348
    .end local v12           #j:I
    .end local v13           #token:Ljava/lang/String;
    :cond_38
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 364
    .end local v10           #clusters:[Ljava/lang/String;
    :cond_3b
    return-void
.end method


# virtual methods
.method public appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .registers 8
    .parameter "builder"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, tokenCount:I
    if-nez v1, :cond_b

    .line 171
    :goto_a
    return-void

    .line 165
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_18

    .line 166
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 169
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    goto :goto_a
.end method

.method protected abstract getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract insertNameLookup(JJILjava/lang/String;)V
.end method

.method public insertNameLookup(JJLjava/lang/String;I)V
    .registers 26
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 102
    .local v6, tokenCount:I
    if-nez v6, :cond_11

    .line 157
    :goto_10
    return-void

    .line 110
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    const/16 v17, 0x0

    .local v17, i:I
    :goto_25
    move/from16 v0, v17

    if-ge v0, v6, :cond_3e

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 111
    add-int/lit8 v17, v17, 0x1

    goto :goto_25

    .line 115
    :cond_3e
    const/4 v1, 0x4

    if-le v6, v1, :cond_95

    const/16 v18, 0x1

    .line 116
    .local v18, tooManyTokens:Z
    :goto_43
    if-eqz v18, :cond_a0

    .line 117
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/providers/contacts/NameLookupBuilder$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/providers/contacts/NameLookupBuilder$1;-><init>(Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-static {v1, v2, v6, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/providers/contacts/NameLookupBuilder$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/providers/contacts/NameLookupBuilder$2;-><init>(Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-static {v1, v2, v6, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 139
    .local v16, firstString:Ljava/lang/String;
    const/16 v17, 0x4

    :goto_77
    move/from16 v0, v17

    if-ge v0, v6, :cond_98

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    aget-object v3, v3, v17

    aput-object v3, v1, v2

    .line 142
    const/4 v12, 0x4

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 139
    add-int/lit8 v17, v17, 0x1

    goto :goto_77

    .line 115
    .end local v16           #firstString:Ljava/lang/String;
    .end local v18           #tooManyTokens:Z
    :cond_95
    const/16 v18, 0x0

    goto :goto_43

    .line 145
    .restart local v16       #firstString:Ljava/lang/String;
    .restart local v18       #tooManyTokens:Z
    :cond_98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mOriginNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    .line 147
    const/4 v6, 0x4

    .line 151
    .end local v16           #firstString:Ljava/lang/String;
    :cond_a0
    const/16 v17, 0x0

    :goto_a2
    move/from16 v0, v17

    if-ge v0, v6, :cond_bb

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 151
    add-int/lit8 v17, v17, 0x1

    goto :goto_a2

    .line 155
    :cond_bb
    const/4 v12, 0x0

    if-nez v18, :cond_d7

    const/4 v14, 0x1

    :goto_bf
    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move v13, v6

    invoke-direct/range {v7 .. v15}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 156
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    goto/16 :goto_10

    .line 155
    :cond_d7
    const/4 v14, 0x0

    goto :goto_bf
.end method

.method protected normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
