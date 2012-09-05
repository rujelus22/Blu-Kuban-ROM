.class Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;
.super Ljava/lang/Object;
.source "ContentCacheHashMap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheCounter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field count:Ljava/lang/Integer;


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .parameter "another"

    .prologue
    .line 753
    move-object v0, p1

    check-cast v0, Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;

    .line 754
    .local v0, x:Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;
    iget-object v1, v0, Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    iget-object v1, v0, Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;->count:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;->count:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    goto :goto_12

    :cond_1b
    const/4 v1, -0x1

    goto :goto_12
.end method
