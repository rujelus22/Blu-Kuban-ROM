.class public Lcom/android/inputmethod/compat/ArraysCompatUtils;
.super Ljava/lang/Object;
.source "ArraysCompatUtils.java"


# static fields
.field private static final METHOD_Arrays_binarySearch:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 24
    const-class v0, Ljava/util/Arrays;

    const-string v1, "binarySearch"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [I

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/inputmethod/compat/ArraysCompatUtils;->METHOD_Arrays_binarySearch:Ljava/lang/reflect/Method;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch([IIII)I
    .registers 11
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 27
    sget-object v1, Lcom/android/inputmethod/compat/ArraysCompatUtils;->METHOD_Arrays_binarySearch:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_31

    .line 28
    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/compat/ArraysCompatUtils;->METHOD_Arrays_binarySearch:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 28
    invoke-static {v1, v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, index:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #index:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 32
    :goto_30
    return v1

    :cond_31
    invoke-static {p0, p1, p2, p3}, Lcom/android/inputmethod/compat/ArraysCompatUtils;->compatBinarySearch([IIII)I

    move-result v1

    goto :goto_30
.end method

.method static compatBinarySearch([IIII)I
    .registers 8
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 38
    if-le p1, p2, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 39
    :cond_8
    if-ltz p1, :cond_d

    array-length v2, p0

    if-le p2, v2, :cond_13

    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 41
    :cond_13
    sub-int v2, p2, p1

    new-array v1, v2, [I

    .line 42
    .local v1, work:[I
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v1, p3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 44
    .local v0, index:I
    if-ltz v0, :cond_25

    .line 45
    add-int v2, v0, p1

    .line 47
    :goto_24
    return v2

    :cond_25
    xor-int/lit8 v2, v0, -0x1

    add-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    goto :goto_24
.end method
