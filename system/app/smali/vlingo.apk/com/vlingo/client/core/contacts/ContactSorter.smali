.class public Lcom/vlingo/client/core/contacts/ContactSorter;
.super Ljava/lang/Object;
.source "ContactSorter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAXIMUM_CHUNK_WITH_NO_UPDATE:I = 0x14

.field private static final MINIMUM_CHUNK_SORT_SIZE:I = 0xa

.field private static final PRUNING_CHUNK_INCREMENT:F = 1.0f

.field private static final SEARCH_SCORE_EXTRA_WORD_COST:I = -0x1

.field private static final SEARCH_SCORE_FULL_MATCH_CORRECT_POS:I = 0x14

.field private static final SEARCH_SCORE_FULL_MATCH_WRONG_POS:I = 0x12

.field private static final SEARCH_SCORE_MISSING_WORD_COST:I = -0x1

.field private static final SEARCH_SCORE_PARTIAL_MATCH_CORRECT_POS:I = 0xa

.field private static final SEARCH_SCORE_PARTIAL_MATCH_WRONG_POS:I = 0x8

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private cap:I

.field private m_applicationName:Ljava/lang/String;

.field private m_backgroundDisplayItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

.field private m_bestMRUScore:F

.field private m_bestScore:F

.field private m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

.field private m_emailTypes:[I

.field private m_matchString:[Ljava/lang/String;

.field private m_mru:Lcom/vlingo/client/core/mru/MRU;

.field private m_numContacts:I

.field private m_phoneTypes:[I

.field private m_pruningThreshold:F

.field private m_sortAlgorithm:Lcom/vlingo/client/core/util/SortAlgorithm;

.field private m_sortThreadRunning:Z

.field private m_sortThreadShouldRun:Z

.field private m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

.field private skipBestMatch:Z

.field private sortSynchronously:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->skipBestMatch:Z

    .line 58
    iput-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    .line 59
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->cap:I

    .line 61
    iput-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    .line 63
    iput-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 318
    iput-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 320
    iput v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    .line 321
    iput v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    .line 322
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestMRUScore:F

    .line 323
    iput-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 324
    iput v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_pruningThreshold:F

    .line 325
    iput-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_matchString:[Ljava/lang/String;

    .line 326
    iput-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_phoneTypes:[I

    .line 327
    iput-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_emailTypes:[I

    .line 329
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/contacts/SortedContactList;Lcom/vlingo/client/core/util/SortAlgorithm;)V
    .registers 5
    .parameter "list"
    .parameter "sortAlg"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->skipBestMatch:Z

    .line 58
    iput-boolean v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    .line 59
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->cap:I

    .line 61
    iput-boolean v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    .line 63
    iput-boolean v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 66
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    .line 67
    iput-object p2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortAlgorithm:Lcom/vlingo/client/core/util/SortAlgorithm;

    .line 68
    return-void
.end method

.method private addContactDetails(Lcom/vlingo/client/core/contacts/VlingoContact;)V
    .registers 5
    .parameter "contact"

    .prologue
    .line 470
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_phoneTypes:[I

    if-eqz v1, :cond_14

    .line 471
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_phoneTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 472
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_phoneTypes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->addPhoneNumberDetails(I)V

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 475
    .end local v0           #i:I
    :cond_14
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_emailTypes:[I

    if-eqz v1, :cond_28

    .line 476
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_19
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_emailTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 477
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_emailTypes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->addEmailDetails(I)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 480
    .end local v0           #i:I
    :cond_28
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_applicationName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->computeMRUScoresForDetails(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private computeScore(Lcom/vlingo/client/core/contacts/VlingoContact;)F
    .registers 22
    .parameter "contact"

    .prologue
    .line 392
    const/4 v15, 0x0

    .line 393
    .local v15, score:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_matchString:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1d

    .line 394
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/contacts/ContactSorter;->m_matchString:[Ljava/lang/String;

    .line 395
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_matchString:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v12, v0

    .line 396
    .local v12, matchStringLen:I
    new-array v0, v12, [Z

    move-object/from16 v16, v0

    .line 397
    .local v16, wasWordUsed:[Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2b
    if-ge v8, v12, :cond_34

    .line 398
    const/16 v17, 0x0

    aput-boolean v17, v16, v8

    .line 397
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 400
    :cond_34
    const/4 v7, 0x0

    .line 401
    .local v7, contactWords:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, name:Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    .line 404
    .local v5, cb:Ljava/lang/Character$UnicodeBlock;
    sget-object v17, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_57

    sget-object v17, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_57

    sget-object v17, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_7a

    .line 407
    :cond_57
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    .line 408
    const/4 v8, 0x0

    :goto_60
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_8a

    .line 409
    new-instance v17, Ljava/lang/String;

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v17, v7, v8

    .line 408
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 412
    :cond_7a
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ", &/+."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/contacts/ContactSorter;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 415
    :cond_8a
    const/4 v10, 0x0

    .local v10, j:I
    :goto_8b
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_f3

    .line 416
    const/4 v4, 0x0

    .line 417
    .local v4, bestMatchScore:I
    const/4 v3, -0x1

    .line 418
    .local v3, bestMatchIndex:I
    aget-object v6, v7, v10

    .line 420
    .local v6, contactWord:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9f

    .line 415
    :goto_9c
    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    .line 422
    :cond_9f
    const/4 v8, 0x0

    :goto_a0
    if-ge v8, v12, :cond_e2

    .line 423
    aget-boolean v17, v16, v8

    if-nez v17, :cond_bf

    .line 424
    const/4 v9, 0x0

    .line 425
    .local v9, isMatchingPosition:Z
    if-nez v8, :cond_ab

    if-eqz v10, :cond_af

    :cond_ab
    if-eqz v8, :cond_b0

    if-eqz v10, :cond_b0

    .line 426
    :cond_af
    const/4 v9, 0x1

    .line 427
    :cond_b0
    const/4 v11, 0x0

    .line 428
    .local v11, matchScore:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_matchString:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v13, v17, v8

    .line 429
    .local v13, matchWord:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_c2

    .line 422
    .end local v9           #isMatchingPosition:Z
    .end local v11           #matchScore:I
    .end local v13           #matchWord:Ljava/lang/String;
    :cond_bf
    :goto_bf
    add-int/lit8 v8, v8, 0x1

    goto :goto_a0

    .line 431
    .restart local v9       #isMatchingPosition:Z
    .restart local v11       #matchScore:I
    .restart local v13       #matchWord:Ljava/lang/String;
    :cond_c2
    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d4

    .line 432
    if-eqz v9, :cond_d1

    .line 433
    const/16 v11, 0x14

    .line 444
    :cond_cc
    :goto_cc
    if-le v11, v4, :cond_bf

    .line 445
    move v4, v11

    .line 446
    move v3, v8

    goto :goto_bf

    .line 435
    :cond_d1
    const/16 v11, 0x12

    goto :goto_cc

    .line 437
    :cond_d4
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_cc

    .line 438
    if-eqz v9, :cond_df

    .line 439
    const/16 v11, 0xa

    goto :goto_cc

    .line 441
    :cond_df
    const/16 v11, 0x8

    goto :goto_cc

    .line 450
    .end local v9           #isMatchingPosition:Z
    .end local v11           #matchScore:I
    .end local v13           #matchWord:Ljava/lang/String;
    :cond_e2
    if-ltz v3, :cond_ee

    .line 451
    int-to-float v0, v4

    move/from16 v17, v0

    add-float v15, v15, v17

    .line 452
    const/16 v17, 0x1

    aput-boolean v17, v16, v3

    goto :goto_9c

    .line 455
    :cond_ee
    const/high16 v17, -0x4080

    add-float v15, v15, v17

    goto :goto_9c

    .line 458
    .end local v3           #bestMatchIndex:I
    .end local v4           #bestMatchScore:I
    .end local v6           #contactWord:Ljava/lang/String;
    :cond_f3
    const/4 v8, 0x0

    :goto_f4
    if-ge v8, v12, :cond_101

    .line 459
    aget-boolean v17, v16, v8

    if-nez v17, :cond_fe

    .line 460
    const/high16 v17, -0x4080

    add-float v15, v15, v17

    .line 458
    :cond_fe
    add-int/lit8 v8, v8, 0x1

    goto :goto_f4

    .line 462
    :cond_101
    return v15
.end method

.method private split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .parameter "str"
    .parameter "delimiters"

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 362
    .local v7, len:I
    const/4 v6, 0x1

    .line 363
    .local v6, lastWasDelimiter:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v7, :cond_1d

    .line 364
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_17

    .line 365
    const/4 v6, 0x1

    .line 363
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 368
    :cond_17
    if-eqz v6, :cond_1b

    add-int/lit8 v1, v1, 0x1

    .line 369
    :cond_1b
    const/4 v6, 0x0

    goto :goto_14

    .line 372
    :cond_1d
    new-array v0, v1, [Ljava/lang/String;

    .line 373
    .local v0, arr:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 374
    .local v3, index:I
    const/4 v5, -0x1

    .line 376
    .local v5, lastStart:I
    const/4 v2, 0x0

    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_23
    if-gt v2, v7, :cond_45

    .line 378
    if-eq v2, v7, :cond_31

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_40

    .line 379
    :cond_31
    if-ltz v5, :cond_48

    .line 380
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    .line 382
    :goto_3b
    const/4 v5, -0x1

    .line 376
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_23

    .line 385
    :cond_40
    if-gez v5, :cond_46

    move v5, v2

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3c

    .line 388
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_45
    return-object v0

    :cond_46
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3c

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_48
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3b
.end method


# virtual methods
.method public add(Lcom/vlingo/client/core/contacts/VlingoContact;)V
    .registers 8
    .parameter "contact"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/contacts/ContactSorter;->computeScore(Lcom/vlingo/client/core/contacts/VlingoContact;)F

    move-result v2

    .line 334
    .local v2, score:F
    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_30

    .line 336
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/contacts/ContactSorter;->addContactDetails(Lcom/vlingo/client/core/contacts/VlingoContact;)V

    .line 337
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v1

    .line 339
    .local v1, numDetails:I
    if-lez v1, :cond_30

    .line 340
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_applicationName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->computeMRUScore(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getBestMRUScore()F

    move-result v0

    .line 343
    .local v0, mruScore:F
    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestMRUScore:F

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_2a

    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_30

    .line 344
    :cond_2a
    iput v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    .line 345
    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestMRUScore:F

    .line 346
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 351
    .end local v0           #mruScore:F
    .end local v1           #numDetails:I
    :cond_30
    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    iget v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_pruningThreshold:F

    sub-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_54

    .line 352
    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->setScore(F)V

    .line 353
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_applicationName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->computeMRUScore(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V

    .line 354
    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    array-length v4, v4

    if-ge v3, v4, :cond_54

    .line 356
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    iget v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    aput-object p1, v3, v4

    .line 358
    :cond_54
    return-void
.end method

.method public getCap()I
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->cap:I

    return v0
.end method

.method public getContact(I)Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public initialize(I[Ljava/lang/String;[I[IFLcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V
    .registers 15
    .parameter "numContacts"
    .parameter "matchString"
    .parameter "phoneTypes"
    .parameter "emailTypes"
    .parameter "pruningThreshold"
    .parameter "mru"
    .parameter "applicationName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 276
    iput-object p6, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    .line 277
    iput-object p7, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_applicationName:Ljava/lang/String;

    .line 279
    sget-object v2, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " emailTypes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 281
    iget-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    if-nez v2, :cond_43

    .line 282
    iput-boolean v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 283
    :goto_2e
    iget-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    if-eqz v2, :cond_43

    .line 284
    iput-boolean v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 286
    const-wide/16 v2, 0x14

    :try_start_36
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_2e

    .line 287
    :catch_3a
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Trouble sleeping"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    :cond_43
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V

    .line 294
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 296
    :cond_56
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v2, :cond_67

    .line 297
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    array-length v2, v2

    if-ge v1, v2, :cond_67

    .line 298
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aput-object v6, v2, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 302
    .end local v1           #i:I
    :cond_67
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    array-length v2, v2

    if-ge v2, p1, :cond_74

    .line 303
    :cond_70
    new-array v2, p1, [Lcom/vlingo/client/core/contacts/VlingoContact;

    iput-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 306
    :cond_74
    iput v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    .line 307
    const/4 v2, 0x0

    iput v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    .line 308
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestMRUScore:F

    .line 309
    iput-object v6, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 310
    iput p5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_pruningThreshold:F

    .line 311
    iput-object p2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_matchString:[Ljava/lang/String;

    .line 312
    iput-object p3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_phoneTypes:[I

    .line 313
    iput-object p4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_emailTypes:[I

    .line 315
    return-void
.end method

.method public isSorting()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    return v0
.end method

.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    .line 148
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v10, "ContactSorter thread starting "

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 149
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    if-nez v9, :cond_32

    .line 150
    new-instance v9, Ljava/util/Vector;

    iget v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    invoke-direct {v9, v10}, Ljava/util/Vector;-><init>(I)V

    iput-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    .line 155
    :goto_18
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    if-gtz v9, :cond_38

    .line 156
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v10, "no contacts, so not running "

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 158
    iput-boolean v12, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    .line 159
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    iget-object v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V

    .line 160
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V

    .line 270
    :goto_31
    return-void

    .line 153
    :cond_32
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_18

    .line 185
    :cond_38
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v7, 0x0

    .local v7, skip:I
    :goto_3a
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    if-ge v4, v9, :cond_6e

    .line 186
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    iget-object v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    add-int v11, v4, v7

    aget-object v10, v10, v11

    aput-object v10, v9, v4

    .line 187
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aget-object v0, v9, v4

    .line 198
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget-boolean v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->skipBestMatch:Z

    if-eqz v9, :cond_54

    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eq v0, v9, :cond_61

    :cond_54
    invoke-virtual {v0, v14}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v9

    iget v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    iget v11, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_pruningThreshold:F

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6b

    .line 201
    :cond_61
    add-int/lit8 v7, v7, 0x1

    .line 202
    add-int/lit8 v4, v4, -0x1

    .line 203
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    .line 185
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 206
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_6e
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "num_contact after pruning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 209
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestScore:F

    sub-float v1, v9, v13

    .line 210
    .local v1, currentPruningScore:F
    const/4 v3, 0x0

    .line 212
    .local v3, currentSortStart:I
    :cond_8d
    iget-boolean v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    if-eqz v9, :cond_9e

    .line 213
    move v2, v3

    .line 215
    .local v2, currentSortEnd:I
    :goto_92
    add-int/lit8 v9, v3, 0xa

    if-ge v2, v9, :cond_9a

    .line 216
    iget-boolean v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    if-nez v9, :cond_ad

    .line 230
    :cond_9a
    iget-boolean v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    if-nez v9, :cond_d5

    .line 267
    .end local v2           #currentSortEnd:I
    :cond_9e
    :goto_9e
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v10, "ContactSorter done"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 268
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V

    .line 269
    iput-boolean v12, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    goto :goto_31

    .line 217
    .restart local v2       #currentSortEnd:I
    :cond_ad
    move v4, v2

    :goto_ae
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    if-ge v4, v9, :cond_cf

    .line 219
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aget-object v0, v9, v4

    .line 220
    .restart local v0       #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {v0, v14}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v9

    cmpl-float v9, v9, v1

    if-lez v9, :cond_cc

    .line 221
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    iget-object v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aget-object v10, v10, v2

    aput-object v10, v9, v4

    .line 222
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aput-object v0, v9, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 217
    :cond_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 226
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    :cond_cf
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    if-eq v2, v9, :cond_9a

    .line 228
    sub-float/2addr v1, v13

    goto :goto_92

    .line 232
    :cond_d5
    if-le v2, v3, :cond_118

    .line 233
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sorting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " score "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numContacts "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 234
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortAlgorithm:Lcom/vlingo/client/core/util/SortAlgorithm;

    iget-object v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    add-int/lit8 v11, v2, -0x1

    invoke-interface {v9, v10, v3, v11}, Lcom/vlingo/client/core/util/SortAlgorithm;->sort([Ljava/lang/Object;II)V

    .line 237
    :cond_118
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v10, "done sorting"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 238
    move v4, v3

    const/4 v8, 0x0

    .local v8, updateCount:I
    :goto_121
    if-ge v4, v2, :cond_127

    .line 239
    iget-boolean v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    if-nez v9, :cond_153

    .line 259
    :cond_127
    sget-object v9, Lcom/vlingo/client/core/contacts/ContactSorter;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "done adding.  NumDisplay now "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 260
    move v3, v2

    .line 262
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    iget-object v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V

    .line 264
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    if-ne v2, v9, :cond_8d

    goto/16 :goto_9e

    .line 241
    :cond_153
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aget-object v0, v9, v4

    .line 243
    .restart local v0       #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-direct {p0, v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->addContactDetails(Lcom/vlingo/client/core/contacts/VlingoContact;)V

    .line 244
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->sortDetails()V

    .line 245
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v6

    .line 247
    .local v6, numDetails:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_162
    if-ge v5, v6, :cond_188

    .line 248
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    new-instance v10, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {v10, v0, v5}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v8, v8, 0x1

    .line 250
    const/4 v9, 0x7

    if-lt v8, v9, :cond_17b

    rem-int/lit8 v9, v8, 0x14

    if-eqz v9, :cond_17b

    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->cap:I

    if-ne v8, v9, :cond_18b

    .line 251
    :cond_17b
    iget-object v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    iget-object v10, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V

    .line 252
    iget v9, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->cap:I

    if-ne v8, v9, :cond_18b

    .line 253
    iput-boolean v12, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 238
    :cond_188
    add-int/lit8 v4, v4, 0x1

    goto :goto_121

    .line 247
    :cond_18b
    add-int/lit8 v5, v5, 0x1

    goto :goto_162
.end method

.method public setCap(I)V
    .registers 2
    .parameter "cap"

    .prologue
    .line 496
    iput p1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->cap:I

    .line 497
    return-void
.end method

.method public setSkipBestMatch(Z)V
    .registers 2
    .parameter "skip"

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->skipBestMatch:Z

    .line 505
    return-void
.end method

.method public setSortSynchronously(Z)V
    .registers 2
    .parameter "sync"

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    .line 489
    return-void
.end method

.method public skipSort()Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 7

    .prologue
    .line 123
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    if-nez v4, :cond_22

    .line 124
    new-instance v4, Ljava/util/Vector;

    iget v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    .line 129
    :goto_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    iget v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_numContacts:I

    if-ge v1, v4, :cond_3c

    .line 130
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_contacts:[Lcom/vlingo/client/core/contacts/VlingoContact;

    aget-object v0, v4, v1

    .line 131
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-direct {p0, v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->addContactDetails(Lcom/vlingo/client/core/contacts/VlingoContact;)V

    .line 132
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-nez v4, :cond_28

    .line 133
    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 129
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 127
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v1           #i:I
    :cond_22
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_d

    .line 136
    .restart local v0       #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .restart local v1       #i:I
    :cond_28
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v3

    .line 137
    .local v3, numDetails:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2d
    if-ge v2, v3, :cond_1f

    .line 138
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    new-instance v5, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {v5, v0, v2}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 142
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v2           #j:I
    .end local v3           #numDetails:I
    :cond_3c
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    iget-object v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_backgroundDisplayItems:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V

    .line 143
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V

    .line 144
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    return-object v4
.end method

.method public startSort()Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    iput-boolean v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 77
    iget-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    if-eqz v2, :cond_19

    .line 78
    iput-boolean v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 79
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v2, :cond_13

    .line 80
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->sortDetails()V

    .line 82
    :cond_13
    invoke-virtual {p0}, Lcom/vlingo/client/core/contacts/ContactSorter;->run()V

    .line 103
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    return-object v2

    .line 85
    :cond_19
    :goto_19
    iget-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    if-eqz v2, :cond_2e

    .line 86
    iput-boolean v5, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 88
    const-wide/16 v2, 0x14

    :try_start_21
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_19

    .line 89
    :catch_25
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Trouble sleeping"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2e
    iput-boolean v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 94
    iput-boolean v4, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    .line 96
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ContactSorter"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 97
    .local v1, th:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 99
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v2, :cond_16

    .line 100
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_bestContact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->sortDetails()V

    goto :goto_16
.end method

.method public stopSort()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 108
    iput-boolean v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 110
    iget-boolean v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    if-nez v1, :cond_1c

    .line 111
    :goto_7
    iget-boolean v1, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadRunning:Z

    if-eqz v1, :cond_1c

    .line 112
    iput-boolean v3, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->m_sortThreadShouldRun:Z

    .line 114
    const-wide/16 v1, 0x14

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_7

    .line 115
    :catch_13
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Trouble sleeping"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c
    return-void
.end method

.method public willSkipBestMatch()Z
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->skipBestMatch:Z

    return v0
.end method

.method public willSortSynchronously()Z
    .registers 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactSorter;->sortSynchronously:Z

    return v0
.end method
