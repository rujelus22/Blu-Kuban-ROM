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
    const/4 v9, 0x0

    .line 12
    array-length v8, p0

    if-nez v8, :cond_c

    .line 13
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Must supply at least 1 array to combine"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 16
    :cond_c
    const/4 v7, 0x0

    .line 17
    .local v7, totalSize:I
    move-object v0, p0

    .local v0, arr$:[[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v5, :cond_19

    aget-object v1, v0, v4

    .line 18
    .local v1, array:[Ljava/lang/Object;,"[TT;"
    array-length v8, v1

    add-int/2addr v7, v8

    .line 17
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 21
    .end local v1           #array:[Ljava/lang/Object;,"[TT;"
    :cond_19
    aget-object v8, p0, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 24
    .local v3, finalArray:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 25
    .local v2, currentPos:I
    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v5, :cond_3d

    aget-object v1, v0, v4

    .line 26
    .restart local v1       #array:[Ljava/lang/Object;,"[TT;"
    array-length v6, v1

    .line 27
    .local v6, length:I
    invoke-static {v1, v9, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length v8, v1

    add-int/2addr v2, v8

    .line 25
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 30
    .end local v1           #array:[Ljava/lang/Object;,"[TT;"
    .end local v6           #length:I
    :cond_3d
    return-object v3
.end method
