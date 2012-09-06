.class public Lcom/android/inputmethod/latin/DictionaryCollection;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "DictionaryCollection.java"


# instance fields
.field protected final mDictionaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, dictionaries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 50
    return-void
.end method

.method public varargs constructor <init>([Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 4
    .parameter "dictionaries"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 39
    if-nez p1, :cond_d

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 45
    :goto_c
    return-void

    .line 42
    :cond_d
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_c
.end method


# virtual methods
.method public addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 3
    .parameter "newDict"

    .prologue
    .line 80
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_7
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 77
    return-void

    .line 75
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 76
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_6
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 7
    .parameter "composer"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 64
    return-void

    .line 62
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 63
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_6
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .registers 7
    .parameter "composer"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 57
    return-void

    .line 55
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 56
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_6
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-gez v0, :cond_c

    .line 70
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 69
    :cond_c
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_b

    .line 68
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method
