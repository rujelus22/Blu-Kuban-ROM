.class public final LK/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/d;


# static fields
.field private static final a:LK/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, LK/b;

    invoke-direct {v0}, LK/b;-><init>()V

    sput-object v0, LK/b;->a:LK/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LK/c;III)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-interface {p1, p2, p3}, LK/c;->c(II)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1, p3, p4}, LK/c;->c(II)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return p3

    :cond_d
    invoke-interface {p1, p2, p4}, LK/c;->c(II)Z

    move-result v0

    if-eqz v0, :cond_15

    move p3, p4

    goto :goto_c

    :cond_15
    move p3, p2

    goto :goto_c

    :cond_17
    invoke-interface {p1, p4, p3}, LK/c;->c(II)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1, p4, p2}, LK/c;->c(II)Z

    move-result v0

    if-eqz v0, :cond_25

    move p3, p4

    goto :goto_c

    :cond_25
    move p3, p2

    goto :goto_c
.end method

.method public static a()LK/d;
    .registers 1

    .prologue
    .line 17
    sget-object v0, LK/b;->a:LK/d;

    return-object v0
.end method

.method private b(LK/c;II)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    if-le v0, v1, :cond_38

    .line 97
    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x8

    .line 98
    mul-int/lit8 v1, v0, 0x0

    add-int/2addr v1, p2

    mul-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v1, v2, v3}, LK/b;->a(LK/c;III)I

    move-result v1

    .line 99
    mul-int/lit8 v2, v0, 0x3

    add-int/2addr v2, p2

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    mul-int/lit8 v4, v0, 0x5

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v2, v3, v4}, LK/b;->a(LK/c;III)I

    move-result v2

    .line 100
    mul-int/lit8 v3, v0, 0x6

    add-int/2addr v3, p2

    mul-int/lit8 v4, v0, 0x7

    add-int/2addr v4, p2

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v3, v4, v0}, LK/b;->a(LK/c;III)I

    move-result v0

    .line 101
    invoke-direct {p0, p1, v1, v2, v0}, LK/b;->a(LK/c;III)I

    move-result v0

    .line 103
    :goto_37
    return v0

    :cond_38
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, LK/b;->a(LK/c;III)I

    move-result v0

    goto :goto_37
.end method

.method private b(LK/c;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_d

    .line 115
    add-int v1, p2, v0

    add-int v2, p3, v0

    invoke-interface {p1, v1, v2}, LK/c;->d(II)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_d
    return-void
.end method


# virtual methods
.method public a(LK/c;II)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    move v5, p3

    move v6, p2

    :cond_2
    :goto_2
    sub-int v0, v5, v6

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8a

    .line 23
    invoke-direct {p0, p1, v6, v5}, LK/b;->b(LK/c;II)I

    move-result v0

    move v2, v5

    move v3, v5

    move v4, v6

    move v1, v6

    .line 39
    :goto_10
    if-gt v4, v3, :cond_29

    invoke-interface {p1, v0, v4}, LK/c;->c(II)Z

    move-result v7

    if-nez v7, :cond_29

    .line 40
    invoke-interface {p1, v4, v0}, LK/c;->c(II)Z

    move-result v7

    if-nez v7, :cond_96

    .line 42
    invoke-interface {p1, v1, v4}, LK/c;->d(II)V

    .line 43
    add-int/lit8 v0, v1, 0x1

    .line 45
    :goto_23
    add-int/lit8 v4, v4, 0x1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_10

    .line 47
    :cond_29
    :goto_29
    if-gt v4, v3, :cond_42

    invoke-interface {p1, v3, v0}, LK/c;->c(II)Z

    move-result v7

    if-nez v7, :cond_42

    .line 48
    invoke-interface {p1, v0, v3}, LK/c;->c(II)Z

    move-result v7

    if-nez v7, :cond_92

    .line 50
    invoke-interface {p1, v3, v2}, LK/c;->d(II)V

    .line 51
    add-int/lit8 v0, v2, -0x1

    .line 53
    :goto_3c
    add-int/lit8 v3, v3, -0x1

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_29

    .line 55
    :cond_42
    if-le v4, v3, :cond_77

    .line 68
    sub-int v0, v1, v6

    sub-int v7, v4, v1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v7, v4, v0

    invoke-direct {p0, p1, v6, v7, v0}, LK/b;->b(LK/c;III)V

    .line 69
    sub-int v0, v2, v3

    sub-int v7, v5, v2

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v7, v5, 0x1

    sub-int/2addr v7, v0

    invoke-direct {p0, p1, v4, v7, v0}, LK/b;->b(LK/c;III)V

    .line 73
    sub-int v0, v4, v1

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 74
    add-int/lit8 v1, v5, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 78
    sub-int v2, v0, v6

    sub-int v3, v5, v1

    if-ge v2, v3, :cond_86

    move v8, v6

    move v6, v1

    move v1, v8

    .line 89
    :goto_71
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, p1, v1, v0}, LK/b;->a(LK/c;II)V

    goto :goto_2

    .line 56
    :cond_77
    if-ne v4, v0, :cond_82

    move v0, v3

    .line 61
    :cond_7a
    :goto_7a
    invoke-interface {p1, v4, v3}, LK/c;->d(II)V

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 58
    :cond_82
    if-ne v3, v0, :cond_7a

    move v0, v4

    .line 59
    goto :goto_7a

    :cond_86
    move v8, v5

    move v5, v0

    move v0, v8

    .line 85
    goto :goto_71

    .line 91
    :cond_8a
    invoke-static {}, LK/a;->a()LK/d;

    move-result-object v0

    invoke-interface {v0, p1, v6, v5}, LK/d;->a(LK/c;II)V

    .line 92
    return-void

    :cond_92
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_3c

    :cond_96
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_23
.end method
