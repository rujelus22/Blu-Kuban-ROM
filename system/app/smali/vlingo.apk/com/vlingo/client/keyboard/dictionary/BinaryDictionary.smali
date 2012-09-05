.class public Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;
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

    .line 89
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mInputCodes:[I

    .line 46
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mOutputChars:[C

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mFrequencies:[I

    .line 90
    if-eqz p2, :cond_18

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->loadDictionary(Landroid/content/Context;I)V

    .line 93
    :cond_18
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getSuggestionsNative(I[II[C[IIII)I
.end method

.method public static init()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, loaded:Z
    if-nez v0, :cond_9

    .line 53
    const-string v1, "kbdict"

    invoke-static {v1}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->loadJNILibrary(Ljava/lang/String;)Z

    move-result v0

    .line 57
    :cond_9
    if-nez v0, :cond_e

    .line 60
    invoke-static {}, Lcom/vlingo/client/keyboard/NBestSuggest;->disableSuggestion()V

    .line 67
    :cond_e
    return-void
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;I)V
    .registers 13
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, assetName:Ljava/lang/String;
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 112
    .local v8, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->openNative(Ljava/io/FileDescriptor;JJII)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_25} :catch_26

    .line 120
    .end local v8           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_25
    return-void

    .line 114
    :catch_26
    move-exception v0

    goto :goto_25
.end method

.method static loadJNILibrary(Ljava/lang/String;)Z
    .registers 2
    .parameter "libraryPath"

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_5

    .line 76
    const/4 v0, 0x1

    .line 81
    :goto_4
    return v0

    .line 77
    :catch_5
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private native openNative(Ljava/io/FileDescriptor;JJII)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_d

    .line 166
    iget v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->closeNative(I)V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 169
    :cond_d
    monitor-exit p0

    return-void

    .line 165
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
    .line 173
    invoke-virtual {p0}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->close()V

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 175
    return-void
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 20
    .parameter "codes"
    .parameter "callback"

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I

    if-nez v2, :cond_7

    .line 154
    :cond_6
    return-void

    .line 125
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mWordCallback:Lcom/android/inputmethod/latin/Dictionary$WordCallback;

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v5

    .line 128
    .local v5, codesSize:I
    const/16 v2, 0x2f

    if-gt v5, v2, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mInputCodes:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 131
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1e
    if-ge v13, v5, :cond_3a

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v11

    .line 133
    .local v11, alternatives:[I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v4, v13, 0x10

    array-length v6, v11

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v11, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 136
    .end local v11           #alternatives:[I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mOutputChars:[C

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mFrequencies:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mFrequencies:[I

    const/16 v8, 0x30

    const/16 v9, 0x10

    const/16 v10, 0x10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->getSuggestionsNative(I[II[C[IIII)I

    move-result v12

    .line 143
    .local v12, count:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_67
    if-ge v14, v12, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mFrequencies:[I

    aget v2, v2, v14

    const/4 v3, 0x1

    if-lt v2, v3, :cond_6

    .line 145
    mul-int/lit8 v16, v14, 0x30

    .line 146
    .local v16, start:I
    const/4 v15, 0x0

    .line 147
    .local v15, len:I
    :goto_75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mOutputChars:[C

    add-int v3, v16, v15

    aget-char v2, v2, v3

    if-eqz v2, :cond_82

    .line 148
    add-int/lit8 v15, v15, 0x1

    goto :goto_75

    .line 150
    :cond_82
    if-lez v15, :cond_95

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mFrequencies:[I

    aget v3, v3, v14

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v2, v1, v15, v3}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIII)Z

    .line 143
    :cond_95
    add-int/lit8 v14, v14, 0x1

    goto :goto_67
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 158
    iget v2, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I

    if-nez v2, :cond_6

    .line 161
    :cond_5
    :goto_5
    return v1

    .line 159
    :cond_6
    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 161
    .local v0, chars:[C
    iget v1, p0, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/vlingo/client/keyboard/dictionary/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_5
.end method
