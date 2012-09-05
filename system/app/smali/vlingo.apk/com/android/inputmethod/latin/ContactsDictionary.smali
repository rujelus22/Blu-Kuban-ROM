.class public Lcom/android/inputmethod/latin/ContactsDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "ContactsDictionary.java"


# static fields
.field private static final INDEX_NAME:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;

.field private mRequiresReload:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/ContactsDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/ContactsDictionary$1;-><init>(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionary()V

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/latin/ContactsDictionary;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    return p1
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->clearDictionary()V

    .line 94
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getMaxWordLength()I

    move-result v4

    .line 96
    .local v4, maxWordLength:I
    invoke-static {p1}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 97
    :goto_13
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_62

    .line 98
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_5e

    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 104
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v3, :cond_5e

    .line 105
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 107
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_33
    if-ge v2, v3, :cond_47

    .line 108
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, c:C
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_5b

    const/16 v7, 0x27

    if-eq v0, v7, :cond_5b

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 116
    .end local v0           #c:C
    :cond_47
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, word:Ljava/lang/String;
    add-int/lit8 v1, v2, -0x1

    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v4, :cond_58

    .line 122
    const/16 v7, 0x80

    invoke-super {p0, v6, v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 104
    .end local v2           #j:I
    .end local v6           #word:Ljava/lang/String;
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 107
    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 128
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #len:I
    :cond_5e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    .line 131
    .end local v5           #name:Ljava/lang/String;
    :cond_62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 132
    return-void
.end method

.method private declared-synchronized loadDictionary()V
    .registers 10

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 67
    .local v7, now:J
    iget-wide v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    sub-long v0, v7, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 69
    :cond_18
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_30

    .line 72
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/ContactsDictionary;->addWords(Landroid/database/Cursor;)V

    .line 74
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    .line 75
    iput-wide v7, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 77
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_35
    monitor-exit p0

    return-void

    .line 66
    .end local v7           #now:J
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 60
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 63
    :cond_15
    monitor-exit p0

    return-void

    .line 59
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
    .line 81
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionary()V

    .line 82
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 83
    monitor-exit p0

    return-void

    .line 81
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionary()V

    .line 88
    :cond_8
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit p0

    return v0

    .line 87
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
