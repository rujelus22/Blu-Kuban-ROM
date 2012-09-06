.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# static fields
.field private static final META_ALL_MASK:I = 0xf7

.field private static final META_MODIFIER_MASK:I = 0xf7


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int v2, p1, p2

    if-eqz v2, :cond_19

    move v2, v0

    :goto_7
    or-int v3, p3, p4

    and-int v4, p1, v3

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

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p0, v0

    goto :goto_20
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v1, p2, v0, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {v1, p2, v2, v3, v4}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result v1

    if-ne v1, p2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public metaStateHasNoModifiers(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

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

.method public normalizeMetaState(I)I
    .registers 4

    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_f

    or-int/lit8 v0, p1, 0x1

    :goto_6
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    and-int/lit16 v0, v0, 0xf7

    return v0

    :cond_f
    move v0, p1

    goto :goto_6
.end method
