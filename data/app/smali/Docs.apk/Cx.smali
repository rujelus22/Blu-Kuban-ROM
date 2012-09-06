.class public LCx;
.super Ljava/lang/Object;
.source "PortHelper.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/4 v0, -0x1

    sput v0, LCx;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/graphics/Paint;[CIIIII[FI)F
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-array v2, p3, [F

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v3

    .line 33
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_16

    .line 34
    aget v4, v2, v0

    add-float/2addr v1, v4

    .line 35
    add-int v4, v0, p8

    aget v5, v2, v0

    aput v5, p7, v4

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 37
    :cond_16
    return v1
.end method

.method private static a(IIIIZ)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    sub-int v0, p3, p0

    .line 61
    if-eqz p4, :cond_d

    .line 62
    if-ge v0, p1, :cond_8

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_8
    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 71
    add-int/2addr v0, p0

    .line 73
    :cond_c
    return v0

    .line 66
    :cond_d
    if-lez v0, :cond_8

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method static a(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIIIZ)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p2, p3, p4, p5, p6}, LCx;->a(IIIIZ)I

    move-result v0

    return v0
.end method

.method static a(Landroid/graphics/Paint;[CIIIIZ)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p2, p3, p4, p5, p6}, LCx;->a(IIIIZ)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter

    .prologue
    .line 18
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
