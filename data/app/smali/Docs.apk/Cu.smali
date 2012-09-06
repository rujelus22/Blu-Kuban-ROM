.class public LCu;
.super Ljava/lang/Object;
.source "MyTextUtils.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LCu;->a:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    sput-object v0, LCu;->a:[C

    return-void
.end method

.method public static a([C)V
    .registers 3
    .parameter

    .prologue
    .line 121
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 126
    :goto_5
    return-void

    .line 123
    :cond_6
    sget-object v1, LCu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_9
    sput-object p0, LCu;->a:[C

    .line 125
    monitor-exit v1

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static a([CII)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static a(I)[C
    .registers 4
    .parameter

    .prologue
    .line 90
    sget-object v1, LCu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_3
    sget-object v0, LCu;->a:[C

    .line 92
    const/4 v2, 0x0

    sput-object v2, LCu;->a:[C

    .line 93
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 95
    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_14

    :cond_e
    invoke-static {p0}, LBZ;->b(I)I

    move-result v0

    new-array v0, v0, [C

    .line 97
    :cond_14
    return-object v0

    .line 93
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static a([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v3, 0x0

    move v1, v4

    move v2, v4

    .line 56
    :goto_4
    array-length v0, p0

    if-ge v1, v0, :cond_32

    .line 57
    aget-object v0, p0, v1

    .line 58
    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 59
    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 61
    if-ne v5, v6, :cond_2a

    .line 62
    if-nez v3, :cond_42

    .line 63
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 64
    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    move v0, v1

    .line 56
    :goto_25
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    move v2, v0

    goto :goto_4

    .line 68
    :cond_2a
    if-eqz v3, :cond_42

    .line 69
    aput-object v0, v3, v2

    .line 70
    add-int/lit8 v0, v2, 0x1

    move-object v2, v3

    goto :goto_25

    .line 75
    :cond_32
    if-eqz v3, :cond_40

    .line 76
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 77
    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :goto_3f
    return-object v0

    :cond_40
    move-object v0, p0

    goto :goto_3f

    :cond_42
    move v0, v2

    move-object v2, v3

    goto :goto_25
.end method
