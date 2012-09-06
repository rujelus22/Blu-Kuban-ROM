.class public Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "DictionaryPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mClosed:Z

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSize:I

.field private final mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

.field private mSize:I


# direct methods
.method public constructor <init>(ILcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/util/Locale;)V
    .registers 5
    .parameter "maxSize"
    .parameter "service"
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mMaxSize:I

    .line 37
    iput-object p2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    .line 38
    iput-object p3, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mLocale:Ljava/util/Locale;

    .line 39
    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    .line 40
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13

    .line 73
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->clear()V

    .line 68
    monitor-exit p0

    .line 75
    return-void

    .line 70
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    .line 71
    .local v0, dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    iget-object v2, v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_8

    .line 68
    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z
    .registers 3
    .parameter "dict"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    if-eqz v0, :cond_b

    .line 80
    iget-object v0, p1, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v0

    return v0
.end method

.method public take()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    .line 46
    .local v0, dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    if-eqz v0, :cond_9

    .line 53
    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :goto_8
    return-object v0

    .line 47
    .restart local v0       #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_9
    monitor-enter p0

    .line 48
    :try_start_a
    iget v1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    iget v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mMaxSize:I

    if-lt v1, v2, :cond_19

    .line 50
    invoke-super {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    monitor-exit p0

    move-object v0, v1

    goto :goto_8

    .line 52
    :cond_19
    iget v1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    .line 53
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->createDictAndProximity(Ljava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v0

    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    monitor-exit p0

    goto :goto_8

    .line 47
    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->take()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v0

    return-object v0
.end method

.method public takeOrGetNull()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .registers 3

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->take()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 63
    :goto_4
    return-object v1

    .line 62
    :catch_5
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_4
.end method
