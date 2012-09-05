.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;,
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "indexCharacters"

    .prologue
    .line 236
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 95
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 99
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 242
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "word"
    .parameter "indexString"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "base"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 15
    .parameter "base"
    .parameter "foundOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v9

    if-nez v9, :cond_8

    .line 460
    :goto_7
    return-object v5

    .line 384
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v2

    .line 388
    .local v2, itemCount:I
    if-nez v2, :cond_27

    .line 390
    const-string v9, "TwAbstractIndexer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIndexInfo() return null: mData.size() =="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 398
    :cond_27
    if-nez p1, :cond_76

    const-string v0, ""

    .line 400
    .local v0, baseString:Ljava/lang/String;
    :goto_2b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v5, retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 408
    const/4 v8, 0x0

    .local v8, sectionIndex:I
    :goto_34
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v8, v9, :cond_78

    .line 410
    const/4 v7, 0x0

    .line 412
    .local v7, sectionFound:Z
    const/4 v3, -0x1

    .line 416
    .local v3, posFound:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v10, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, searchString:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v4

    .line 420
    .local v4, pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    iget v3, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 422
    iget-boolean v7, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 426
    if-gez v3, :cond_5c

    .line 428
    neg-int v3, v3

    .line 434
    :cond_5c
    if-eqz p2, :cond_61

    const/4 v9, 0x1

    if-ne v7, v9, :cond_73

    .line 440
    :cond_61
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 442
    .local v1, indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    iput-boolean v7, v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 444
    iput v3, v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 446
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    aget-object v9, v9, v8

    iput-object v9, v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 448
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v1           #indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .end local v0           #baseString:Ljava/lang/String;
    .end local v3           #posFound:I
    .end local v4           #pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v5           #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v6           #searchString:Ljava/lang/String;
    .end local v7           #sectionFound:Z
    .end local v8           #sectionIndex:I
    :cond_76
    move-object v0, p1

    .line 398
    goto :goto_2b

    .line 458
    .restart local v0       #baseString:Ljava/lang/String;
    .restart local v5       #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .restart local v8       #sectionIndex:I
    :cond_78
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V

    goto :goto_7
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .registers 22
    .parameter "searchString"

    .prologue
    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 526
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v3

    .line 528
    .local v3, count:I
    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_1a

    .line 530
    :cond_12
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    .line 798
    :goto_19
    return-object v18

    .line 534
    :cond_1a
    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2a

    .line 538
    :cond_22
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_19

    .line 544
    :cond_2a
    const/16 v16, 0x0

    .line 546
    .local v16, start:I
    move v6, v3

    .line 550
    .local v6, end:I
    const/4 v9, 0x0

    .line 552
    .local v9, matchFound:Z
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 554
    .local v8, letter:C
    move-object/from16 v17, p1

    .line 556
    .local v17, targetLetter:Ljava/lang/String;
    move v7, v8

    .line 560
    .local v7, key:I
    const/high16 v18, -0x8000

    const/high16 v19, -0x8000

    move/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .local v12, pos:I
    move/from16 v0, v18

    if-eq v0, v12, :cond_8c

    .line 628
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 680
    :cond_4d
    :goto_4d
    add-int v18, v6, v16

    div-int/lit8 v12, v18, 0x2

    .line 684
    :goto_51
    if-ge v12, v6, :cond_63

    .line 688
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, curName:Ljava/lang/String;
    if-eqz v4, :cond_61

    const-string v18, ""

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_110

    .line 692
    :cond_61
    if-nez v12, :cond_10c

    .line 774
    .end local v4           #curName:Ljava/lang/String;
    :cond_63
    :goto_63
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_72

    .line 776
    invoke-virtual {v2, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    :cond_72
    if-ge v12, v3, :cond_84

    .line 784
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 788
    .restart local v4       #curName:Ljava/lang/String;
    if-eqz v4, :cond_84

    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 798
    .end local v4           #curName:Ljava/lang/String;
    :cond_84
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto :goto_19

    .line 636
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 640
    .local v15, sectionIndex:I
    if-lez v15, :cond_cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-le v7, v0, :cond_cc

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 644
    .local v13, prevLetter:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 646
    .local v14, prevLetterPos:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    if-eq v14, v0, :cond_cc

    .line 648
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 660
    .end local v13           #prevLetter:I
    .end local v14           #prevLetterPos:I
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4d

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 664
    .local v10, nextLetter:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 666
    .local v11, nextLetterPos:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    if-eq v11, v0, :cond_4d

    .line 668
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_4d

    .line 698
    .end local v10           #nextLetter:I
    .end local v11           #nextLetterPos:I
    .end local v15           #sectionIndex:I
    .restart local v4       #curName:Ljava/lang/String;
    :cond_10c
    add-int/lit8 v12, v12, -0x1

    .line 700
    goto/16 :goto_51

    .line 706
    :cond_110
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 708
    .local v5, diff:I
    if-eqz v5, :cond_12c

    .line 732
    if-gez v5, :cond_125

    .line 734
    add-int/lit8 v16, v12, 0x1

    .line 736
    move/from16 v0, v16

    if-lt v0, v3, :cond_126

    .line 738
    move v12, v3

    .line 740
    goto/16 :goto_63

    .line 746
    :cond_125
    move v6, v12

    .line 770
    :cond_126
    :goto_126
    add-int v18, v16, v6

    div-int/lit8 v12, v18, 0x2

    .line 772
    goto/16 :goto_51

    .line 754
    :cond_12c
    move/from16 v0, v16

    if-eq v0, v12, :cond_63

    .line 764
    move v6, v12

    goto :goto_126
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "alphabet"

    .prologue
    .line 250
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 252
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_21
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 258
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    .line 262
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_45

    .line 266
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 270
    :cond_45
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 276
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 278
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 280
    return-void
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .registers 3

    .prologue
    .line 955
    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onBeginTransaction is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void
.end method

.method public onChanged()V
    .registers 2

    .prologue
    .line 856
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 858
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 862
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 870
    return-void
.end method

.method protected onEndTransaction()V
    .registers 3

    .prologue
    .line 965
    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onEndTransaction  is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 884
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 886
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 888
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 890
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 931
    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 824
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_13

    .line 826
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 832
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    .line 834
    const/4 v0, 0x1

    .line 838
    :cond_1a
    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 949
    return-void
.end method
