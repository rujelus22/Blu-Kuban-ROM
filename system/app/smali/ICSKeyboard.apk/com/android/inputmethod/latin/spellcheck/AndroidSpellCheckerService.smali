.class public Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.super Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;,
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    }
.end annotation


# static fields
.field private static final CAPITALIZE_ALL:I = 0x2

.field private static final CAPITALIZE_FIRST:I = 0x1

.field private static final CAPITALIZE_NONE:I = 0x0

.field private static final DBG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final IN_DICT_EMPTY_SUGGESTIONS:Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo; = null

.field private static final NOT_IN_DICT_EMPTY_SUGGESTIONS:Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo; = null

.field private static final POOL_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;


# instance fields
.field private mDictionaryPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;",
            ">;"
        }
    .end annotation
.end field

.field private mLikelyThreshold:D

.field private mSuggestionThreshold:D

.field private mUserDictionaries:Ljava/util/Map;
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

.field private mWhitelistDictionaries:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    .line 63
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    sget-object v1, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->NOT_IN_DICT_EMPTY_SUGGESTIONS:Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    .line 67
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    const/4 v1, 0x1

    .line 68
    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 66
    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->IN_DICT_EMPTY_SUGGESTIONS:Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    .line 75
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    .line 76
    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 75
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->resizeArray(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/latin/Flag;

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;

    .line 77
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;

    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    array-length v1, v1

    .line 78
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_USE_FULL_EDIT_DISTANCE:Lcom/android/inputmethod/latin/Flag;

    .line 77
    aput-object v2, v0, v1

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;-><init>()V

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->NOT_IN_DICT_EMPTY_SUGGESTIONS:Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    return-object v0
.end method

.method static synthetic access$4()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->IN_DICT_EMPTY_SUGGESTIONS:Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D
    .registers 3
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:D

    return-wide v0
.end method

.method static synthetic access$6(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLikelyThreshold:D

    return-wide v0
.end method

.method static synthetic access$7(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->resizeArrayRange(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;)I
    .registers 2
    .parameter

    .prologue
    .line 306
    invoke-static {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getCapitalizationType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getCapitalizationType(Ljava/lang/String;)I
    .registers 7
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 321
    :cond_c
    :goto_c
    return v3

    .line 310
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 311
    .local v2, len:I
    const/4 v0, 0x1

    .line 312
    .local v0, capsCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_17
    if-lt v1, v2, :cond_1d

    .line 320
    :cond_19
    if-ne v4, v0, :cond_30

    move v3, v4

    goto :goto_c

    .line 313
    :cond_1d
    if-eq v4, v0, :cond_21

    if-ne v1, v0, :cond_19

    .line 314
    :cond_21
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    add-int/lit8 v0, v0, 0x1

    .line 312
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 321
    :cond_30
    if-ne v2, v0, :cond_c

    const/4 v3, 0x2

    goto :goto_c
.end method

.method private getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    .registers 5
    .parameter "locale"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 274
    .local v1, pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    if-nez v1, :cond_19

    .line 275
    invoke-static {p1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 276
    .local v0, localeObject:Ljava/util/Locale;
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .end local v1           #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;-><init>(ILcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/util/Locale;)V

    .line 277
    .restart local v1       #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v0           #localeObject:Ljava/util/Locale;
    :cond_19
    return-object v1
.end method

.method private static resizeArray(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .parameter "oldArray"
    .parameter "newSize"

    .prologue
    const/4 v5, 0x0

    .line 482
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 483
    .local v2, oldSize:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 484
    .local v0, elementType:Ljava/lang/Class;
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 486
    .local v1, newArray:Ljava/lang/Object;
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 487
    .local v3, preserveLength:I
    if-lez v3, :cond_1a

    .line 488
    invoke-static {p0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    :cond_1a
    return-object v1
.end method

.method private static resizeArrayRange(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 8
    .parameter "oldArray"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 493
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 494
    .local v2, oldSize:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 496
    .local v0, elementType:Ljava/lang/Class;
    sub-int v4, p2, p1

    .line 495
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 497
    .local v1, newArray:Ljava/lang/Object;
    sub-int v4, p2, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 498
    .local v3, preserveLength:I
    if-lez v3, :cond_1e

    .line 499
    const/4 v4, 0x0

    invoke-static {p0, p1, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    :cond_1e
    return-object v1
.end method


# virtual methods
.method public createDictAndProximity(Ljava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .registers 10
    .parameter "locale"

    .prologue
    .line 283
    invoke-static {}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createSpellCheckerProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v3

    .line 284
    .local v3, proximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 285
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v1

    .line 288
    .local v1, fallbackResourceId:I
    sget-object v7, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;

    .line 287
    invoke-static {p0, p1, v1, v7}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    .line 289
    .local v0, dictionaryCollection:Lcom/android/inputmethod/latin/DictionaryCollection;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, localeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/Dictionary;

    .line 291
    .local v5, userDictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-nez v5, :cond_2b

    .line 292
    new-instance v5, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;

    .end local v5           #userDictionary:Lcom/android/inputmethod/latin/Dictionary;
    const/4 v7, 0x1

    invoke-direct {v5, p0, v2, v7}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 293
    .restart local v5       #userDictionary:Lcom/android/inputmethod/latin/Dictionary;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_2b
    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 296
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/Dictionary;

    .line 297
    .local v6, whitelistDictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-nez v6, :cond_42

    .line 298
    new-instance v6, Lcom/android/inputmethod/latin/WhitelistDictionary;

    .end local v6           #whitelistDictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-direct {v6, p0, p1}, Lcom/android/inputmethod/latin/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 299
    .restart local v6       #whitelistDictionary:Lcom/android/inputmethod/latin/Dictionary;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_42
    invoke-virtual {v0, v6}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 302
    new-instance v7, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    invoke-direct {v7, v0, v3}, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;-><init>(Lcom/android/inputmethod/latin/Dictionary;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    return-object v7
.end method

.method public createSession()Lcom/android/inputmethod/latin/spellcheck/Session;
    .registers 2

    .prologue
    .line 101
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 94
    .line 95
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 94
    iput-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:D

    .line 97
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 96
    iput-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLikelyThreshold:D

    .line 98
    return-void
.end method

.method public onGetSuggestions(Lcom/android/inputmethod/latin/spellcheck/TextInfo;I)Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    .registers 4
    .parameter "textInfo"
    .parameter "suggestionsLimit"

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 255
    .local v1, oldPools:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 256
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 257
    .local v2, oldUserDictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 258
    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 259
    .local v3, oldWhitelistDictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 260
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_53

    .line 263
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 266
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_67

    .line 269
    const/4 v5, 0x0

    return v5

    .line 260
    :cond_53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 261
    .local v4, pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->close()V

    goto :goto_2f

    .line 263
    .end local v4           #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    :cond_5d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 264
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_3d

    .line 266
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 267
    .restart local v0       #dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_4b
.end method
