.class public Lcom/google/android/apps/books/util/GenerationCache;
.super Ljava/lang/Object;
.source "GenerationCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/GenerationCache$1;,
        Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,
        Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mMaxCapacity:I

.field private mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mOnRemove:Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "maxCapacity"

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mMaxCapacity:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method private attachToCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    .local p1, entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    if-nez v0, :cond_9

    .line 160
    iput-object p1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object p1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 168
    :goto_8
    return-void

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object p1, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 166
    iput-object p1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    goto :goto_8
.end method

.method private detachFromCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    .local p1, entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    if-eqz v0, :cond_a

    .line 173
    iget-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iget-object v1, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v1, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 177
    :cond_a
    iget-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    if-eqz v0, :cond_14

    .line 178
    iget-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iget-object v1, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v1, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 181
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    if-ne v0, p1, :cond_1c

    .line 182
    iget-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 185
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    if-ne v0, p1, :cond_24

    .line 186
    iget-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 190
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v0, p1, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 191
    return-void
.end method

.method private removeOldest()V
    .registers 2

    .prologue
    .line 152
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    if-eqz v0, :cond_b

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iget-object v0, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/util/GenerationCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_b
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOnRemove:Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener;

    if-eqz v0, :cond_10

    .line 71
    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/books/util/GenerationCache;->removeOldest()V

    goto :goto_4

    .line 75
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOldest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    iput-object v0, p0, Lcom/google/android/apps/books/util/GenerationCache;->mYoungest:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 78
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 89
    .local v0, entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    if-nez v0, :cond_c

    .line 90
    const/4 v1, 0x0

    .line 99
    :goto_b
    return-object v1

    .line 96
    :cond_c
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/GenerationCache;->detachFromCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/GenerationCache;->attachToCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V

    .line 99
    iget-object v1, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->value:Ljava/lang/Object;

    goto :goto_b
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/books/util/GenerationCache;->mMaxCapacity:I

    if-ne v1, v2, :cond_d

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/books/util/GenerationCache;->removeOldest()V

    .line 115
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 116
    .local v0, entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    if-eqz v0, :cond_27

    .line 117
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/GenerationCache;->detachFromCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V

    .line 122
    :goto_1a
    iput-object p1, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->key:Ljava/lang/Object;

    .line 123
    iput-object p2, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->value:Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/GenerationCache;->attachToCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V

    .line 127
    return-void

    .line 119
    :cond_27
    new-instance v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .end local v0           #entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;-><init>(Lcom/google/android/apps/books/util/GenerationCache$1;)V

    .restart local v0       #entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    goto :goto_1a
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache;,"Lcom/google/android/apps/books/util/GenerationCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lcom/google/android/apps/books/util/GenerationCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;

    .line 138
    .local v0, entry:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    if-nez v0, :cond_c

    .line 139
    const/4 v1, 0x0

    .line 148
    :goto_b
    return-object v1

    .line 142
    :cond_c
    iget-object v1, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->value:Ljava/lang/Object;

    .line 143
    .local v1, value:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOnRemove:Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener;

    if-eqz v2, :cond_19

    .line 144
    iget-object v2, p0, Lcom/google/android/apps/books/util/GenerationCache;->mOnRemove:Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener;

    iget-object v3, v0, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;->key:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/books/util/GenerationCache$OnEntryRemovedListener;->onEntryRemoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    :cond_19
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/GenerationCache;->detachFromCache(Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;)V

    goto :goto_b
.end method
