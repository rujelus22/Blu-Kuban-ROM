.class Lcom/google/common/base/CharsetCache$1;
.super Ljava/util/LinkedHashMap;
.source "CharsetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharsetCache;-><init>(Lcom/google/common/base/Function;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/CharsetCache;

.field final synthetic val$missCacheSize:I


# direct methods
.method constructor <init>(Lcom/google/common/base/CharsetCache;IFZI)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/common/base/CharsetCache$1;->this$0:Lcom/google/common/base/CharsetCache;

    iput p5, p0, Lcom/google/common/base/CharsetCache$1;->val$missCacheSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

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
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/common/base/CharsetCache$1;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/base/CharsetCache$1;->val$missCacheSize:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
