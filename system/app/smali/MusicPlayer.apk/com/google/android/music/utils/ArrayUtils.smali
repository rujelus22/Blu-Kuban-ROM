.class public Lcom/google/android/music/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    .local p0, this:Lcom/google/android/music/utils/ArrayUtils;,"Lcom/google/android/music/utils/ArrayUtils<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs combine([[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, arrays:[[Ljava/lang/Object;,"[[TT;"
    const/4 v4, 0x0

    .line 12
    if-eqz p0, :cond_6

    array-length v9, p0

    if-nez v9, :cond_7

    .line 39
    :cond_6
    return-object v4

    .line 16
    :cond_7
    const/4 v8, 0x0

    .line 17
    .local v8, totalSize:I
    const/4 v2, 0x0

    .line 18
    .local v2, componentType:Ljava/lang/Class;
    move-object v0, p0

    .local v0, arr$:[[Ljava/lang/Object;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_c
    if-ge v5, v6, :cond_1f

    aget-object v1, v0, v5

    .line 19
    .local v1, array:[Ljava/lang/Object;,"[TT;"
    if-eqz v1, :cond_1c

    .line 20
    array-length v9, v1

    add-int/2addr v8, v9

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 18
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 24
    .end local v1           #array:[Ljava/lang/Object;,"[TT;"
    :cond_1f
    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    .line 28
    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v4, v9

    check-cast v4, [Ljava/lang/Object;

    .line 31
    .local v4, finalArray:[Ljava/lang/Object;,"[TT;"
    const/4 v3, 0x0

    .line 32
    .local v3, currentPos:I
    move-object v0, p0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v6, :cond_6

    aget-object v1, v0, v5

    .line 33
    .restart local v1       #array:[Ljava/lang/Object;,"[TT;"
    if-eqz v1, :cond_3d

    .line 34
    array-length v7, v1

    .line 35
    .local v7, length:I
    const/4 v9, 0x0

    invoke-static {v1, v9, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    array-length v9, v1

    add-int/2addr v3, v9

    .line 32
    .end local v7           #length:I
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_30
.end method
