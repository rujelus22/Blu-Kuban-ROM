.class final Landroid/support/v4/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/d;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIII)I
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_19

    move v2, v0

    :goto_7
    or-int v3, p2, p3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1b

    :goto_d
    if-eqz v2, :cond_21

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move v2, v1

    goto :goto_7

    :cond_1b
    move v0, v1

    goto :goto_d

    :cond_1d
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr p0, v0

    :cond_20
    :goto_20
    return p0

    :cond_21
    if-eqz v0, :cond_20

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    goto :goto_20
.end method

.method private static c(I)I
    .registers 3

    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_f

    or-int/lit8 v0, p0, 0x1

    :goto_6
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    and-int/lit16 v0, v0, 0xf7

    return v0

    :cond_f
    move v0, p0

    goto :goto_6
.end method


# virtual methods
.method public final a(I)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/support/v4/view/b;->c(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/view/b;->a(IIII)I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/b;->a(IIII)I

    move-result v1

    if-ne v1, v0, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final b(I)Z
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/b;->c(I)I

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
