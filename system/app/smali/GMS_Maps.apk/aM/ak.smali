.class public LaM/ak;
.super LaM/m;
.source "SourceFile"


# instance fields
.field private final B:Lcom/google/googlenav/layer/s;

.field private final C:Z

.field private final D:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;Lcom/google/googlenav/ai;ZBZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 73
    invoke-virtual {p6}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 74
    check-cast p6, Lcom/google/googlenav/W;

    .line 75
    new-instance v0, Lcom/google/googlenav/layer/m;

    invoke-virtual {p6}, Lcom/google/googlenav/W;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/google/googlenav/layer/s;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v1, p0, LaM/ak;->B:Lcom/google/googlenav/layer/s;

    .line 80
    new-instance v1, Lcom/google/googlenav/T;

    invoke-direct {v1, v0, p5, p2, p3}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    .line 82
    invoke-virtual {v1, p6}, Lcom/google/googlenav/T;->a(Lcom/google/googlenav/W;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->a(I)V

    .line 85
    iput-object v1, p0, LaM/ak;->f:Lcom/google/googlenav/F;

    .line 93
    :goto_29
    iput-boolean p7, p0, LaM/ak;->C:Z

    .line 94
    iput-boolean p9, p0, LaM/ak;->D:Z

    .line 97
    invoke-virtual {p0, p8}, LaM/ak;->b(B)V

    .line 102
    invoke-virtual {p0}, LaM/ak;->af()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/ak;->e(Z)V

    .line 105
    :cond_3a
    return-void

    .line 89
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, LaM/ak;->B:Lcom/google/googlenav/layer/s;

    .line 90
    new-instance v0, Lcom/google/googlenav/bi;

    invoke-direct {v0, p6}, Lcom/google/googlenav/bi;-><init>(Lcom/google/googlenav/ai;)V

    iput-object v0, p0, LaM/ak;->f:Lcom/google/googlenav/F;

    goto :goto_29
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 316
    invoke-super {p0}, LaM/m;->Z()V

    .line 317
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 318
    return-void
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, LaM/ak;->f:Lcom/google/googlenav/F;

    .line 110
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, LaM/ak;->C:Z

    return v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public aW()V
    .registers 4

    .prologue
    .line 167
    const/4 v1, 0x4

    iget-object v0, p0, LaM/ak;->f:Lcom/google/googlenav/F;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {p0, v1, v0}, LaM/ak;->a(ILcom/google/googlenav/ai;)V

    .line 169
    invoke-super {p0}, LaM/m;->aW()V

    .line 171
    iget-boolean v0, p0, LaM/ak;->C:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, LaM/ak;->aj()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 173
    iget-object v0, p0, LaM/ak;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    iget-object v1, p0, LaM/ak;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaM/ak;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v0

    .line 175
    iget-object v1, p0, LaM/ak;->d:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->b(Lat/B;)V

    .line 177
    :cond_2f
    return-void
.end method

.method protected am()V
    .registers 5

    .prologue
    .line 181
    invoke-virtual {p0}, LaM/ak;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 182
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v1, v0

    .line 183
    check-cast v1, Lcom/google/googlenav/W;

    .line 184
    const/16 v2, 0x43

    const-string v3, "o"

    invoke-virtual {v1}, Lcom/google/googlenav/W;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, LaM/ak;->B:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ai;)Lac/g;

    .line 189
    :cond_25
    return-void
.end method

.method public ao()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0}, LaM/ak;->bt()Lcom/google/googlenav/ai;

    move-result-object v3

    .line 277
    if-nez v3, :cond_a

    move v0, v1

    .line 304
    :cond_9
    :goto_9
    return v0

    .line 283
    :cond_a
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->av()Z

    move-result v2

    if-nez v2, :cond_9

    .line 289
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->aw()Lcom/google/googlenav/settings/e;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/settings/e;->c:Lcom/google/googlenav/settings/e;

    if-ne v2, v4, :cond_49

    move v2, v0

    .line 294
    :goto_1d
    if-eqz v2, :cond_35

    iget-object v2, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/aA;->e()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 299
    :cond_35
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->aw()Lcom/google/googlenav/settings/e;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/settings/e;->d:Lcom/google/googlenav/settings/e;

    if-ne v2, v4, :cond_4b

    .line 301
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->bq()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9

    :cond_49
    move v2, v1

    .line 289
    goto :goto_1d

    :cond_4b
    move v0, v1

    .line 304
    goto :goto_9
.end method

.method protected aq()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method public au()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, LaM/ak;->C:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, LaM/m;->au()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public av()I
    .registers 2

    .prologue
    .line 243
    const/16 v0, 0xf

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/googlenav/T;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, LaM/ak;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/T;

    return-object v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 214
    iget-boolean v0, p0, LaM/ak;->C:Z

    if-eqz v0, :cond_1d

    move-object v0, p1

    .line 215
    check-cast v0, Lcom/google/googlenav/ai;

    .line 217
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bo()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    .line 219
    :goto_15
    rsub-int/lit8 v0, v0, 0x1

    .line 221
    :goto_17
    return v0

    .line 217
    :cond_18
    invoke-virtual {p0, p1}, LaM/ak;->f(Lcom/google/googlenav/E;)I

    move-result v0

    goto :goto_15

    .line 221
    :cond_1d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public d(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    return-void
.end method

.method protected f(LZ/a;)Z
    .registers 4
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 125
    invoke-virtual {p0}, LaM/ak;->h()V

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public h()V
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, LaM/ak;->by()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    :goto_6
    return-void

    .line 139
    :cond_7
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 140
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, LaM/ak;->b(Lcom/google/googlenav/ui/wizard/A;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 142
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    goto :goto_6

    .line 144
    :cond_2d
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 145
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->af()V

    goto :goto_6

    .line 149
    :cond_38
    iget-boolean v0, p0, LaM/ak;->D:Z

    if-eqz v0, :cond_47

    .line 150
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 151
    iget-object v0, p0, LaM/ak;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->W()V

    goto :goto_6

    .line 153
    :cond_47
    invoke-virtual {p0}, LaM/ak;->ag()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/ak;->a(B)V

    goto :goto_6

    .line 157
    :cond_52
    invoke-virtual {p0}, LaM/ak;->n()V

    goto :goto_6
.end method

.method protected h(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, LaM/ak;->B:Lcom/google/googlenav/layer/s;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaM/ak;->B:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ai;)Lac/g;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 119
    new-instance v0, LaO/g;

    invoke-direct {v0, p0}, LaO/g;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected l()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method
