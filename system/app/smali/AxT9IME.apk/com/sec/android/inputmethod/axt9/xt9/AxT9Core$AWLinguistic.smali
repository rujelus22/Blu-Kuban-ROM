.class public Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;
.super Ljava/lang/Object;
.source "AxT9Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AWLinguistic"
.end annotation


# instance fields
.field private mTermPuncts:[S

.field private mTermPunctsCount:B

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V
    .registers 3
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    return-void
.end method


# virtual methods
.method public ASDBInit([BS)S
    .registers 4
    .parameter "pASDBInfo"
    .parameter "wDataSize"

    .prologue
    .line 691
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    return v0
.end method

.method public CDBBreakContext()S
    .registers 2

    .prologue
    .line 757
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWBreakContext()S

    move-result v0

    return v0
.end method

.method public CDBInit([BS)S
    .registers 4
    .parameter "pCDBInfo"
    .parameter "wDataSize"

    .prologue
    .line 753
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWCDBInit([BS)S

    move-result v0

    return v0
.end method

.method public GetTermPuncts()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 540
    new-array v0, v5, [Z

    .line 541
    .local v0, bDefault:[Z
    new-array v1, v5, [B

    .line 545
    .local v1, v_btTermPunctsCount:[B
    new-array v2, v5, [S

    .line 546
    .local v2, wFLdbNum:[S
    new-array v4, v5, [S

    .line 547
    .local v4, wSLdbNum:[S
    invoke-virtual {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbGetLanguage([S[S)S

    .line 548
    aget-short v3, v2, v7

    .line 550
    .local v3, wLdbNum:S
    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    .line 551
    aput-byte v7, v1, v7

    .line 552
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    const/16 v6, 0x10

    invoke-static {v3, v5, v6, v1, v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWGetTermPuncts(S[SB[B[Z)S

    .line 553
    aget-byte v5, v1, v7

    iput-byte v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    .line 555
    iget-byte v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    if-nez v5, :cond_97

    .line 556
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x2e

    aput-short v7, v5, v6

    .line 557
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x3f

    aput-short v7, v5, v6

    .line 558
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x21

    aput-short v7, v5, v6

    .line 559
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x2c

    aput-short v7, v5, v6

    .line 560
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x2d

    aput-short v7, v5, v6

    .line 561
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x27

    aput-short v7, v5, v6

    .line 562
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x40

    aput-short v7, v5, v6

    .line 563
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x3a

    aput-short v7, v5, v6

    .line 564
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPuncts:[S

    iget-byte v6, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    add-int/lit8 v7, v6, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    const/16 v7, 0x2f

    aput-short v7, v5, v6

    .line 567
    :cond_97
    return-void
.end method

.method public Init()S
    .registers 4

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 274
    .local v0, wStatus:S
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    .line 275
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 276
    return v0
.end method

.method public LdbGetLanguage([S[S)S
    .registers 5
    .parameter "pwFirstLdbNum"
    .parameter "pwSecondLdbNum"

    .prologue
    const/4 v1, 0x0

    .line 580
    aput-short v1, p1, v1

    .line 581
    aput-short v1, p2, v1

    .line 582
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbGetLanguage([S[S)S

    move-result v0

    .line 583
    .local v0, sStatus:S
    return v0
.end method

.method public LdbInit()S
    .registers 2

    .prologue
    .line 534
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbInit()S

    move-result v0

    .line 536
    .local v0, sStatus:S
    return v0
.end method

.method public LdbSetLanguage(SS)S
    .registers 4
    .parameter "wFirstLdbNum"
    .parameter "wSecondLdbNum"

    .prologue
    .line 572
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbSetLanguage(SS)S

    move-result v0

    .line 573
    .local v0, sStatus:S
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->GetTermPuncts()V

    .line 575
    return v0
.end method

.method public LdbValidate(S)S
    .registers 3
    .parameter "wLdbNum"

    .prologue
    .line 590
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWLdbValidate(S)S

    move-result v0

    .line 594
    .local v0, eStatus:S
    return v0
.end method

.method public NoteWordDone([SS)S
    .registers 4
    .parameter "pText"
    .parameter "aSize"

    .prologue
    .line 460
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v0

    return v0
.end method

.method public SelLstBuild([B[B)S
    .registers 4
    .parameter "bTotalWords"
    .parameter "bDefaultListIndex"

    .prologue
    .line 400
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSelLstBuild([B[B)S

    move-result v0

    .line 401
    .local v0, sStatus:S
    if-eqz v0, :cond_6

    .line 410
    :cond_6
    return v0
.end method

.method public SelLstGetWord(BLcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;)S
    .registers 4
    .parameter "bWordIndex"
    .parameter "pCurrentActiveWord"

    .prologue
    .line 447
    invoke-static {p2, p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSelLstGetWord(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S

    move-result v0

    .line 448
    .local v0, wStatus:S
    return v0
.end method

.method public SelLstPostShift(B[B[B)S
    .registers 5
    .parameter "eMode"
    .parameter "bTotalWords"
    .parameter "bCurrListIndex"

    .prologue
    .line 493
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSelLstPostShift(B[B[B)S

    move-result v0

    return v0
.end method

.method public SelLstSelWord(B)S
    .registers 3
    .parameter "bWordIndex"

    .prologue
    .line 452
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSelLstSelWord(B)S

    move-result v0

    return v0
.end method

.method public SetAutoAppendInList(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 392
    if-eqz p1, :cond_7

    .line 393
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetAutoAppendInList()S

    move-result v0

    .line 395
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWClearAutoAppendInList()S

    move-result v0

    goto :goto_6
.end method

.method public SetDBCompletion(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 300
    if-eqz p1, :cond_7

    .line 301
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetDBCompletion()S

    move-result v0

    .line 303
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWClearDBCompletion()S

    move-result v0

    goto :goto_6
.end method

.method public SetDBPrediction(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 308
    if-eqz p1, :cond_7

    .line 309
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetDBPrediction()S

    move-result v0

    .line 311
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWClearDBPrediction()S

    move-result v0

    goto :goto_6
.end method

.method public SetLDBAutoSubstitution(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 362
    if-eqz p1, :cond_7

    .line 363
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 365
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWClearLDBAutoSubstitution()S

    move-result v0

    goto :goto_6
.end method

.method public SetSpellCorrectionMode(B)S
    .registers 3
    .parameter "eMode"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysSetSpellCorrectionMode(BZ)S

    move-result v0

    return v0
.end method

.method public SetUDBDelayedReorder(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 328
    if-eqz p1, :cond_7

    .line 329
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUDBDelayedReorder()S

    move-result v0

    .line 331
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWClearUDBDelayedReorder()S

    move-result v0

    goto :goto_6
.end method

.method public SetUserDefinedAutoSubstitution(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 354
    if-eqz p1, :cond_7

    .line 355
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 357
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWClearUserDefinedAutoSubstitution()S

    move-result v0

    goto :goto_6
.end method

.method public SetWordCompletionPoint(S)S
    .registers 3
    .parameter "wWordCompletionPoint"

    .prologue
    .line 292
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysSetWordCompletionPoint(S)S

    move-result v0

    return v0
.end method

.method public SetWordStemsPoint(S)S
    .registers 3
    .parameter "wCount"

    .prologue
    .line 324
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysSetWordStemsPoint(S)S

    move-result v0

    return v0
.end method

.method public UDBInit([BS)S
    .registers 4
    .parameter "pRUDBInfo"
    .parameter "wDataSize"

    .prologue
    .line 612
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    return v0
.end method

.method public reInit()S
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 280
    const/4 v0, 0x0

    .line 286
    .local v0, wStatus:S
    iput-byte v2, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->mTermPunctsCount:B

    .line 287
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSysInit(ZB)S

    move-result v0

    .line 288
    return v0
.end method
