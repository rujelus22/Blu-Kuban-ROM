.class public Lcom/android/inputmethod/latin/ContactsDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "ContactsDictionary.java"


# static fields
.field private static final FREQUENCY_FOR_CONTACTS:I = 0x28

.field private static final FREQUENCY_FOR_CONTACTS_BIGRAM:I = 0x5a

.field private static final INDEX_NAME:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ContactsDictionary"


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 36
    const-string v2, "display_name"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "dicTypeId"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->registerObserver(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionary()V

    .line 57
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 15
    .parameter "cursor"

    .prologue
    const/4 v12, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->clearDictionary()V

    .line 120
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getMaxWordLength()I

    move-result v5

    .line 122
    .local v5, maxWordLength:I
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 123
    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 166
    :cond_14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 170
    :goto_17
    return-void

    .line 124
    :cond_18
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_30

    const/4 v10, -0x1

    const/16 v11, 0x40

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v10, v11, :cond_30

    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 128
    .local v4, len:I
    const/4 v7, 0x0

    .line 131
    .local v7, prevWord:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    if-lt v2, v4, :cond_3d

    .line 163
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v7           #prevWord:Ljava/lang/String;
    :cond_30
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_33} :catch_34

    goto :goto_e

    .line 167
    .end local v6           #name:Ljava/lang/String;
    :catch_34
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v10, "ContactsDictionary"

    const-string v11, "Contacts DB is having problems"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 132
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #i:I
    .restart local v4       #len:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #prevWord:Ljava/lang/String;
    :cond_3d
    :try_start_3d
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 134
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_49
    if-lt v3, v4, :cond_6d

    .line 144
    :cond_4b
    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, word:Ljava/lang/String;
    add-int/lit8 v2, v3, -0x1

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 152
    .local v9, wordLen:I
    if-ge v9, v5, :cond_6a

    if-le v9, v12, :cond_6a

    .line 153
    const/16 v10, 0x28

    invoke-super {p0, v8, v10}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 154
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_69

    .line 156
    const/16 v10, 0x5a

    .line 155
    invoke-super {p0, v7, v8, v10}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)I

    .line 158
    :cond_69
    move-object v7, v8

    .line 131
    .end local v3           #j:I
    .end local v8           #word:Ljava/lang/String;
    .end local v9           #wordLen:I
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 135
    .restart local v3       #j:I
    :cond_6d
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    .local v0, c:C
    const/16 v10, 0x2d

    if-eq v0, v10, :cond_7f

    .line 138
    const/16 v10, 0x27

    if-eq v0, v10, :cond_7f

    .line 139
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z
    :try_end_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_7c} :catch_34

    move-result v10

    if-eqz v10, :cond_4b

    .line 134
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_49
.end method

.method private declared-synchronized registerObserver(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v1, :cond_7

    .line 71
    :goto_5
    monitor-exit p0

    return-void

    .line 63
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/ContactsDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/ContactsDictionary$1;-><init>(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 62
    .end local v0           #cres:Landroid/content/ContentResolver;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 80
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

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

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 5
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 115
    :goto_6
    return-void

    .line 114
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_6
.end method

.method public loadDictionaryAsync()V
    .registers 9

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_18

    .line 101
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/ContactsDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_18} :catch_1f

    .line 106
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    .line 107
    return-void

    .line 103
    :catch_1f
    move-exception v7

    .line 104
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "ContactsDictionary"

    const-string v1, "Contacts DB is having problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public reopen(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->registerObserver(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public startDictionaryLoadingTaskLocked()V
    .registers 7

    .prologue
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 90
    iget-wide v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    .line 91
    :cond_17
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 93
    :cond_1a
    return-void
.end method
