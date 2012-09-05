.class public Lcom/android/inputmethod/latin/UserDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final INDEX_FREQUENCY:I = 0x2

.field private static final INDEX_WORD:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mObserver:Landroid/database/ContentObserver;

.field private mRequiresReload:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frequency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/UserDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/UserDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/latin/UserDictionary;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mRequiresReload:Z

    return p1
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->clearDictionary()V

    .line 111
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I

    move-result v1

    .line 112
    .local v1, maxWordLength:I
    invoke-static {p1}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 113
    :goto_13
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_30

    .line 114
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, word:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 118
    .local v0, frequency:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2c

    .line 119
    invoke-super {p0, v2, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 121
    :cond_2c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    .line 124
    .end local v0           #frequency:I
    .end local v2           #word:Ljava/lang/String;
    :cond_30
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 125
    return-void
.end method

.method private declared-synchronized loadDictionary()V
    .registers 9

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(locale IS NULL) or (locale=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;->addWords(Landroid/database/Cursor;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mRequiresReload:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 73
    monitor-exit p0

    return-void

    .line 68
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .registers 5
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 87
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_23

    move-result v1

    if-lt v0, v1, :cond_14

    .line 94
    :goto_12
    monitor-exit p0

    return-void

    .line 89
    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mRequiresReload:Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_12

    .line 85
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 62
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 65
    :cond_15
    monitor-exit p0

    return-void

    .line 61
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 4
    .parameter "codes"
    .parameter "callback"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 99
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 105
    :cond_8
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit p0

    return v0

    .line 104
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
