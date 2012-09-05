.class public Lcom/vlingo/client/NBestManager;
.super Ljava/lang/Object;
.source "NBestManager.java"


# static fields
.field private static final MAX_RESULTS:I = 0x5

.field private static final WORD_SEPERATORS:Ljava/lang/String; = ". ,;:!?\n()[]*&@{}/<>_+=|\""


# instance fields
.field private previousResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/core/recognizer/results/TaggedResults;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    return-void
.end method

.method private getCurrentWord([CI)Ljava/lang/String;
    .registers 8
    .parameter "phrase"
    .parameter "cursorPosition"

    .prologue
    .line 154
    aget-char v3, p1, p2

    invoke-static {v3}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 155
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 174
    :goto_e
    return-object v3

    .line 157
    :cond_f
    const/4 v2, 0x0

    .line 158
    .local v2, startIndex:I
    array-length v0, p1

    .line 161
    .local v0, endIndex:I
    move v1, p2

    .local v1, i:I
    :goto_12
    array-length v3, p1

    if-ge v1, v3, :cond_1e

    .line 162
    aget-char v3, p1, v1

    invoke-static {v3}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 163
    move v0, v1

    .line 167
    :cond_1e
    move v1, p2

    :goto_1f
    if-ltz v1, :cond_2b

    .line 168
    aget-char v3, p1, v1

    invoke-static {v3}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 169
    add-int/lit8 v2, v1, 0x1

    .line 174
    :cond_2b
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    invoke-direct {v3, p1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_e

    .line 161
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 167
    :cond_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f
.end method

.method private getWordsAfter([Ljava/lang/String;[CI)I
    .registers 12
    .parameter "wordsAfter"
    .parameter "phrase"
    .parameter "cursorPosition"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, count:I
    move v3, p3

    .line 124
    .local v3, i:I
    array-length v4, p2

    .line 126
    .local v4, len:I
    :goto_3
    if-ge v3, v4, :cond_1f

    aget-char v6, p2, v3

    invoke-static {v6}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v6

    if-nez v6, :cond_1f

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 138
    .local v5, startIndex:I
    :cond_10
    move v2, v3

    .line 140
    .local v2, endIndex:I
    if-ge v5, v2, :cond_1f

    .line 141
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    new-instance v6, Ljava/lang/String;

    sub-int v7, v2, v5

    invoke-direct {v6, p2, v5, v7}, Ljava/lang/String;-><init>([CII)V

    aput-object v6, p1, v0

    move v0, v1

    .line 128
    .end local v1           #count:I
    .end local v2           #endIndex:I
    .end local v5           #startIndex:I
    .restart local v0       #count:I
    :cond_1f
    array-length v6, p1

    if-ge v0, v6, :cond_32

    .line 131
    :goto_22
    if-ge v3, v4, :cond_2f

    aget-char v6, p2, v3

    invoke-static {v6}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_2f

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 132
    :cond_2f
    move v5, v3

    .line 134
    .restart local v5       #startIndex:I
    if-lt v5, v4, :cond_33

    .line 144
    .end local v5           #startIndex:I
    :cond_32
    return v0

    .line 137
    .restart local v5       #startIndex:I
    :cond_33
    :goto_33
    if-ge v3, v4, :cond_10

    aget-char v6, p2, v3

    invoke-static {v6}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v6

    if-nez v6, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_33
.end method

.method private getWordsBefore([Ljava/lang/String;[CI)I
    .registers 11
    .parameter "wordsBefore"
    .parameter "phrase"
    .parameter "cursorPosition"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, count:I
    move v3, p3

    .line 100
    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_1f

    aget-char v5, p2, v3

    invoke-static {v5}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v5

    if-nez v5, :cond_1f

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 111
    .local v2, endIndex:I
    :cond_f
    add-int/lit8 v4, v3, 0x1

    .line 113
    .local v4, startIndex:I
    if-ge v4, v2, :cond_1f

    .line 114
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    new-instance v5, Ljava/lang/String;

    sub-int v6, v2, v4

    invoke-direct {v5, p2, v4, v6}, Ljava/lang/String;-><init>([CII)V

    aput-object v5, p1, v0

    move v0, v1

    .line 102
    .end local v1           #count:I
    .end local v2           #endIndex:I
    .end local v4           #startIndex:I
    .restart local v0       #count:I
    :cond_1f
    array-length v5, p1

    if-ge v0, v5, :cond_33

    .line 105
    :goto_22
    if-ltz v3, :cond_2f

    aget-char v5, p2, v3

    invoke-static {v5}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    .line 106
    :cond_2f
    add-int/lit8 v2, v3, 0x1

    .line 107
    .restart local v2       #endIndex:I
    if-gtz v2, :cond_34

    .line 117
    .end local v2           #endIndex:I
    :cond_33
    return v0

    .line 110
    .restart local v2       #endIndex:I
    :cond_34
    :goto_34
    if-ltz v3, :cond_f

    aget-char v5, p2, v3

    invoke-static {v5}, Lcom/vlingo/client/NBestManager;->isWordSeparator(C)Z

    move-result v5

    if-nez v5, :cond_f

    add-int/lit8 v3, v3, -0x1

    goto :goto_34
.end method

.method private static isWordSeparator(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 148
    const-string v0, ". ,;:!?\n()[]*&@{}/<>_+=|\""

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private moveCursorIfInSpace([CI)I
    .registers 5
    .parameter "phrase"
    .parameter "cursorPosition"

    .prologue
    const/4 v0, -0x1

    .line 79
    if-ltz p2, :cond_6

    array-length v1, p1

    if-lt p2, v1, :cond_7

    .line 90
    :cond_6
    :goto_6
    return v0

    .line 80
    :cond_7
    aget-char v1, p1, p2

    invoke-static {v1}, Ljava/lang/Character;->isSpace(C)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 81
    if-lez p2, :cond_1e

    add-int/lit8 v1, p2, -0x1

    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isSpace(C)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 83
    add-int/lit8 v0, p2, -0x1

    goto :goto_6

    .line 85
    :cond_1e
    add-int/lit8 p2, p2, 0x1

    .line 87
    :cond_20
    array-length v1, p1

    if-ge p2, v1, :cond_6

    .line 88
    aget-char v1, p1, p2

    invoke-static {v1}, Ljava/lang/Character;->isSpace(C)Z

    move-result v1

    if-nez v1, :cond_6

    move v0, p2

    .line 90
    goto :goto_6
.end method


# virtual methods
.method public getNBestForWord(Ljava/lang/String;)Ljava/util/Vector;
    .registers 6
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v3, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 30
    .local v1, resnum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 31
    iget-object v3, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    invoke-virtual {v3, p1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getNBestForWord(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 32
    .local v2, result:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    if-eqz v2, :cond_18

    .line 36
    .end local v2           #result:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    :goto_17
    return-object v2

    .line 30
    .restart local v2       #result:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 36
    .end local v2           #result:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getNBestForWord(Ljava/lang/String;I)Ljava/util/Vector;
    .registers 16
    .parameter "phrase"
    .parameter "cursorPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v8, 0x3

    .line 42
    .local v8, MAX_SURROUNDING_WORDS:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 44
    .local v10, charPhrase:[C
    invoke-direct {p0, v10, p2}, Lcom/vlingo/client/NBestManager;->moveCursorIfInSpace([CI)I

    move-result v9

    .line 45
    .local v9, adjustedCursor:I
    if-gez v9, :cond_d

    const/4 v1, 0x0

    .line 75
    :cond_c
    :goto_c
    return-object v1

    .line 47
    :cond_d
    invoke-direct {p0, v10, v9}, Lcom/vlingo/client/NBestManager;->getCurrentWord([CI)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, word:Ljava/lang/String;
    if-nez v2, :cond_15

    const/4 v1, 0x0

    goto :goto_c

    .line 49
    :cond_15
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    .line 50
    .local v3, previousWords:[Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    .line 51
    .local v5, nextWords:[Ljava/lang/String;
    invoke-direct {p0, v3, v10, v9}, Lcom/vlingo/client/NBestManager;->getWordsBefore([Ljava/lang/String;[CI)I

    move-result v4

    .line 52
    .local v4, numPreviousWords:I
    invoke-direct {p0, v5, v10, v9}, Lcom/vlingo/client/NBestManager;->getWordsAfter([Ljava/lang/String;[CI)I

    move-result v6

    .line 62
    .local v6, numNextWords:I
    iget-object v0, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 64
    .local v12, resnum:I
    const/4 v7, 0x0

    .line 65
    .local v7, numMatchingWords:I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 66
    .local v1, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_30
    if-ge v11, v12, :cond_41

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getNBestForWordIfBetterMatch(Ljava/util/Vector;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;II)I

    move-result v7

    .line 66
    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    .line 74
    :cond_41
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    goto :goto_c
.end method

.method public registerResults(Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V
    .registers 4
    .parameter "results"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    :goto_6
    iget-object v0, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1d

    .line 23
    iget-object v0, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vlingo/client/NBestManager;->previousResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 25
    :cond_1d
    return-void
.end method
