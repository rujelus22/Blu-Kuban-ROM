.class public Lcom/google/android/maps/driveabout/vector/cy;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/android/maps/driveabout/vector/cy;


# instance fields
.field private final b:[Lcom/google/android/maps/driveabout/vector/cw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cy;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cy;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Lcom/google/android/maps/driveabout/vector/cy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->b:[Lcom/google/android/maps/driveabout/vector/cw;

    return-void
.end method

.method public static a(I)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Lcom/google/android/maps/driveabout/vector/cy;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cy;->b:[Lcom/google/android/maps/driveabout/vector/cw;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Lcom/google/android/maps/driveabout/vector/cy;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cy;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Lcom/google/android/maps/driveabout/vector/cy;

    :cond_c
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cy;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cy;-><init>()V

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->b(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aT;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Lcom/google/android/maps/driveabout/vector/cy;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V
    .registers 11

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-virtual {v0, p6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Z)V

    invoke-virtual {v0, p7}, Lcom/google/android/maps/driveabout/vector/cw;->b(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    if-eqz p5, :cond_1f

    if-eqz p8, :cond_1b

    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cw;->d(Landroid/content/res/Resources;I)V

    :goto_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->b:[Lcom/google/android/maps/driveabout/vector/cw;

    aput-object v0, v1, p3

    return-void

    :cond_1b
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cw;->c(Landroid/content/res/Resources;I)V

    goto :goto_16

    :cond_1f
    if-eqz p8, :cond_25

    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/content/res/Resources;I)V

    goto :goto_16

    :cond_25
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/content/res/Resources;I)V

    goto :goto_16
.end method

.method private b()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->b:[Lcom/google/android/maps/driveabout/vector/cw;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private b(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 12

    const/4 v3, 0x0

    const v4, 0x7f020149

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x1

    const v4, 0x7f02014a

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x2

    const v4, 0x7f02014c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x3

    const v4, 0x7f02014e

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x4

    const v4, 0x7f020150

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x5

    const v4, 0x7f02014b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x6

    const v4, 0x7f02014d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x16

    const v4, 0x7f02014f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x7

    const v4, 0x7f020152

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x15

    const v4, 0x7f020151

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x8

    const v4, 0x7f020153

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x9

    const v4, 0x7f020154

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0xa

    const v4, 0x7f020155

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x14

    const v4, 0x7f020142

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x17

    const v4, 0x7f020147

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0xb

    const v4, 0x7f020156

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/content/res/Resources;IIZZZZ)V

    return-void
.end method
