.class public final LEX;
.super Ljava/lang/Object;
.source "Colors.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 25
    if-nez p0, :cond_15

    .line 26
    const/16 v0, 0x40

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 32
    :goto_14
    return v0

    .line 28
    :cond_15
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x2

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x2

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x2

    .line 32
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_14
.end method
