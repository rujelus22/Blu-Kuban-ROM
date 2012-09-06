.class public Lcom/android/inputmethod/latin/UserDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final PROJECTION_ADD:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# instance fields
.field private final mAlsoUseMoreRestrictiveLocales:Z

.field private final mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    .line 38
    const-string v1, "word"

    aput-object v1, v0, v2

    .line 39
    const-string v1, "frequency"

    aput-object v1, v0, v3

    .line 37
    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 44
    const-string v1, "frequency"

    aput-object v1, v0, v3

    .line 45
    const-string v1, "locale"

    aput-object v1, v0, v4

    .line 42
    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_ADD:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .parameter "context"
    .parameter "locale"
    .parameter "alsoUseMoreRestrictiveLocales"

    .prologue
    .line 58
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 59
    if-nez p2, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 60
    :cond_c
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    .line 61
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, cres:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/inputmethod/latin/UserDictionary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/inputmethod/latin/UserDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 72
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 75
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_ADD:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->clearDictionary()V

    .line 226
    if-nez p1, :cond_6

    .line 243
    :goto_5
    return-void

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I

    move-result v3

    .line 228
    .local v3, maxWordLength:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 229
    const-string v5, "word"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, indexWord:I
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, indexFrequency:I
    :goto_1c
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 242
    .end local v1           #indexFrequency:I
    .end local v2           #indexWord:I
    :cond_22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 232
    .restart local v1       #indexFrequency:I
    .restart local v2       #indexWord:I
    :cond_26
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, word:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 236
    .local v0, frequency:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_37

    .line 237
    invoke-super {p0, v4, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 239
    :cond_37
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1c
.end method

.method private static resizeArray(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .parameter "oldArray"
    .parameter "newSize"

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 246
    .local v2, oldSize:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 247
    .local v0, elementType:Ljava/lang/Class;
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, newArray:Ljava/lang/Object;
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 250
    .local v3, preserveLength:I
    if-lez v3, :cond_1a

    .line 251
    invoke-static {p0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    :cond_1a
    return-object v1
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .registers 10
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getRequiresReload()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionaryAsync()V

    .line 165
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_5f

    move-result v1

    if-lt v0, v1, :cond_16

    .line 211
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 167
    :cond_16
    :try_start_16
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 170
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    .local v5, values:Landroid/content/ContentValues;
    const-string v0, "word"

    invoke-virtual {v5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "appid"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 178
    .local v6, contentResolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 179
    .local v3, client:Landroid/content/ContentProviderClient;
    if-eqz v3, :cond_14

    .line 180
    new-instance v0, Lcom/android/inputmethod/latin/UserDictionary$2;

    const-string v2, "addWord"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/UserDictionary$2;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 207
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary$2;->start()V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/UserDictionary;->setRequiresReload(Z)V
    :try_end_5e
    .catchall {:try_start_16 .. :try_end_5e} :catchall_5f

    goto :goto_14

    .line 163
    .end local v3           #client:Landroid/content/ContentProviderClient;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #contentResolver:Landroid/content/ContentResolver;
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 80
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 83
    :cond_15
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 84
    monitor-exit p0

    return-void

    .line 79
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .registers 5
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 217
    monitor-exit p0

    return-void

    .line 216
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 143
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 144
    .local v0, client:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_15

    .line 145
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 146
    const/4 v2, 0x1

    .line 148
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .registers 14

    .prologue
    const/4 v2, 0x3

    .line 93
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;

    .line 94
    .local v9, localeElements:[Ljava/lang/String;
    :goto_c
    array-length v8, v9

    .line 96
    .local v8, length:I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v0, "(locale is NULL)"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v12, request:Ljava/lang/StringBuilder;
    const-string v11, ""

    .line 100
    .local v11, localeSoFar:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_17
    if-lt v7, v8, :cond_68

    .line 119
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    if-eqz v0, :cond_9b

    if-ge v8, v2, :cond_9b

    .line 120
    const-string v0, " or (locale like ?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v0, v8, 0x1

    invoke-static {v9, v0}, Lcom/android/inputmethod/latin/UserDictionary;->resizeArray(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 125
    .local v10, localeElementsWithMoreRestrictiveLocalesIncluded:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v9, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    aput-object v0, v10, v8

    .line 126
    move-object v4, v10

    .line 135
    .end local v10           #localeElementsWithMoreRestrictiveLocalesIncluded:[Ljava/lang/String;
    .local v4, requestArguments:[Ljava/lang/String;
    :goto_46
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    const/4 v5, 0x0

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;->addWords(Landroid/database/Cursor;)V

    .line 139
    return-void

    .line 93
    .end local v4           #requestArguments:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #localeElements:[Ljava/lang/String;
    .end local v11           #localeSoFar:Ljava/lang/String;
    .end local v12           #request:Ljava/lang/StringBuilder;
    :cond_5f
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    .line 105
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v9       #localeElements:[Ljava/lang/String;
    .restart local v11       #localeSoFar:Ljava/lang/String;
    .restart local v12       #request:Ljava/lang/StringBuilder;
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v9, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, v9, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 111
    const-string v0, " or (locale=?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_17

    .line 133
    :cond_9b
    move-object v4, v9

    .restart local v4       #requestArguments:[Ljava/lang/String;
    goto :goto_46
.end method
