.class public final Lbk/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 127
    invoke-static {v1, v3}, Lbk/y;->a(II)I

    move-result v0

    sput v0, Lbk/y;->a:I

    .line 129
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lbk/y;->a(II)I

    move-result v0

    sput v0, Lbk/y;->b:I

    .line 131
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lbk/y;->a(II)I

    move-result v0

    sput v0, Lbk/y;->c:I

    .line 133
    invoke-static {v3, v2}, Lbk/y;->a(II)I

    move-result v0

    sput v0, Lbk/y;->d:I

    return-void
.end method

.method static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 32
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 37
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
