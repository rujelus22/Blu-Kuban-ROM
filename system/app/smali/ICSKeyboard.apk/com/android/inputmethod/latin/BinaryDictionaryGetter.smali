.class Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    }
.end annotation


# static fields
.field private static final COMMON_PREFERENCES_NAME:Ljava/lang/String; = "LatinImeDictPrefs"

.field private static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 122
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, relativeDirectoryName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, absoluteDirectoryName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_44

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_44

    .line 128
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not create the directory for locale"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_44
    return-object v0
.end method

.method public static getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "id"
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 150
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;
    .registers 3
    .parameter "context"

    .prologue
    .line 212
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;
    .registers 13
    .parameter "locale"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 224
    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v3

    .line 225
    .local v3, directoryList:[Ljava/io/File;
    if-nez v3, :cond_a

    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 240
    :goto_9
    return-object v6

    .line 226
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, cacheFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v9, v3

    move v8, v7

    :goto_11
    if-lt v8, v9, :cond_1c

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4c

    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    goto :goto_9

    .line 227
    :cond_1c
    aget-object v2, v3, v8

    .line 228
    .local v2, directory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_28

    .line 227
    :cond_24
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_11

    .line 229
    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, dirLocale:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/inputmethod/latin/LocaleUtils;->getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/inputmethod/latin/LocaleUtils;->isMatch(I)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 232
    .local v5, wordLists:[Ljava/io/File;
    if-eqz v5, :cond_24

    .line 233
    array-length v10, v5

    move v6, v7

    :goto_42
    if-ge v6, v10, :cond_24

    aget-object v4, v5, v6

    .line 234
    .local v4, wordList:Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 240
    .end local v1           #dirLocale:Ljava/lang/String;
    .end local v2           #directory:Ljava/io/File;
    .end local v4           #wordList:Ljava/io/File;
    .end local v5           #wordLists:[Ljava/io/File;
    :cond_4c
    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    goto :goto_9
.end method

.method public static getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;I)Ljava/util/List;
    .registers 23
    .parameter "locale"
    .parameter "context"
    .parameter "fallbackResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-static/range {p0 .. p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;

    .line 277
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;

    move-result-object v4

    .line 279
    .local v4, cachedWordLists:[Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getMainDictId(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 281
    .local v13, mainDictId:Ljava/lang/String;
    new-instance v5, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;-><init>(Landroid/content/Context;)V

    .line 283
    .local v5, dictPackSettings:Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    const/4 v10, 0x0

    .line 284
    .local v10, foundMainDict:Z
    const/4 v9, 0x0

    .line 285
    .local v9, foundAnySoftDict:Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v8, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    array-length v0, v4

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_26
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_51

    .line 300
    invoke-static/range {p1 .. p1}, LDictionaryPackage/DicatinaryPackage;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 302
    .local v3, DictionaryBuilderASK:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 304
    .local v14, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_35
    if-lt v11, v14, :cond_87

    .line 326
    :goto_37
    if-nez v9, :cond_50

    if-nez v10, :cond_50

    invoke-virtual {v5, v13}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_50

    .line 327
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->loadFallbackResource(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v7

    .line 329
    .local v7, fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v7, :cond_50

    .line 330
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v7           #fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    :cond_50
    return-object v8

    .line 287
    .end local v3           #DictionaryBuilderASK:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    .end local v11           #i:I
    .end local v14           #size:I
    :cond_51
    aget-object v6, v4, v16

    .line 288
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 289
    .local v15, wordListId:Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_62

    .line 290
    const/4 v10, 0x1

    .line 292
    :cond_62
    invoke-virtual {v5, v15}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6b

    .line 287
    :goto_68
    add-int/lit8 v16, v16, 0x1

    goto :goto_26

    .line 293
    :cond_6b
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v18

    if-eqz v18, :cond_7f

    .line 294
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 296
    :cond_7f
    sget-object v18, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    const-string v19, "Found a cached dictionary file but cannot read it"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 306
    .end local v6           #f:Ljava/io/File;
    .end local v15           #wordListId:Ljava/lang/String;
    .restart local v3       #DictionaryBuilderASK:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    .restart local v11       #i:I
    .restart local v14       #size:I
    :cond_87
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, lang:Ljava/lang/String;
    const-string v16, "he"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_97

    const-string v12, "iw"

    .line 308
    :cond_97
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface/range {v16 .. v16}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_cf

    .line 312
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface/range {v16 .. v16}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getPackageContext()Landroid/content/Context;

    move-result-object v17

    .line 313
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface/range {v16 .. v16}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getDictionaryResourceId()I

    move-result v16

    .line 312
    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->loadAnySoftDictioarny(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v7

    .line 314
    .restart local v7       #fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v7, :cond_cf

    .line 315
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v9, 0x1

    .line 317
    goto/16 :goto_37

    .line 304
    .end local v7           #fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    :cond_cf
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_35
.end method

.method private static getMainDictId(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dicts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "fname"

    .prologue
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_11

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 99
    :cond_11
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 100
    .local v0, codePoint:I
    const/16 v4, 0x25

    if-eq v4, v0, :cond_1f

    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 98
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 103
    :cond_1f
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, encodedCodePoint:I
    add-int/lit8 v2, v2, 0x6

    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method private static isFileNameCharacter(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x1

    .line 63
    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 66
    :cond_9
    :goto_9
    return v0

    .line 64
    :cond_a
    const/16 v1, 0x41

    if-lt p0, v1, :cond_12

    const/16 v1, 0x5a

    if-le p0, v1, :cond_9

    .line 65
    :cond_12
    const/16 v1, 0x61

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x7a

    if-le p0, v1, :cond_9

    .line 66
    :cond_1a
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static loadAnySoftDictioarny(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .registers 10
    .parameter "context"
    .parameter "fallbackResId"
    .parameter "locale"

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 343
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 345
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_20

    .line 346
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v2, 0x0

    .line 350
    :goto_1f
    return-object v2

    .line 351
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 350
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v2

    goto :goto_1f
.end method

.method private static loadFallbackResource(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .registers 11
    .parameter "context"
    .parameter "fallbackResId"
    .parameter "locale"

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 161
    .local v2, savedLocale:Ljava/util/Locale;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 162
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 164
    if-nez v0, :cond_27

    .line 165
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v3, 0x0

    .line 169
    :goto_26
    return-object v3

    .line 170
    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 169
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v3

    goto :goto_26
.end method

.method private static replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "name"

    .prologue
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_11

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 82
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 83
    .local v0, codePoint:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->isFileNameCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 81
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 87
    :cond_21
    const/4 v3, 0x0

    const-string v4, "%%%1$06x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method
