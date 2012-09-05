.class public Lcom/vlingo/client/util/BoundedSizeMap;
.super Ljava/util/LinkedHashMap;
.source "BoundedSizeMap.java"


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
.field private static final serialVersionUID:J = 0x8c27399d32c76efL


# instance fields
.field private maxEntries:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter "maxEntries"

    .prologue
    .line 19
    .local p0, this:Lcom/vlingo/client/util/BoundedSizeMap;,"Lcom/vlingo/client/util/BoundedSizeMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 20
    iput p1, p0, Lcom/vlingo/client/util/BoundedSizeMap;->maxEntries:I

    .line 21
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
    .line 24
    .local p0, this:Lcom/vlingo/client/util/BoundedSizeMap;,"Lcom/vlingo/client/util/BoundedSizeMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/vlingo/client/util/BoundedSizeMap;->size()I

    move-result v0

    iget v1, p0, Lcom/vlingo/client/util/BoundedSizeMap;->maxEntries:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
