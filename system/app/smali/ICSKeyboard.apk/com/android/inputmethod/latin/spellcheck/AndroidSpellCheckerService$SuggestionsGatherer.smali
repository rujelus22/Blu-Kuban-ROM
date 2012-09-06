.class Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsGatherer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    }
.end annotation


# instance fields
.field private mBestScore:I

.field private mBestSuggestion:Ljava/lang/String;

.field private mLength:I

.field private final mLikelyThreshold:D

.field private final mMaxLength:I

.field private final mOriginalText:Ljava/lang/String;

.field private final mScores:[I

.field private final mSuggestionThreshold:D

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;DDI)V
    .registers 9
    .parameter "originalText"
    .parameter "suggestionThreshold"
    .parameter "likelyThreshold"
    .parameter "maxLength"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    .line 125
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    .line 129
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    .line 130
    iput-wide p2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:D

    .line 131
    iput-wide p4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLikelyThreshold:D

    .line 132
    iput p6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p6, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    .line 134
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    .line 135
    return-void
.end method


# virtual methods
.method public declared-synchronized addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .registers 17
    .parameter "word"
    .parameter "wordOffset"
    .parameter "wordLength"
    .parameter "score"
    .parameter "dicTypeId"
    .parameter "dataType"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    invoke-static {v6, v7, v8, p4}, Lcom/android/inputmethod/compat/ArraysCompatUtils;->binarySearch([IIII)I

    move-result v4

    .line 143
    .local v4, positionIndex:I
    if-ltz v4, :cond_18

    move v1, v4

    .line 145
    .local v1, insertIndex:I
    :goto_d
    if-nez v1, :cond_1c

    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_6e

    if-lt v6, v7, :cond_1c

    .line 160
    const/4 v6, 0x1

    .line 190
    :goto_16
    monitor-exit p0

    return v6

    .line 143
    .end local v1           #insertIndex:I
    :cond_18
    neg-int v6, v4

    add-int/lit8 v1, v6, -0x1

    goto :goto_d

    .line 162
    .restart local v1       #insertIndex:I
    :cond_1c
    :try_start_1c
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-lt v1, v6, :cond_22

    .line 165
    const/4 v6, 0x1

    goto :goto_16

    .line 170
    :cond_22
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 172
    .local v5, wordString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-static {v6, v5, p4}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v2

    .line 173
    .local v2, normalizedScore:D
    iget-wide v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:D

    cmpg-double v6, v2, v6

    if-gez v6, :cond_35

    .line 175
    const/4 v6, 0x1

    goto :goto_16

    .line 178
    :cond_35
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-ge v6, v7, :cond_59

    .line 179
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    sub-int v0, v6, v1

    .line 180
    .local v0, copyLen:I
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 181
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    add-int/lit8 v8, v1, 0x1

    invoke-static {v6, v1, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 188
    .end local v0           #copyLen:I
    :goto_53
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    aput p4, v6, v1

    .line 190
    const/4 v6, 0x1

    goto :goto_16

    .line 184
    :cond_59
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 186
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_1c .. :try_end_6d} :catchall_6e

    goto :goto_53

    .line 140
    .end local v1           #insertIndex:I
    .end local v2           #normalizedScore:D
    .end local v4           #positionIndex:I
    .end local v5           #wordString:Ljava/lang/String;
    :catchall_6e
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getResults(ILjava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    .registers 14
    .parameter "capitalizeType"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 196
    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    if-nez v7, :cond_2b

    .line 200
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    if-nez v7, :cond_14

    .line 201
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 202
    .local v2, gatheredSuggestions:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 249
    .local v3, hasLikelySuggestions:Z
    :goto_e
    new-instance v7, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    invoke-direct {v7, v2, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;-><init>([Ljava/lang/String;Z)V

    return-object v7

    .line 204
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v3           #hasLikelySuggestions:Z
    :cond_14
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$0()[Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    iget v10, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    invoke-static {v7, v9, v10}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v5

    .line 207
    .local v5, normalizedScore:D
    iget-wide v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLikelyThreshold:D

    cmpl-double v7, v5, v9

    if-lez v7, :cond_29

    .restart local v3       #hasLikelySuggestions:Z
    :goto_28
    goto :goto_e

    .end local v3           #hasLikelySuggestions:Z
    :cond_29
    move v3, v8

    goto :goto_28

    .line 218
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v5           #normalizedScore:D
    :cond_2b
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 219
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/inputmethod/latin/Utils;->removeDupes(Ljava/util/ArrayList;)V

    .line 220
    const/4 v7, 0x2

    if-ne v7, p1, :cond_82

    .line 221
    const/4 v4, 0x0

    .local v4, i:I
    :goto_39
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_6a

    .line 235
    .end local v4           #i:I
    :cond_41
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$0()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 237
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v9, v9, -0x1

    aget v0, v7, v9

    .line 238
    .local v0, bestScore:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 240
    .local v1, bestSuggestion:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-static {v7, v1, v0}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v5

    .line 241
    .restart local v5       #normalizedScore:D
    iget-wide v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLikelyThreshold:D

    cmpl-double v7, v5, v9

    if-lez v7, :cond_a5

    .restart local v3       #hasLikelySuggestions:Z
    :goto_69
    goto :goto_e

    .line 224
    .end local v0           #bestScore:I
    .end local v1           #bestSuggestion:Ljava/lang/CharSequence;
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v3           #hasLikelySuggestions:Z
    .end local v5           #normalizedScore:D
    .restart local v4       #i:I
    :cond_6a
    iget-object v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 226
    .end local v4           #i:I
    :cond_82
    if-ne v3, p1, :cond_41

    .line 227
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_85
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_41

    .line 229
    iget-object v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .end local v4           #i:I
    .restart local v0       #bestScore:I
    .restart local v1       #bestSuggestion:Ljava/lang/CharSequence;
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    .restart local v5       #normalizedScore:D
    :cond_a5
    move v3, v8

    .line 241
    goto :goto_69
.end method
