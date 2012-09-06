.class Lcom/google/android/imageloader/LruCache;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAX_CAPACITY:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 34
    .local p0, this:Lcom/google/android/imageloader/LruCache;,"Lcom/google/android/imageloader/LruCache<TK;TV;>;"
    const/16 v0, 0x20

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 35
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/imageloader/LruCache;,"Lcom/google/android/imageloader/LruCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/android/imageloader/LruCache;->size()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
