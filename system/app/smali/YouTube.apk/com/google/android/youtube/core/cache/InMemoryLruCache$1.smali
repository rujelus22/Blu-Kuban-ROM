.class Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/b;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/b;IFZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/b;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/b;

    iget-object v0, v0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/cache/b;->a(Lcom/google/android/youtube/core/cache/b;)I

    move-result v1

    if-le v0, v1, :cond_19

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_19
    const/4 v0, 0x0

    return v0
.end method
