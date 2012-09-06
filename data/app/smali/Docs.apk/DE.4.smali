.class public LDE;
.super Ljava/lang/Object;
.source "KeyEventHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-static {}, LCx;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    .line 89
    :cond_a
    :goto_a
    return v0

    .line 77
    :cond_b
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_24

    .line 78
    or-int/lit8 v0, p0, 0x1

    .line 80
    :goto_11
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_17

    .line 81
    or-int/lit8 v0, v0, 0x2

    .line 83
    :cond_17
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1d

    .line 84
    or-int/lit8 v0, v0, 0x2

    .line 86
    :cond_1d
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    .line 87
    or-int/lit8 v0, v0, 0x4

    goto :goto_a

    :cond_24
    move v0, p0

    goto :goto_11
.end method

.method private static a(IIIII)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    and-int v2, p1, p2

    if-eqz v2, :cond_13

    move v2, v0

    .line 169
    :goto_7
    or-int v3, p3, p4

    .line 170
    and-int v4, p1, v3

    if-eqz v4, :cond_15

    .line 172
    :goto_d
    if-eqz v2, :cond_17

    .line 173
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr p0, v0

    .line 177
    :cond_12
    :goto_12
    return p0

    :cond_13
    move v2, v1

    .line 168
    goto :goto_7

    :cond_15
    move v0, v1

    .line 170
    goto :goto_d

    .line 174
    :cond_17
    if-eqz v0, :cond_12

    .line 175
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p0, v0

    goto :goto_12
.end method

.method public static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 112
    invoke-static {}, LCx;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    .line 115
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, LDE;->a(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-static {}, LCx;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 153
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    .line 163
    :cond_b
    :goto_b
    return v0

    .line 156
    :cond_c
    invoke-static {p0}, LDE;->a(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    .line 157
    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v1, p1, v0, v2, v3}, LDE;->a(IIIII)I

    move-result v1

    .line 160
    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {v1, p1, v2, v3, v4}, LDE;->a(IIIII)I

    move-result v1

    .line 163
    if-eq v1, p1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter

    .prologue
    .line 185
    invoke-static {}, LCx;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    invoke-virtual {p0}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    .line 189
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_a

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method
