.class Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/c;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/c;IFZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/c;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/c;

    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Lcom/google/android/youtube/core/cache/c;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
