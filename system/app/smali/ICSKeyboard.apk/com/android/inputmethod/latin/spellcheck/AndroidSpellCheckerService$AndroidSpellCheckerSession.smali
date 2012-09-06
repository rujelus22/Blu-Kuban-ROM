.class Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;
.super Lcom/android/inputmethod/latin/spellcheck/Session;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidSpellCheckerSession"
.end annotation


# instance fields
.field private mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

.field private mLocale:Ljava/util/Locale;

.field private final mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/inputmethod/latin/spellcheck/Session;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    .line 334
    return-void
.end method

.method private shouldFilterOut(Ljava/lang/String;)Z
    .registers 11
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_f

    .line 376
    :cond_e
    :goto_e
    return v5

    .line 357
    :cond_f
    invoke-virtual {p1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 359
    .local v1, firstCodePoint:I
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 360
    const/16 v7, 0x27

    if-ne v7, v1, :cond_e

    .line 363
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 364
    .local v3, length:I
    const/4 v4, 0x0

    .line 365
    .local v4, letterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    if-lt v2, v3, :cond_2d

    .line 376
    mul-int/lit8 v7, v4, 0x4

    mul-int/lit8 v8, v3, 0x3

    if-lt v7, v8, :cond_e

    move v5, v6

    goto :goto_e

    .line 366
    :cond_2d
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 370
    .local v0, codePoint:I
    const/16 v7, 0x40

    if-eq v7, v0, :cond_e

    .line 371
    const/16 v7, 0x2f

    if-eq v7, v0, :cond_e

    .line 372
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_41

    add-int/lit8 v4, v4, 0x1

    .line 365
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_23
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 338
    const-string v0, "en"

    .line 339
    .local v0, localeString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    const-string v2, "en"

    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$1(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 340
    const-string v1, "en"

    invoke-static {v1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    .line 341
    return-void
.end method

.method public onGetSuggestions(Lcom/android/inputmethod/latin/spellcheck/TextInfo;I)Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    .registers 23
    .parameter "textInfo"
    .parameter "suggestionsLimit"

    .prologue
    .line 388
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/spellcheck/TextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, text:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->shouldFilterOut(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_53

    move-result v3

    if-eqz v3, :cond_8b

    .line 391
    const/4 v11, 0x0

    .line 393
    .local v11, dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->takeOrGetNull()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v11

    .line 394
    if-nez v11, :cond_31

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$3()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_74

    move-result-object v3

    .line 398
    if-eqz v11, :cond_30

    .line 399
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 400
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_30} :catch_53

    .line 476
    .end local v2           #text:Ljava/lang/String;
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_30
    :goto_30
    return-object v3

    .line 395
    .restart local v2       #text:Ljava/lang/String;
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_31
    :try_start_31
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$4()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_74

    move-result-object v3

    .line 398
    :goto_3d
    if-eqz v11, :cond_30

    .line 399
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 400
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_52} :catch_53

    goto :goto_30

    .line 470
    .end local v2           #text:Ljava/lang/String;
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :catch_53
    move-exception v12

    .line 475
    .local v12, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while spellcheking: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$3()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    move-result-object v3

    goto :goto_30

    .line 396
    .end local v12           #e:Ljava/lang/RuntimeException;
    .restart local v2       #text:Ljava/lang/String;
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_6f
    :try_start_6f
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$3()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_74

    move-result-object v3

    goto :goto_3d

    .line 397
    :catchall_74
    move-exception v3

    .line 398
    if-eqz v11, :cond_8a

    .line 399
    :try_start_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 400
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_8a
    throw v3

    .line 407
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_8b
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:D
    invoke-static {v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$5(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLikelyThreshold:D
    invoke-static {v5}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$6(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D

    move-result-wide v5

    move/from16 v7, p2

    .line 407
    invoke-direct/range {v1 .. v7}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;-><init>(Ljava/lang/String;DDI)V

    .line 409
    .local v1, suggestionsGatherer:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    new-instance v10, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v10}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 410
    .local v10, composer:Lcom/android/inputmethod/latin/WordComposer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    .line 411
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_ac
    move/from16 v0, v16

    if-lt v14, v0, :cond_db

    .line 426
    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getCapitalizationType(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$8(Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_b3} :catch_53

    move-result v8

    .line 427
    .local v8, capitalizeType:I
    const/4 v15, 0x1

    .line 428
    .local v15, isInDict:Z
    const/4 v11, 0x0

    .line 430
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->takeOrGetNull()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v11

    .line 431
    if-nez v11, :cond_107

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$3()Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_151

    move-result-object v3

    .line 442
    if-eqz v11, :cond_30

    .line 443
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 444
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 412
    .end local v8           #capitalizeType:I
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .end local v15           #isInDict:Z
    :cond_db
    invoke-virtual {v2, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 413
    .local v9, character:I
    invoke-static {v9}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->getIndexOf(I)I

    move-result v18

    .line 415
    .local v18, proximityIndex:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_fa

    .line 416
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput v9, v17, v3

    .line 423
    .local v17, proximities:[I
    :goto_f0
    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 422
    move-object/from16 v0, v17

    invoke-virtual {v10, v9, v0, v3, v4}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 411
    add-int/lit8 v14, v14, 0x1

    goto :goto_ac

    .line 418
    .end local v17           #proximities:[I
    :cond_fa
    sget-object v3, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->PROXIMITY:[I

    .line 420
    add-int/lit8 v4, v18, 0x10

    .line 418
    move/from16 v0, v18

    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->resizeArrayRange(Ljava/lang/Object;II)Ljava/lang/Object;
    invoke-static {v3, v0, v4}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$7(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I
    :try_end_106
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_106} :catch_53

    .restart local v17       #proximities:[I
    goto :goto_f0

    .line 432
    .end local v9           #character:I
    .end local v17           #proximities:[I
    .end local v18           #proximityIndex:I
    .restart local v8       #capitalizeType:I
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .restart local v15       #isInDict:Z
    :cond_107
    :try_start_107
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 433
    iget-object v4, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 432
    invoke-virtual {v3, v10, v1, v4}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    .line 434
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 435
    if-nez v15, :cond_126

    if-eqz v8, :cond_126

    .line 439
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_125
    .catchall {:try_start_107 .. :try_end_125} :catchall_151

    move-result v15

    .line 442
    :cond_126
    if-eqz v11, :cond_13b

    .line 443
    :try_start_128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v3

    if-nez v3, :cond_13b

    .line 444
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_13b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    .line 449
    invoke-virtual {v1, v8, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->getResults(ILjava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    move-result-object v19

    .line 467
    .local v19, result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    if-eqz v15, :cond_168

    const/4 v13, 0x1

    .line 469
    .local v13, flags:I
    :goto_146
    new-instance v3, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v3, v13, v4}, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_30

    .line 441
    .end local v13           #flags:I
    .end local v19           #result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    :catchall_151
    move-exception v3

    .line 442
    if-eqz v11, :cond_167

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_167

    .line 444
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_167
    throw v3
    :try_end_168
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_168} :catch_53

    .line 468
    .restart local v19       #result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    :cond_168
    const/4 v13, 0x2

    goto :goto_146
.end method
