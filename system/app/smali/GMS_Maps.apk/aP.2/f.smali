.class public LaP/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:F

.field private b:F

.field private c:J

.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LaP/f;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaP/f;->c:J

    iput-boolean p1, p0, LaP/f;->d:Z

    return-void
.end method

.method private a(FF)V
    .registers 9

    const/high16 v3, 0x4120

    const/4 v5, 0x0

    iget v0, p0, LaP/f;->a:F

    sub-float v0, p2, v0

    div-float/2addr v0, v3

    iget v1, p0, LaP/f;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, LaP/f;->b:F

    iget v1, p0, LaP/f;->b:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_36

    mul-float/2addr v0, v3

    iget v1, p0, LaP/f;->b:F

    div-float/2addr v0, v1

    const-wide/high16 v1, 0x3ff0

    neg-float v3, v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v1, v0, p1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_37

    iput v5, p0, LaP/f;->b:F

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget v1, p0, LaP/f;->b:F

    iget v2, p0, LaP/f;->b:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    iput v0, p0, LaP/f;->b:F

    iget v0, p0, LaP/f;->a:F

    iget v1, p0, LaP/f;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, LaP/f;->a:F

    goto :goto_36
.end method


# virtual methods
.method public a(JF)F
    .registers 11

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, 0x43b4

    iget-wide v0, p0, LaP/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, LaP/f;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_27

    :cond_13
    iput p3, p0, LaP/f;->a:F

    :cond_15
    :goto_15
    iput-wide p1, p0, LaP/f;->c:J

    iget-boolean v0, p0, LaP/f;->d:Z

    if-eqz v0, :cond_73

    :goto_1b
    iget v0, p0, LaP/f;->a:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_67

    iget v0, p0, LaP/f;->a:F

    sub-float/2addr v0, v4

    iput v0, p0, LaP/f;->a:F

    goto :goto_1b

    :cond_27
    iget-boolean v0, p0, LaP/f;->d:Z

    if-eqz v0, :cond_41

    iget v0, p0, LaP/f;->a:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_41

    iget v0, p0, LaP/f;->a:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_58

    add-float/2addr p3, v4

    :cond_41
    :goto_41
    iget-wide v0, p0, LaP/f;->c:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    const/high16 v1, 0x4120

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_53

    cmpg-float v1, v0, v5

    if-gez v1, :cond_5a

    :cond_53
    iput p3, p0, LaP/f;->a:F

    iput v5, p0, LaP/f;->b:F

    goto :goto_15

    :cond_58
    sub-float/2addr p3, v4

    goto :goto_41

    :cond_5a
    :goto_5a
    cmpl-float v1, v0, v5

    if-lez v1, :cond_15

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0, v1, p3}, LaP/f;->a(FF)V

    sub-float/2addr v0, v6

    goto :goto_5a

    :cond_67
    :goto_67
    iget v0, p0, LaP/f;->a:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_73

    iget v0, p0, LaP/f;->a:F

    add-float/2addr v0, v4

    iput v0, p0, LaP/f;->a:F

    goto :goto_67

    :cond_73
    iget v0, p0, LaP/f;->a:F

    return v0
.end method
