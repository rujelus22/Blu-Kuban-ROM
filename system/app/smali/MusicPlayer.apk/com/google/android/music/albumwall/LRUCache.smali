.class public Lcom/google/android/music/albumwall/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TKey;TValue;>;"
    }
.end annotation


# instance fields
.field private mCapacity:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter "capacity"

    .prologue
    .line 16
    .local p0, this:Lcom/google/android/music/albumwall/LRUCache;,"Lcom/google/android/music/albumwall/LRUCache<TKey;TValue;>;"
    mul-int/lit8 v0, p1, 0x2

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 17
    iput p1, p0, Lcom/google/android/music/albumwall/LRUCache;->mCapacity:I

    .line 18
    return-void
.end method


# virtual methods
.method public final ensureCapacity(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 26
    .local p0, this:Lcom/google/android/music/albumwall/LRUCache;,"Lcom/google/android/music/albumwall/LRUCache<TKey;TValue;>;"
    iget v0, p0, Lcom/google/android/music/albumwall/LRUCache;->mCapacity:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/albumwall/LRUCache;->mCapacity:I

    .line 27
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TKey;TValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/google/android/music/albumwall/LRUCache;,"Lcom/google/android/music/albumwall/LRUCache<TKey;TValue;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TKey;TValue;>;"
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/LRUCache;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/albumwall/LRUCache;->mCapacity:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
