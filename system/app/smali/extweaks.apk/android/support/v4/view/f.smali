.class final Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/h;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 49
    and-int v2, p1, p2

    if-eqz v2, :cond_19

    move v2, v0

    .line 50
    :goto_7
    or-int v3, p3, p4

    .line 51
    and-int v4, p1, v3

    if-eqz v4, :cond_1b

    .line 53
    :goto_d
    if-eqz v2, :cond_21

    .line 54
    if-eqz v0, :cond_1d

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move v2, v1

    .line 49
    goto :goto_7

    :cond_1b
    move v0, v1

    .line 51
    goto :goto_d

    .line 57
    :cond_1d
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr p0, v0

    .line 61
    :cond_20
    :goto_20
    return p0

    .line 58
    :cond_21
    if-eqz v0, :cond_20

    .line 59
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p0, v0

    goto :goto_20
.end method


# virtual methods
.method public final a(I)I
    .registers 4
    .parameter

    .prologue
    .line 67
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_f

    .line 68
    or-int/lit8 v0, p1, 0x1

    .line 70
    :goto_6
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_c

    .line 71
    or-int/lit8 v0, v0, 0x2

    .line 73
    :cond_c
    and-int/lit16 v0, v0, 0xf7

    return v0

    :cond_f
    move v0, p1

    goto :goto_6
.end method

.method public final a(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, p1}, Landroid/support/v4/view/f;->a(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    .line 79
    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v1, p2, v0, v2, v3}, Landroid/support/v4/view/f;->a(IIIII)I

    move-result v1

    .line 81
    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {v1, p2, v2, v3, v4}, Landroid/support/v4/view/f;->a(IIIII)I

    move-result v1

    .line 83
    if-ne v1, p2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final b(I)Z
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/support/v4/view/f;->a(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
