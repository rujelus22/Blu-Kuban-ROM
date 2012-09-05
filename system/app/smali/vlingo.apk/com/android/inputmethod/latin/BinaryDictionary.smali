.class public Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field private static final ENABLE_MISSED_CHARACTERS:Z = true

.field private static final MAX_ALTERNATIVES:I = 0x10

.field private static final MAX_WORDS:I = 0x10

.field public static final MAX_WORD_LENGTH:I = 0x30

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# instance fields
.field private mFrequencies:[I

.field private mInputCodes:[I

.field private mNativeDict:I

.field private mOutputChars:[C

.field private mWordCallback:Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "resId"

    .prologue
    const/16 v1, 0x300

    .line 90
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 42
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    .line 91
    if-eqz p2, :cond_18

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Landroid/content/Context;I)V

    .line 94
    :cond_18
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getSuggestionsNative(I[II[C[IIIII)I
.end method

.method public static init()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 49
    .local v0, loaded:Z
    if-nez v0, :cond_9

    .line 50
    const-string v1, "jni_latinime"

    invoke-static {v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadJNILibrary(Ljava/lang/String;)Z

    move-result v0

    .line 53
    :cond_9
    if-nez v0, :cond_11

    .line 54
    const-string v1, "libjni_latinime"

    invoke-static {v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadJNILibrary(Ljava/lang/String;)Z

    move-result v0

    .line 58
    :cond_11
    if-nez v0, :cond_16

    .line 61
    invoke-static {}, Lcom/vlingo/client/keyboard/NBestSuggest;->disableSuggestion()V

    .line 68
    :cond_16
    return-void
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v3, 0x2

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 106
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, assetName:Ljava/lang/String;
    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Landroid/content/res/AssetManager;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 113
    return-void
.end method

.method static loadJNILibrary(Ljava/lang/String;)Z
    .registers 2
    .parameter "libraryPath"

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_5

    .line 77
    const/4 v0, 0x1

    .line 82
    :goto_4
    return v0

    .line 78
    :catch_5
    move-exception v0

    .line 82
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private native openNative(Landroid/content/res/AssetManager;Ljava/lang/String;II)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_d

    .line 173
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(I)V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 176
    :cond_d
    monitor-exit p0

    return-void

    .line 172
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 181
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 182
    return-void
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 23
    .parameter "codes"
    .parameter "callback"

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-nez v3, :cond_7

    .line 161
    :cond_6
    return-void

    .line 118
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/BinaryDictionary;->mWordCallback:Lcom/android/inputmethod/latin/Dictionary$WordCallback;

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v6

    .line 121
    .local v6, codesSize:I
    const/16 v3, 0x2f

    if-gt v6, v3, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 124
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1e
    if-ge v15, v6, :cond_3a

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v13

    .line 126
    .local v13, alternatives:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v5, v15, 0x10

    array-length v7, v13

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v13, v3, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int/lit8 v15, v15, 0x1

    goto :goto_1e

    .line 129
    .end local v13           #alternatives:[I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 132
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    const/16 v9, 0x30

    const/16 v10, 0x10

    const/16 v11, 0x10

    const/4 v12, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII)I

    move-result v14

    .line 140
    .local v14, count:I
    const/4 v3, 0x5

    if-ge v14, v3, :cond_91

    .line 141
    const/4 v12, 0x0

    .local v12, skip:I
    :goto_6b
    if-ge v12, v6, :cond_91

    .line 142
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    const/16 v9, 0x30

    const/16 v10, 0x10

    const/16 v11, 0x10

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII)I

    move-result v19

    .line 145
    .local v19, tempCount:I
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 146
    if-lez v19, :cond_b1

    .line 150
    .end local v12           #skip:I
    .end local v19           #tempCount:I
    :cond_91
    const/16 v16, 0x0

    .local v16, j:I
    :goto_93
    move/from16 v0, v16

    if-ge v0, v14, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    aget v3, v3, v16

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6

    .line 152
    mul-int/lit8 v18, v16, 0x30

    .line 153
    .local v18, start:I
    const/16 v17, 0x0

    .line 154
    .local v17, len:I
    :goto_a4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    add-int v4, v18, v17

    aget-char v3, v3, v4

    if-eqz v3, :cond_b4

    .line 155
    add-int/lit8 v17, v17, 0x1

    goto :goto_a4

    .line 141
    .end local v16           #j:I
    .end local v17           #len:I
    .end local v18           #start:I
    .restart local v12       #skip:I
    .restart local v19       #tempCount:I
    :cond_b1
    add-int/lit8 v12, v12, 0x1

    goto :goto_6b

    .line 157
    .end local v12           #skip:I
    .end local v19           #tempCount:I
    .restart local v16       #j:I
    .restart local v17       #len:I
    .restart local v18       #start:I
    :cond_b4
    if-lez v17, :cond_c9

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    aget v4, v4, v16

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIII)Z

    .line 150
    :cond_c9
    add-int/lit8 v16, v16, 0x1

    goto :goto_93
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 165
    iget v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-nez v2, :cond_6

    .line 168
    :cond_5
    :goto_5
    return v1

    .line 166
    :cond_6
    if-eqz p1, :cond_5

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 168
    .local v0, chars:[C
    iget v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_5
.end method
