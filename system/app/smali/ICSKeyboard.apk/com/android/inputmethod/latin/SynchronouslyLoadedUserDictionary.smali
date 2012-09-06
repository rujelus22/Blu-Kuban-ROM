.class public Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;
.super Lcom/android/inputmethod/latin/UserDictionary;
.source "SynchronouslyLoadedUserDictionary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .parameter "context"
    .parameter "locale"
    .parameter "alsoUseMoreRestrictiveLocales"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .registers 5
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->blockingReloadDictionaryIfRequired()V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->blockingReloadDictionaryIfRequired()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 44
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
