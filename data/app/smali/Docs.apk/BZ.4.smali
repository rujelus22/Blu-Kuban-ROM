.class public LBZ;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static a:[Ljava/lang/Object;

.field private static b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LBZ;->a:[Ljava/lang/Object;

    .line 33
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LBZ;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 38
    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 39
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 40
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 42
    :cond_10
    return p0

    .line 38
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static a(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 103
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_9

    .line 104
    sget-object v0, LBZ;->a:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 117
    :goto_8
    return-object v0

    .line 107
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x49

    .line 108
    sget-object v0, LBZ;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 110
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2e

    .line 111
    :cond_25
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    sget-object v2, LBZ;->b:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 117
    :cond_2e
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_8
.end method

.method public static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 54
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, LBZ;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static c(I)I
    .registers 2
    .parameter

    .prologue
    .line 58
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, LBZ;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static d(I)I
    .registers 2
    .parameter

    .prologue
    .line 62
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, LBZ;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method
