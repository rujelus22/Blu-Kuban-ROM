.class Lcom/android/email/provider/ContentCache$CacheCounter;
.super Ljava/lang/Object;
.source "ContentCache.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
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
        "Lcom/android/email/provider/ContentCache$CacheCounter;",
        ">;"
    }
.end annotation


# instance fields
.field count:Ljava/lang/Integer;


# virtual methods
.method public compareTo(Lcom/android/email/provider/ContentCache$CacheCounter;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 728
    iget-object v0, p1, Lcom/android/email/provider/ContentCache$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget-object v0, p1, Lcom/android/email/provider/ContentCache$CacheCounter;->count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CacheCounter;->count:Ljava/lang/Integer;

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_f

    :cond_18
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 717
    check-cast p1, Lcom/android/email/provider/ContentCache$CacheCounter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/provider/ContentCache$CacheCounter;->compareTo(Lcom/android/email/provider/ContentCache$CacheCounter;)I

    move-result v0

    return v0
.end method
