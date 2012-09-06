.class public Ln/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ln/Q;

.field protected b:F

.field protected c:I

.field protected d:Ln/Q;

.field protected e:F

.field protected f:Z

.field protected g:Ln/B;

.field protected h:Z

.field protected i:F

.field protected j:Z

.field protected k:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, Ln/P;->i()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ln/P;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Ln/P;->a(Ln/P;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a()Ln/Q;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ln/P;->a:Ln/Q;

    return-object v0
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput p1, p0, Ln/P;->b:F

    .line 92
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput p1, p0, Ln/P;->c:I

    .line 100
    return-void
.end method

.method public a(Ln/B;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Ln/P;->g:Ln/B;

    .line 136
    return-void
.end method

.method public final a(Ln/P;)V
    .registers 5
    .parameter

    .prologue
    .line 179
    if-nez p1, :cond_6

    .line 180
    invoke-virtual {p0}, Ln/P;->i()V

    .line 196
    :goto_5
    return-void

    .line 182
    :cond_6
    iget-object v0, p1, Ln/P;->a:Ln/Q;

    iget v1, p1, Ln/P;->b:F

    iget v2, p1, Ln/P;->c:I

    invoke-virtual {p0, v0, v1, v2}, Ln/P;->a(Ln/Q;FI)V

    .line 185
    iget-object v0, p1, Ln/P;->d:Ln/Q;

    if-nez v0, :cond_33

    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Ln/P;->d:Ln/Q;

    .line 188
    iget v0, p1, Ln/P;->e:F

    iput v0, p0, Ln/P;->e:F

    .line 189
    iget-boolean v0, p1, Ln/P;->f:Z

    iput-boolean v0, p0, Ln/P;->f:Z

    .line 190
    iget-object v0, p1, Ln/P;->g:Ln/B;

    iput-object v0, p0, Ln/P;->g:Ln/B;

    .line 191
    iget-boolean v0, p1, Ln/P;->h:Z

    iput-boolean v0, p0, Ln/P;->h:Z

    .line 192
    iget v0, p1, Ln/P;->i:F

    iput v0, p0, Ln/P;->i:F

    .line 193
    iget-boolean v0, p1, Ln/P;->j:Z

    iput-boolean v0, p0, Ln/P;->j:Z

    .line 194
    iget v0, p1, Ln/P;->k:F

    iput v0, p0, Ln/P;->k:F

    goto :goto_5

    .line 185
    :cond_33
    new-instance v0, Ln/Q;

    iget-object v1, p1, Ln/P;->d:Ln/Q;

    invoke-direct {v0, v1}, Ln/Q;-><init>(Ln/Q;)V

    goto :goto_14
.end method

.method public a(Ln/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Ln/P;->a:Ln/Q;

    .line 84
    return-void
.end method

.method public final a(Ln/Q;FI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-nez p1, :cond_a

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ln/P;->a:Ln/Q;

    .line 200
    iput p2, p0, Ln/P;->b:F

    .line 201
    iput p3, p0, Ln/P;->c:I

    .line 202
    return-void

    .line 199
    :cond_a
    new-instance v0, Ln/Q;

    invoke-direct {v0, p1}, Ln/Q;-><init>(Ln/Q;)V

    goto :goto_3
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Ln/P;->f:Z

    .line 124
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Ln/P;->b:F

    return v0
.end method

.method public b(F)V
    .registers 4
    .parameter

    .prologue
    .line 172
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ln/P;->k:F

    .line 173
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Ln/P;->h:Z

    .line 149
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Ln/P;->c:I

    return v0
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Ln/P;->j:Z

    .line 165
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Ln/P;->f:Z

    return v0
.end method

.method public e()Ln/B;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Ln/P;->g:Ln/B;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    if-ne p0, p1, :cond_5

    .line 237
    :cond_4
    :goto_4
    return v0

    .line 231
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 232
    goto :goto_4

    .line 233
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 234
    goto :goto_4

    .line 236
    :cond_15
    check-cast p1, Ln/P;

    .line 237
    iget-object v2, p0, Ln/P;->a:Ln/Q;

    iget-object v3, p1, Ln/P;->a:Ln/Q;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget v2, p0, Ln/P;->b:F

    iget v3, p1, Ln/P;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6d

    iget v2, p0, Ln/P;->c:I

    iget v3, p1, Ln/P;->c:I

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Ln/P;->d:Ln/Q;

    iget-object v3, p1, Ln/P;->d:Ln/Q;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget v2, p0, Ln/P;->e:F

    iget v3, p1, Ln/P;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6d

    iget-boolean v2, p0, Ln/P;->f:Z

    iget-boolean v3, p1, Ln/P;->f:Z

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Ln/P;->g:Ln/B;

    iget-object v3, p1, Ln/P;->g:Ln/B;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-boolean v2, p0, Ln/P;->h:Z

    iget-boolean v3, p1, Ln/P;->h:Z

    if-ne v2, v3, :cond_6d

    iget v2, p0, Ln/P;->i:F

    iget v3, p1, Ln/P;->i:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6d

    iget-boolean v2, p0, Ln/P;->j:Z

    iget-boolean v3, p1, Ln/P;->j:Z

    if-ne v2, v3, :cond_6d

    iget v2, p0, Ln/P;->k:F

    iget v3, p1, Ln/P;->k:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_6d
    move v0, v1

    goto :goto_4
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Ln/P;->h:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Ln/P;->j:Z

    return v0
.end method

.method public h()F
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Ln/P;->k:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 253
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ln/P;->a:Ln/Q;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ln/P;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Ln/P;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Ln/P;->e:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Ln/P;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ln/P;->g:Ln/B;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Ln/P;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Ln/P;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Ln/P;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Ln/P;->k:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/K;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    iput-object v3, p0, Ln/P;->a:Ln/Q;

    .line 206
    iput v1, p0, Ln/P;->b:F

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Ln/P;->c:I

    .line 208
    iput-object v3, p0, Ln/P;->d:Ln/Q;

    .line 209
    iput v1, p0, Ln/P;->e:F

    .line 210
    iput-boolean v2, p0, Ln/P;->f:Z

    .line 211
    iput-object v3, p0, Ln/P;->g:Ln/B;

    .line 212
    iput-boolean v2, p0, Ln/P;->h:Z

    .line 213
    iput v1, p0, Ln/P;->i:F

    .line 214
    iput-boolean v2, p0, Ln/P;->j:Z

    .line 215
    const/high16 v0, 0x3f80

    iput v0, p0, Ln/P;->k:F

    .line 216
    return-void
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Ln/P;->a:Ln/Q;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
