.class public Lcom/google/android/maps/driveabout/vector/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:F

.field private final b:F

.field private c:Lcom/google/android/maps/driveabout/vector/o;


# direct methods
.method public constructor <init>(F)V
    .registers 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x4296

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/n;->a:F

    .line 55
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/n;->b:F

    .line 56
    return-void
.end method

.method public static b(F)F
    .registers 6
    .parameter

    .prologue
    const/high16 v4, 0x4160

    const/high16 v3, 0x4120

    const/high16 v0, 0x41f0

    .line 121
    const/high16 v1, 0x4180

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_f

    .line 122
    const/high16 v0, 0x4296

    .line 134
    :cond_e
    :goto_e
    return v0

    .line 123
    :cond_f
    cmpl-float v1, p0, v4

    if-lez v1, :cond_1d

    .line 124
    const/high16 v1, 0x4000

    .line 126
    const/high16 v2, 0x4234

    sub-float v3, p0, v4

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_e

    .line 128
    :cond_1d
    cmpl-float v1, p0, v3

    if-lez v1, :cond_e

    .line 129
    const/high16 v1, 0x4080

    .line 130
    const/high16 v2, 0x4170

    .line 131
    sub-float v3, p0, v3

    mul-float/2addr v2, v3

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v4

    .line 87
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/n;->a:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/n;->b(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 88
    const/high16 v1, 0x41a8

    .line 89
    const/high16 v0, 0x4000

    .line 90
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/n;->c:Lcom/google/android/maps/driveabout/vector/o;

    if-eqz v2, :cond_33

    .line 91
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/n;->c:Lcom/google/android/maps/driveabout/vector/o;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/maps/driveabout/vector/o;->a(Ln/Q;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/n;->c:Lcom/google/android/maps/driveabout/vector/o;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/o;->a()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 95
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 96
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    .line 97
    cmpl-float v0, v4, v3

    if-lez v0, :cond_58

    .line 98
    invoke-virtual {v1, v1}, Ln/Q;->h(Ln/Q;)V

    .line 99
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 111
    :goto_57
    return-object v0

    .line 101
    :cond_58
    cmpg-float v0, v4, v6

    if-gez v0, :cond_6e

    .line 102
    invoke-virtual {v1, v1}, Ln/Q;->h(Ln/Q;)V

    .line 103
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    goto :goto_57

    .line 105
    :cond_6e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_80

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->j()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 107
    :cond_80
    invoke-virtual {v1, v1}, Ln/Q;->h(Ln/Q;)V

    .line 108
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    goto :goto_57

    :cond_95
    move-object v0, p1

    .line 111
    goto :goto_57
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/o;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/n;->c:Lcom/google/android/maps/driveabout/vector/o;

    return-object v0
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/n;->a:F

    .line 78
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/n;->c:Lcom/google/android/maps/driveabout/vector/o;

    .line 61
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/n;->a:F

    return v0
.end method
