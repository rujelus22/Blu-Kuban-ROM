.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field public static final APPROX_MAX_WORD_LENGTH:I = 0x20

.field public static final BIGRAM_MULTIPLIER_MAX:D = 1.5

.field public static final BIGRAM_MULTIPLIER_MIN:D = 1.2

.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_FULL_BIGRAM:I = 0x3

.field public static final CORRECTION_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DICT_KEY_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final DICT_KEY_MAIN:Ljava/lang/String; = "main"

.field public static final DICT_KEY_USER:Ljava/lang/String; = "user"

.field public static final DICT_KEY_USER_BIGRAM:Ljava/lang/String; = "user_bigram"

.field public static final DICT_KEY_USER_UNIGRAM:Ljava/lang/String; = "user_unigram"

.field public static final DICT_KEY_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final DIC_CONTACTS:I = 0x4

.field public static final DIC_MAIN:I = 0x1

.field public static final DIC_TYPE_LAST_ID:I = 0x6

.field public static final DIC_USER:I = 0x2

.field public static final DIC_USER_BIGRAM:I = 0x5

.field public static final DIC_USER_TYPED:I = 0x0

.field public static final DIC_USER_UNIGRAM:I = 0x3

.field public static final DIC_WHITELIST:I = 0x6

.field public static final MAXIMUM_BIGRAM_FREQUENCY:I = 0x7f

.field private static final PREF_MAX_BIGRAMS:I = 0x3c

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

.field private mAutoCorrectionThreshold:D

.field private final mBigramDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mBigramScores:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsDict:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mCorrectionMode:I

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mMainDict:Lcom/android/inputmethod/latin/Dictionary;

.field private mPrefMaxSuggestions:I

.field private mScores:[I

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedWord:Ljava/lang/CharSequence;

.field private final mUnigramDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Suggest;->TAG:Ljava/lang/String;

    .line 85
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Locale;)V
    .registers 5
    .parameter "context"
    .parameter "dictionaryResId"
    .parameter "locale"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    .line 95
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 100
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 101
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->initAsynchronously(Landroid/content/Context;ILjava/util/Locale;)V

    .line 115
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;Ljava/util/Locale;)V
    .registers 11
    .parameter "context"
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "flagArray"
    .parameter "locale"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    .line 95
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 100
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 101
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 120
    const/4 v0, 0x0

    invoke-static/range {p1 .. p7}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/Dictionary;

    move-result-object v1

    invoke-direct {p0, v0, v1, p8}, Lcom/android/inputmethod/latin/Suggest;->initSynchronously(Landroid/content/Context;Lcom/android/inputmethod/latin/Dictionary;Ljava/util/Locale;)V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/Suggest;Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/Suggest;Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method private addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 6
    .parameter
    .parameter "key"
    .parameter "dict"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, dictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    if-nez p3, :cond_11

    .line 151
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    move-object v0, v1

    .line 153
    .local v0, oldDict:Lcom/android/inputmethod/latin/Dictionary;
    :goto_9
    if-eqz v0, :cond_10

    if-eq p3, v0, :cond_10

    .line 154
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 156
    :cond_10
    return-void

    .line 152
    .end local v0           #oldDict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_11
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    move-object v0, v1

    goto :goto_9
.end method

.method private capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "all"
    .parameter "first"
    .parameter "word"

    .prologue
    const/4 v3, 0x1

    .line 265
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    :cond_b
    move-object v0, p3

    .line 277
    :cond_c
    :goto_c
    return-object v0

    .line 266
    :cond_d
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 267
    .local v1, wordLength:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/StringBuilderPool;->getStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_27

    .line 270
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 271
    :cond_27
    if-eqz p2, :cond_c

    .line 272
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    if-le v1, v3, :cond_c

    .line 274
    invoke-interface {p3, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .registers 9
    .parameter
    .parameter "prefMaxSuggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/StringBuilderPool;->getSize()I

    move-result v2

    .line 524
    .local v2, poolSize:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 525
    .local v1, garbageSize:I
    :goto_8
    if-ge v2, p2, :cond_c

    if-gtz v1, :cond_28

    .line 533
    :cond_c
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_24

    .line 534
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String pool got too big: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 537
    return-void

    .line 526
    :cond_28
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 527
    .local v0, garbage:Ljava/lang/CharSequence;
    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3b

    .line 528
    check-cast v0, Ljava/lang/StringBuilder;

    .end local v0           #garbage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 529
    add-int/lit8 v2, v2, 0x1

    .line 531
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8
.end method

.method private initAsynchronously(Landroid/content/Context;ILjava/util/Locale;)V
    .registers 4
    .parameter "context"
    .parameter "dictionaryResId"
    .parameter "locale"

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V

    .line 137
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/latin/Suggest;->initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V

    .line 138
    return-void
.end method

.method private initSynchronously(Landroid/content/Context;Lcom/android/inputmethod/latin/Dictionary;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "mainDict"
    .parameter "locale"

    .prologue
    .line 142
    iput-object p2, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "main"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "main"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 145
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/latin/Suggest;->initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V

    .line 146
    return-void
.end method

.method private initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 125
    new-instance v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-direct {v0, p1, p2}, Lcom/android/inputmethod/latin/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "whitelist"

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 127
    new-instance v0, Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/AutoCorrection;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    .line 128
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/StringBuilderPool;->ensureCapacity(II)V

    .line 129
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .registers 10
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 505
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, bigramSuggestSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-lt v2, v0, :cond_b

    .line 519
    const/4 v2, -0x1

    .end local v2           #i:I
    :cond_a
    return v2

    .line 507
    .restart local v2       #i:I
    :cond_b
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, p3, :cond_1f

    .line 508
    const/4 v1, 0x1

    .line 509
    .local v1, chk:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1b
    if-lt v3, p3, :cond_22

    .line 515
    :goto_1d
    if-nez v1, :cond_a

    .line 506
    .end local v1           #chk:Z
    .end local v3           #j:I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 510
    .restart local v1       #chk:Z
    .restart local v3       #j:I
    :cond_22
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_36

    .line 511
    const/4 v1, 0x0

    .line 512
    goto :goto_1d

    .line 509
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method


# virtual methods
.method protected addBigramToSuggestions(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "bigram"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/StringBuilderPool;->getStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .registers 25
    .parameter "word"
    .parameter "offset"
    .parameter "length"
    .parameter "score"
    .parameter "dicTypeId"
    .parameter "dataType"

    .prologue
    .line 411
    move-object/from16 v5, p6

    .line 415
    .local v5, dataTypeForLog:Lcom/android/inputmethod/latin/Dictionary$DataType;
    sget-object v14, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_4c

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 417
    .local v13, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 418
    .local v12, sortedScores:[I
    const/16 v10, 0x3c

    .line 425
    .local v10, prefMaxSuggestions:I
    :goto_12
    const/4 v9, 0x0

    .line 428
    .local v9, pos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/Suggest;->mTypedWord:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z

    move-result v14

    if-eqz v14, :cond_59

    .line 431
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_48

    .line 432
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, currentHighestWord:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v4, v0, v1, v2}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 438
    const/4 v14, 0x0

    aget v14, v12, v14

    move/from16 v0, p4

    if-gt v0, v14, :cond_48

    .line 439
    const/4 v9, 0x1

    .line 472
    .end local v4           #currentHighestWord:Ljava/lang/String;
    :cond_48
    :goto_48
    if-lt v9, v10, :cond_b7

    .line 473
    const/4 v14, 0x1

    .line 499
    :goto_4b
    return v14

    .line 420
    .end local v9           #pos:I
    .end local v10           #prefMaxSuggestions:I
    .end local v12           #sortedScores:[I
    .end local v13           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_4c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 421
    .restart local v13       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 422
    .restart local v12       #sortedScores:[I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .restart local v10       #prefMaxSuggestions:I
    goto :goto_12

    .line 443
    .restart local v9       #pos:I
    :cond_59
    sget-object v14, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_8e

    .line 445
    invoke-direct/range {p0 .. p3}, Lcom/android/inputmethod/latin/Suggest;->searchBigramSuggestion([CII)I

    move-result v3

    .line 446
    .local v3, bigramSuggestion:I
    if-ltz v3, :cond_8e

    .line 447
    sget-object v5, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    aget v14, v14, v3

    int-to-double v14, v14

    .line 450
    const-wide v16, 0x405fc00000000000L

    .line 449
    div-double v14, v14, v16

    .line 451
    const-wide v16, 0x3fd3333333333334L

    .line 449
    mul-double v14, v14, v16

    .line 452
    const-wide v16, 0x3ff3333333333333L

    .line 449
    add-double v7, v14, v16

    .line 458
    .local v7, multiplier:D
    move/from16 v0, p4

    int-to-double v14, v0

    mul-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v0, v14

    move/from16 p4, v0

    .line 463
    .end local v3           #bigramSuggestion:I
    .end local v7           #multiplier:D
    :cond_8e
    add-int/lit8 v14, v10, -0x1

    aget v14, v12, v14

    move/from16 v0, p4

    if-lt v14, v0, :cond_b4

    const/4 v14, 0x1

    goto :goto_4b

    .line 465
    :cond_98
    aget v14, v12, v9

    move/from16 v0, p4

    if-lt v14, v0, :cond_48

    .line 466
    aget v14, v12, v9

    move/from16 v0, p4

    if-ne v14, v0, :cond_b2

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move/from16 v0, p3

    if-lt v0, v14, :cond_48

    .line 469
    :cond_b2
    add-int/lit8 v9, v9, 0x1

    .line 464
    :cond_b4
    if-lt v9, v10, :cond_98

    goto :goto_48

    .line 476
    :cond_b7
    add-int/lit8 v14, v9, 0x1

    sub-int v15, v10, v9

    add-int/lit8 v15, v15, -0x1

    invoke-static {v12, v9, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    aput p4, v12, v9

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v14

    invoke-static {v14}, Lcom/android/inputmethod/latin/StringBuilderPool;->getStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 480
    .local v11, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    if-eqz v14, :cond_fd

    .line 481
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_e2
    :goto_e2
    invoke-virtual {v13, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 491
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v10, :cond_125

    .line 492
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 493
    .local v6, garbage:Ljava/lang/CharSequence;
    instance-of v14, v6, Ljava/lang/StringBuilder;

    if-eqz v14, :cond_fa

    .line 494
    check-cast v6, Ljava/lang/StringBuilder;

    .end local v6           #garbage:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 499
    :cond_fa
    :goto_fa
    const/4 v14, 0x1

    goto/16 :goto_4b

    .line 482
    :cond_fd
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    if-eqz v14, :cond_11b

    .line 483
    aget-char v14, p1, p2

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    const/4 v14, 0x1

    move/from16 v0, p3

    if-le v0, v14, :cond_e2

    .line 485
    add-int/lit8 v14, p2, 0x1

    add-int/lit8 v15, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v14, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 488
    :cond_11b
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 497
    :cond_125
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p5

    invoke-static {v14, v0, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    goto :goto_fa
.end method

.method public close()V
    .registers 5

    .prologue
    .line 540
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 541
    .local v0, dictionaries:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/inputmethod/latin/Dictionary;>;"
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 542
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 543
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_25

    .line 546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 547
    return-void

    .line 543
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    .line 544
    .local v1, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_1b
.end method

.method public getApproxMaxWordLength()I
    .registers 2

    .prologue
    .line 196
    const/16 v0, 0x20

    return v0
.end method

.method public getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDict:Lcom/android/inputmethod/latin/ContactsDictionary;

    return-object v0
.end method

.method public getCorrectionMode()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 35
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"

    .prologue
    .line 295
    invoke-static/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AutoCorrection;->init()V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, typedWord:Ljava/lang/String;
    if-eqz v9, :cond_3b

    .line 306
    const/4 v4, 0x0

    .line 307
    sget-object v5, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 306
    invoke-static {v9, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    .line 309
    :cond_3b
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/inputmethod/latin/Suggest;->mTypedWord:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1c9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_54

    .line 312
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c9

    .line 314
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 317
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b9

    .line 318
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 319
    .local v24, lowerPrevWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v4, :cond_89

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 320
    move-object/from16 p2, v24

    .line 322
    :cond_89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_95
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_15b

    .line 325
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 328
    .local v22, insertCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_b3
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_16e

    .line 361
    .end local v21           #i:I
    .end local v22           #insertCount:I
    .end local v24           #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_b9
    if-nez v9, :cond_214

    const/16 v30, 0x0

    .line 363
    .local v30, typedWordString:Ljava/lang/String;
    :goto_bd
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    .line 364
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/latin/WhitelistDictionary;->getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/inputmethod/latin/Suggest;->capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 366
    .local v13, whitelistedWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 367
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move-object/from16 v6, p1

    .line 366
    invoke-virtual/range {v4 .. v13}, Lcom/android/inputmethod/latin/AutoCorrection;->updateAutoCorrectionStatus(Ljava/util/Map;Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;[ILjava/lang/CharSequence;DILjava/lang/CharSequence;)V

    .line 370
    if-eqz v13, :cond_fc

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 374
    :cond_fc
    if-eqz v9, :cond_108

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 377
    :cond_108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->removeDupes(Ljava/util/ArrayList;)V

    .line 379
    sget-boolean v4, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    if-eqz v4, :cond_279

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AutoCorrection;->getNormalizedScore()D

    move-result-wide v25

    .line 382
    .local v25, normalizedScore:D
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v28, scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const-string v5, "+"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_12f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    array-length v4, v4

    move/from16 v0, v21

    if-lt v0, v4, :cond_21a

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    array-length v0, v4

    move/from16 v21, v0

    :goto_13f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-lt v0, v4, :cond_268

    .line 399
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v4

    .line 401
    .end local v21           #i:I
    .end local v25           #normalizedScore:D
    .end local v28           #scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :goto_15a
    return-object v4

    .line 322
    .end local v13           #whitelistedWord:Ljava/lang/CharSequence;
    .end local v30           #typedWordString:Ljava/lang/String;
    .restart local v24       #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_15b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/inputmethod/latin/Dictionary;

    .line 323
    .local v20, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto/16 :goto_95

    .line 329
    .end local v20           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .restart local v21       #i:I
    .restart local v22       #insertCount:I
    :cond_16e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/Suggest;->addBigramToSuggestions(Ljava/lang/CharSequence;)V

    .line 328
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b3

    .line 334
    .end local v21           #i:I
    .end local v22           #insertCount:I
    :cond_183
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 336
    .local v18, currentChar:C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    .line 337
    .local v19, currentCharUpper:C
    const/16 v17, 0x0

    .line 338
    .local v17, count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 339
    .local v16, bigramSuggestionSize:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_198
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_b9

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 341
    .local v14, bigramSuggestion:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 342
    .local v15, bigramSuggestionFirstChar:C
    move/from16 v0, v18

    if-eq v15, v0, :cond_1b7

    .line 343
    move/from16 v0, v19

    if-ne v15, v0, :cond_1c6

    .line 344
    :cond_1b7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/inputmethod/latin/Suggest;->addBigramToSuggestions(Ljava/lang/CharSequence;)V

    .line 345
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move/from16 v0, v17

    if-gt v0, v4, :cond_b9

    .line 339
    :cond_1c6
    add-int/lit8 v21, v21, 0x1

    goto :goto_198

    .line 351
    .end local v14           #bigramSuggestion:Ljava/lang/CharSequence;
    .end local v15           #bigramSuggestionFirstChar:C
    .end local v16           #bigramSuggestionSize:I
    .end local v17           #count:I
    .end local v18           #currentChar:C
    .end local v19           #currentCharUpper:C
    .end local v21           #i:I
    .end local v24           #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_1c9
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_b9

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1dc
    :goto_1dc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 355
    .local v23, key:Ljava/lang/String;
    const-string v5, "user_unigram"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1dc

    const-string v5, "whitelist"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1dc

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/inputmethod/latin/Dictionary;

    .line 358
    .restart local v20       #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_1dc

    .line 361
    .end local v20           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .end local v23           #key:Ljava/lang/String;
    :cond_214
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_bd

    .line 385
    .restart local v13       #whitelistedWord:Ljava/lang/CharSequence;
    .restart local v21       #i:I
    .restart local v25       #normalizedScore:D
    .restart local v28       #scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .restart local v30       #typedWordString:Ljava/lang/String;
    :cond_21a
    const-wide/16 v4, 0x0

    cmpl-double v4, v25, v4

    if-lez v4, :cond_250

    .line 386
    const-string v4, "%d (%4.2f)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    aget v7, v7, v21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 387
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    .line 386
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 389
    .local v29, scoreThreshold:Ljava/lang/String;
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v4, v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    .line 388
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-wide/16 v25, 0x0

    .line 384
    .end local v29           #scoreThreshold:Ljava/lang/String;
    :goto_24c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_12f

    .line 392
    :cond_250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    aget v4, v4, v21

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 393
    .local v27, score:Ljava/lang/String;
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-direct {v4, v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24c

    .line 397
    .end local v27           #score:Ljava/lang/String;
    :cond_268
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const-string v5, "--"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_13f

    .line 401
    .end local v21           #i:I
    .end local v25           #normalizedScore:D
    .end local v28           #scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :cond_279
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v4

    goto/16 :goto_15a
.end method

.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords;
    .registers 5
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"

    .prologue
    .line 260
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public getUnigramDictionaries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method public hasAutoCorrection()Z
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoCorrection;->hasAutoCorrection()Z

    move-result v0

    return v0
.end method

.method public hasMainDictionary()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAggressiveAutoCorrectionMode()Z
    .registers 5

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V
    .registers 10
    .parameter "context"
    .parameter "dictionaryResId"
    .parameter "locale"

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 161
    new-instance v0, Lcom/android/inputmethod/latin/Suggest$1;

    const-string v2, "InitializeBinaryDictionary"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest$1;-><init>(Lcom/android/inputmethod/latin/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;I)V

    .line 170
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest$1;->start()V

    .line 171
    return-void
.end method

.method public setAutoCorrectionThreshold(D)V
    .registers 3
    .parameter "threshold"

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    .line 228
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V
    .registers 4
    .parameter "contactsDictionary"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDict:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "contacts"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 215
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "contacts"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 216
    return-void
.end method

.method public setCorrectionMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 179
    return-void
.end method

.method public setMaxSuggestions(I)V
    .registers 4
    .parameter "maxSuggestions"

    .prologue
    .line 241
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x64

    if-le p1, v0, :cond_f

    .line 242
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSuggestions must be between 1 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_f
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 245
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 246
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 247
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 248
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/StringBuilderPool;->ensureCapacity(II)V

    .line 249
    return-void
.end method

.method public setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 4
    .parameter "userBigramDictionary"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "user_bigram"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 224
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 4
    .parameter "userDictionary"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "user"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 205
    return-void
.end method

.method public setUserUnigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 4
    .parameter "userUnigramDictionary"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "user_unigram"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 220
    return-void
.end method
