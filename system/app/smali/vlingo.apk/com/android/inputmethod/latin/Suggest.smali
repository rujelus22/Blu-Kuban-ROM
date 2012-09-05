.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_NONE:I


# instance fields
.field private mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mContext:Landroid/content/Context;

.field private mCorrectionMode:I

.field private mHaveCorrection:Z

.field private mIncludeTypedWordIfValid:Z

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lcom/android/inputmethod/latin/Dictionary;

.field private mOriginalWord:Ljava/lang/CharSequence;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

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

.field private mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "dictionaryResId"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 52
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 63
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 67
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContext:Landroid/content/Context;

    .line 68
    new-instance v2, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;

    invoke-direct {v2, p1, p2}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v0, v2, :cond_3b

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 73
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_3b
    return-void
.end method

.method private collectGarbage()V
    .registers 7

    .prologue
    .line 328
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 329
    .local v2, poolSize:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 330
    .local v1, garbageSize:I
    :goto_c
    iget v3, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v2, v3, :cond_2c

    if-lez v1, :cond_2c

    .line 331
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 332
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_29

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_29

    .line 333
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 336
    :cond_29
    add-int/lit8 v1, v1, -0x1

    .line 337
    goto :goto_c

    .line 338
    .end local v0           #garbage:Ljava/lang/CharSequence;
    :cond_2c
    iget v3, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 339
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String pool got too big: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4a
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 342
    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .registers 10
    .parameter "mLowerOriginalWord"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 264
    .local v1, originalLength:I
    if-ne v1, p4, :cond_20

    aget-char v3, p2, p3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_24

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p3, v0

    aget-char v4, p2, v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_21

    .line 272
    .end local v0           #i:I
    :cond_20
    :goto_20
    return v2

    .line 265
    .restart local v0       #i:I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 270
    :cond_24
    const/4 v2, 0x1

    goto :goto_20
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 14
    .parameter "original"
    .parameter "suggestion"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 123
    .local v5, originalLength:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 124
    .local v6, suggestionLength:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 125
    .local v3, minLength:I
    if-gt v3, v10, :cond_12

    .line 144
    :cond_11
    :goto_11
    return v7

    .line 126
    :cond_12
    const/4 v2, 0x0

    .line 127
    .local v2, matching:I
    const/4 v1, 0x0

    .line 129
    .local v1, lessMatching:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v3, :cond_43

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v4

    .line 131
    .local v4, origChar:C
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_30

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 129
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 134
    :cond_30
    add-int/lit8 v9, v0, 0x1

    if-ge v9, v6, :cond_2d

    add-int/lit8 v9, v0, 0x1

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_2d

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 139
    .end local v4           #origChar:C
    :cond_43
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 141
    const/4 v9, 0x4

    if-gt v3, v9, :cond_4e

    .line 142
    if-ge v2, v10, :cond_11

    move v7, v8

    goto :goto_11

    .line 144
    :cond_4e
    div-int/lit8 v9, v3, 0x2

    if-gt v2, v9, :cond_11

    move v7, v8

    goto :goto_11
.end method

.method private removeDupes()V
    .registers 8

    .prologue
    .line 231
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 232
    .local v4, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_a

    .line 248
    :cond_9
    return-void

    .line 233
    :cond_a
    const/4 v1, 0x1

    .line 235
    .local v1, i:I
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 236
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 238
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_18
    if-ge v2, v1, :cond_2b

    .line 239
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 240
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 241
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Suggest;->removeFromSuggestions(I)V

    .line 242
    add-int/lit8 v1, v1, -0x1

    .line 246
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    .line 247
    goto :goto_b

    .line 238
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method private removeFromSuggestions(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 252
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_13

    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_13

    .line 253
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_13
    return-void
.end method


# virtual methods
.method public addWord([CIII)Z
    .registers 14
    .parameter "word"
    .parameter "offset"
    .parameter "length"
    .parameter "freq"

    .prologue
    const/4 v8, 0x1

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, pos:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 278
    .local v4, priorities:[I
    iget v3, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 280
    .local v3, prefMaxSuggestions:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    invoke-direct {p0, v6, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 281
    const/4 v2, 0x0

    .line 295
    :cond_f
    if-lt v2, v3, :cond_33

    .line 313
    :cond_11
    :goto_11
    return v8

    .line 284
    :cond_12
    add-int/lit8 v6, v3, -0x1

    aget v6, v4, v6

    if-ge v6, p4, :cond_11

    .line 285
    :goto_18
    if-ge v2, v3, :cond_f

    .line 286
    aget v6, v4, v2

    if-lt v6, p4, :cond_f

    aget v6, v4, v2

    if-ne v6, p4, :cond_30

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt p3, v6, :cond_f

    .line 291
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 298
    :cond_33
    add-int/lit8 v6, v2, 0x1

    sub-int v7, v3, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    aput p4, v4, v2

    .line 301
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 302
    .local v1, poolSize:I
    if-lez v1, :cond_77

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    .line 304
    .local v5, sb:Ljava/lang/StringBuilder;
    :goto_51
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 305
    invoke-virtual {v5, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 306
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 307
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_11

    .line 308
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 309
    .local v0, garbage:Ljava/lang/CharSequence;
    instance-of v6, v0, Ljava/lang/StringBuilder;

    if-eqz v6, :cond_11

    .line 310
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 302
    .end local v0           #garbage:Ljava/lang/CharSequence;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_51
.end method

.method public getCorrectionMode()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Z)Ljava/util/List;
    .registers 14
    .parameter "view"
    .parameter "wordComposer"
    .parameter "includeTypedWordIfValid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 159
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 160
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage()V

    .line 161
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    .line 162
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/Suggest;->mIncludeTypedWordIfValid:Z

    .line 165
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 166
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    if-eqz v5, :cond_10d

    .line 167
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 168
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 173
    :goto_2d
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v5

    if-le v5, v6, :cond_72

    .line 174
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v5, :cond_5f

    .line 175
    :cond_3b
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v5, :cond_44

    .line 176
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v5, p2, p0}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 178
    :cond_44
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v5, :cond_4d

    .line 179
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v5, p2, p0}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 182
    :cond_4d
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5f

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 183
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 186
    :cond_5f
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v5, p2, p0}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 187
    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v9, :cond_72

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_72

    .line 188
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 191
    :cond_72
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    if-eqz v5, :cond_81

    .line 192
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    :cond_81
    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v9, :cond_9f

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_9f

    .line 197
    iget-object v8, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {p0, v8, v5}, Lcom/android/inputmethod/latin/Suggest;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 198
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 202
    :cond_9f
    const/4 v2, 0x0

    .line 203
    .local v2, i:I
    const/4 v3, 0x6

    .line 205
    .local v3, max:I
    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v6, :cond_a6

    const/4 v3, 0x1

    .line 206
    :cond_a6
    :goto_a6
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_119

    if-ge v2, v3, :cond_119

    .line 207
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, suggestedWord:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v7, v5, p1}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, autoText:Ljava/lang/CharSequence;
    if-eqz v0, :cond_113

    move v1, v6

    .line 213
    .local v1, canAdd:Z
    :goto_cb
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_115

    move v5, v6

    :goto_da
    and-int/2addr v1, v5

    .line 215
    if-eqz v1, :cond_fd

    add-int/lit8 v5, v2, 0x1

    iget-object v8, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_fd

    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-eq v5, v6, :cond_fd

    .line 216
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_117

    move v5, v6

    :goto_fc
    and-int/2addr v1, v5

    .line 218
    :cond_fd
    if-eqz v1, :cond_10a

    .line 219
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 220
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v5, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    .line 223
    :cond_10a
    add-int/lit8 v2, v2, 0x1

    .line 224
    goto :goto_a6

    .line 170
    .end local v0           #autoText:Ljava/lang/CharSequence;
    .end local v1           #canAdd:Z
    .end local v2           #i:I
    .end local v3           #max:I
    .end local v4           #suggestedWord:Ljava/lang/String;
    :cond_10d
    const-string v5, ""

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto/16 :goto_2d

    .restart local v0       #autoText:Ljava/lang/CharSequence;
    .restart local v2       #i:I
    .restart local v3       #max:I
    .restart local v4       #suggestedWord:Ljava/lang/String;
    :cond_113
    move v1, v7

    .line 211
    goto :goto_cb

    .restart local v1       #canAdd:Z
    :cond_115
    move v5, v7

    .line 213
    goto :goto_da

    :cond_117
    move v5, v7

    .line 216
    goto :goto_fc

    .line 226
    .end local v0           #autoText:Ljava/lang/CharSequence;
    .end local v1           #canAdd:Z
    .end local v4           #suggestedWord:Ljava/lang/String;
    :cond_119
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->removeDupes()V

    .line 227
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    return-object v5
.end method

.method public hasMinimalCorrection()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "word"

    .prologue
    const/4 v0, 0x0

    .line 317
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 320
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_17
    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-lez v1, :cond_27

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_27
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_33
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3f
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public reloadMainDict(I)V
    .registers 4
    .parameter "dictionaryResId"

    .prologue
    .line 345
    new-instance v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;

    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 346
    return-void
.end method

.method public setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter "autoDictionary"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 100
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter "userDictionary"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 96
    return-void
.end method

.method public setCorrectionMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 81
    return-void
.end method

.method public setMaxSuggestions(I)V
    .registers 5
    .parameter "maxSuggestions"

    .prologue
    .line 109
    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    const/16 v1, 0x64

    if-le p1, v1, :cond_f

    .line 110
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSuggestions must be between 1 and 100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_f
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 113
    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 114
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage()V

    .line 115
    :goto_1a
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v1, v2, :cond_31

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 119
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_31
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter "userDictionary"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 89
    return-void
.end method
