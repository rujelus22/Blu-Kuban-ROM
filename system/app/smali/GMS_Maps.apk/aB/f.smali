.class public LaB/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:F

.field private b:F

.field private c:J

.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, LaB/f;->b:F

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaB/f;->c:J

    .line 95
    iput-boolean p1, p0, LaB/f;->d:Z

    .line 96
    return-void
.end method

.method private a(FF)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4120

    const/4 v5, 0x0

    .line 148
    iget v0, p0, LaB/f;->a:F

    sub-float v0, p2, v0

    div-float/2addr v0, v3

    .line 149
    iget v1, p0, LaB/f;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, LaB/f;->b:F

    .line 151
    iget v1, p0, LaB/f;->b:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_36

    .line 152
    mul-float/2addr v0, v3

    iget v1, p0, LaB/f;->b:F

    div-float/2addr v0, v1

    .line 153
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

    .line 156
    mul-float v1, v0, p1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_37

    .line 157
    iput v5, p0, LaB/f;->b:F

    .line 163
    :cond_36
    :goto_36
    return-void

    .line 159
    :cond_37
    iget v1, p0, LaB/f;->b:F

    iget v2, p0, LaB/f;->b:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    iput v0, p0, LaB/f;->b:F

    .line 160
    iget v0, p0, LaB/f;->a:F

    iget v1, p0, LaB/f;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, LaB/f;->a:F

    goto :goto_36
.end method


# virtual methods
.method public a(JF)F
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, 0x43b4

    .line 107
    iget-wide v0, p0, LaB/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, LaB/f;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_27

    .line 108
    :cond_13
    iput p3, p0, LaB/f;->a:F

    .line 132
    :cond_15
    :goto_15
    iput-wide p1, p0, LaB/f;->c:J

    .line 135
    iget-boolean v0, p0, LaB/f;->d:Z

    if-eqz v0, :cond_73

    .line 136
    :goto_1b
    iget v0, p0, LaB/f;->a:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_67

    .line 137
    iget v0, p0, LaB/f;->a:F

    sub-float/2addr v0, v4

    iput v0, p0, LaB/f;->a:F

    goto :goto_1b

    .line 111
    :cond_27
    iget-boolean v0, p0, LaB/f;->d:Z

    if-eqz v0, :cond_41

    iget v0, p0, LaB/f;->a:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_41

    .line 112
    iget v0, p0, LaB/f;->a:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_58

    .line 113
    add-float/2addr p3, v4

    .line 119
    :cond_41
    :goto_41
    iget-wide v0, p0, LaB/f;->c:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 120
    const/high16 v1, 0x4120

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_53

    cmpg-float v1, v0, v5

    if-gez v1, :cond_5a

    .line 122
    :cond_53
    iput p3, p0, LaB/f;->a:F

    .line 123
    iput v5, p0, LaB/f;->b:F

    goto :goto_15

    .line 115
    :cond_58
    sub-float/2addr p3, v4

    goto :goto_41

    .line 125
    :cond_5a
    :goto_5a
    cmpl-float v1, v0, v5

    if-lez v1, :cond_15

    .line 126
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 127
    invoke-direct {p0, v1, p3}, LaB/f;->a(FF)V

    .line 128
    sub-float/2addr v0, v6

    .line 129
    goto :goto_5a

    .line 139
    :cond_67
    :goto_67
    iget v0, p0, LaB/f;->a:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_73

    .line 140
    iget v0, p0, LaB/f;->a:F

    add-float/2addr v0, v4

    iput v0, p0, LaB/f;->a:F

    goto :goto_67

    .line 144
    :cond_73
    iget v0, p0, LaB/f;->a:F

    return v0
.end method
