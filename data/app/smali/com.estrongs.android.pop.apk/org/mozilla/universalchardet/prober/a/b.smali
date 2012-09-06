.class public abstract Lorg/mozilla/universalchardet/prober/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:[I

.field protected b:F

.field protected c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/a/b;->b()V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 5

    const v1, 0x3f7d70a4

    iget v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    if-lez v0, :cond_c

    iget v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_10

    :cond_c
    const v0, 0x3c23d70a

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    iget v2, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    if-eq v0, v2, :cond_26

    iget v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    iget v2, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    iget v3, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/mozilla/universalchardet/prober/a/b;->b:F

    mul-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_f

    :cond_26
    move v0, v1

    goto :goto_f
.end method

.method protected abstract a([BI)I
.end method

.method public a([BII)V
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/universalchardet/prober/a/b;->a([BI)I

    move-result v0

    :cond_8
    if-ltz v0, :cond_23

    iget v1, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/a/b;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_23

    const/16 v1, 0x200

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/a/b;->a:[I

    aget v0, v2, v0

    if-le v1, v0, :cond_23

    iget v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    :cond_23
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->c:Z

    iput v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    iput v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->d:I

    return-void
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/universalchardet/prober/a/b;->e:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
