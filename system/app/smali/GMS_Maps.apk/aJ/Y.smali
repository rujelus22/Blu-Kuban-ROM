.class public final LaJ/Y;
.super Ljava/lang/Object;


# static fields
.field private static c:I

.field private static d:I

.field private static final e:[LaJ/Y;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    const/16 v5, 0x16

    sput v0, LaJ/Y;->c:I

    sput v5, LaJ/Y;->d:I

    new-array v1, v5, [LaJ/Y;

    sput-object v1, LaJ/Y;->e:[LaJ/Y;

    const/16 v1, 0x100

    :goto_d
    if-gt v0, v5, :cond_1f

    sget-object v2, LaJ/Y;->e:[LaJ/Y;

    add-int/lit8 v3, v0, -0x1

    new-instance v4, LaJ/Y;

    invoke-direct {v4, v0, v1}, LaJ/Y;-><init>(II)V

    aput-object v4, v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LaJ/Y;->b:I

    iput p2, p0, LaJ/Y;->a:I

    return-void
.end method

.method public static b(I)LaJ/Y;
    .registers 3

    const/4 v0, 0x0

    sget v1, LaJ/Y;->c:I

    if-lt p0, v1, :cond_15

    const/16 v1, 0x16

    if-gt p0, v1, :cond_15

    sget v0, LaJ/Y;->d:I

    if-le p0, v0, :cond_f

    sget p0, LaJ/Y;->d:I

    :cond_f
    sget-object v0, LaJ/Y;->e:[LaJ/Y;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    :cond_15
    return-object v0
.end method

.method public static b(II)V
    .registers 5

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x16

    sput v1, LaJ/Y;->c:I

    :goto_8
    sget v1, LaJ/Y;->c:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    sget v1, LaJ/Y;->c:I

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    iget v1, v1, LaJ/Y;->a:I

    mul-int/lit8 v2, v0, 0xa

    div-int/lit8 v2, v2, 0x9

    if-gt v1, v2, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    sget v1, LaJ/Y;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, LaJ/Y;->c:I

    goto :goto_8
.end method

.method public static c(LaJ/Y;)LaJ/Y;
    .registers 2

    invoke-virtual {p0}, LaJ/Y;->a()I

    move-result v0

    invoke-static {v0}, LaJ/Y;->d(I)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .registers 3

    const/16 v0, 0x16

    invoke-static {}, Laf/d;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    sput v0, LaJ/Y;->d:I

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/16 v0, 0x10

    :cond_10
    sput v0, LaJ/Y;->d:I

    goto :goto_a
.end method

.method public static d(I)I
    .registers 2

    sget v0, LaJ/Y;->c:I

    if-ge p0, v0, :cond_6

    sget p0, LaJ/Y;->c:I

    :cond_6
    return p0
.end method

.method public static e()I
    .registers 1

    sget v0, LaJ/Y;->c:I

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, LaJ/Y;->b:I

    return v0
.end method

.method public a(I)I
    .registers 6

    int-to-long v0, p1

    iget v2, p0, LaJ/Y;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x26382e0

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .registers 4

    iget v0, p0, LaJ/Y;->b:I

    if-ge v0, p2, :cond_b

    iget v0, p0, LaJ/Y;->b:I

    sub-int v0, p2, v0

    shl-int v0, p1, v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, LaJ/Y;->b:I

    sub-int/2addr v0, p2

    shr-int v0, p1, v0

    goto :goto_a
.end method

.method public a(LaJ/Y;)I
    .registers 4

    iget v0, p1, LaJ/Y;->a:I

    iget v1, p0, LaJ/Y;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, LaJ/Y;->a:I

    return v0
.end method

.method public b(LaJ/Y;)Z
    .registers 4

    iget v0, p0, LaJ/Y;->b:I

    iget v1, p1, LaJ/Y;->b:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()LaJ/Y;
    .registers 2

    iget v0, p0, LaJ/Y;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public d()LaJ/Y;
    .registers 2

    iget v0, p0, LaJ/Y;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
