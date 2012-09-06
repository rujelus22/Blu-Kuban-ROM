.class public Lm/g;
.super Lm/f;
.source "SourceFile"


# instance fields
.field private c:J

.field private d:J

.field private volatile e:Lm/u;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lt/k;

.field private k:Lm/w;

.field private final l:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(Lm/c;Lm/w;Lcom/google/googlenav/common/a;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, "driveabout_gps_fixup"

    invoke-direct {p0, v0, p1}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm/g;->c:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm/g;->d:J

    .line 65
    iput-object p2, p0, Lm/g;->k:Lm/w;

    .line 66
    iput-object p3, p0, Lm/g;->l:Lcom/google/googlenav/common/a;

    .line 67
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 162
    const/high16 v0, 0x4080

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v2}, Lt/k;->o()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 165
    :cond_1a
    return-void
.end method

.method private a(Lm/b;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-boolean v1, p0, Lm/g;->h:Z

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lm/b;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lm/b;->getAccuracy()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_16

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lm/g;->h:Z

    .line 136
    :cond_16
    iget-boolean v1, p0, Lm/g;->h:Z

    if-nez v1, :cond_41

    invoke-virtual {p1}, Lm/b;->c()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 138
    invoke-virtual {p1}, Lm/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 139
    iget-object v2, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v2}, Lt/k;->n()I

    move-result v2

    int-to-float v2, v2

    .line 140
    const/high16 v3, 0x4100

    .line 141
    if-ltz v1, :cond_41

    cmpl-float v4, v2, v3

    if-lez v4, :cond_41

    .line 143
    packed-switch v1, :pswitch_data_52

    .line 151
    :goto_38
    sub-float v1, v2, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lm/b;->setAccuracy(F)V

    .line 154
    :cond_41
    return-void

    .line 144
    :pswitch_42
    const/high16 v0, 0x3f80

    goto :goto_38

    .line 145
    :pswitch_45
    const/high16 v0, 0x3f40

    goto :goto_38

    .line 146
    :pswitch_48
    const/high16 v0, 0x3f00

    goto :goto_38

    .line 147
    :pswitch_4b
    const/high16 v0, 0x3e80

    goto :goto_38

    .line 148
    :pswitch_4e
    const/high16 v0, 0x3e00

    goto :goto_38

    .line 143
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private b(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    iget-boolean v0, p0, Lm/g;->g:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/g;->g:Z

    .line 175
    :cond_16
    iget-boolean v0, p0, Lm/g;->g:Z

    if-nez v0, :cond_1d

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->removeBearing()V

    .line 178
    :cond_1d
    return-void
.end method

.method private b(Lm/b;)V
    .registers 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lm/g;->e:Lm/u;

    if-eqz v0, :cond_d

    .line 196
    iget-object v0, p0, Lm/g;->e:Lm/u;

    invoke-virtual {v0}, Lm/u;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lm/b;->a(I)V

    .line 198
    :cond_d
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 185
    iget-boolean v0, p0, Lm/g;->g:Z

    if-nez v0, :cond_12

    .line 186
    iget-object v0, p0, Lm/g;->k:Lm/w;

    invoke-interface {v0}, Lm/w;->d()F

    move-result v0

    .line 187
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_12

    .line 188
    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    .line 191
    :cond_12
    return-void
.end method

.method private c(Lm/b;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1}, Lm/b;->c()Z

    move-result v2

    if-nez v2, :cond_a

    .line 211
    :goto_9
    return v1

    .line 207
    :cond_a
    invoke-virtual {p1}, Lm/b;->d()I

    move-result v2

    .line 208
    if-lt v2, v4, :cond_12

    .line 209
    iput-boolean v0, p0, Lm/g;->f:Z

    .line 211
    :cond_12
    iget-boolean v3, p0, Lm/g;->f:Z

    if-eqz v3, :cond_1a

    if-ge v2, v4, :cond_1a

    :goto_18
    move v1, v0

    goto :goto_9

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method private d(Lm/b;)V
    .registers 4
    .parameter

    .prologue
    .line 221
    iget-boolean v0, p0, Lm/g;->f:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lm/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lm/b;->d()I

    move-result v0

    iget-object v1, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v1}, Lt/k;->m()I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-virtual {p1}, Lm/b;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v1}, Lt/k;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    .line 226
    iget-object v0, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v0}, Lt/k;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lm/b;->setAccuracy(F)V

    .line 228
    :cond_2f
    return-void
.end method

.method private e(Lm/b;)V
    .registers 4
    .parameter

    .prologue
    .line 236
    iget-boolean v0, p0, Lm/g;->i:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lm/b;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v1}, Lt/k;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 237
    iget-object v0, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v0}, Lt/k;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lm/b;->setAccuracy(F)V

    .line 239
    :cond_1d
    return-void
.end method

.method private f(Lm/b;)V
    .registers 4
    .parameter

    .prologue
    .line 247
    invoke-virtual {p1}, Lm/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lm/b;->getSpeed()F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    .line 248
    invoke-virtual {p1}, Lm/b;->removeSpeed()V

    .line 250
    :cond_13
    return-void
.end method

.method private g(Lm/b;)V
    .registers 8
    .parameter

    .prologue
    .line 261
    invoke-virtual {p1}, Lm/b;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v1}, Lt/k;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4b

    .line 264
    iget-object v0, p0, Lm/g;->l:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v0

    .line 265
    iget-wide v2, p0, Lm/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    .line 266
    iget-wide v2, p0, Lm/g;->c:J

    sub-long v2, v0, v2

    .line 267
    iget-object v4, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v4}, Lt/k;->k()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    .line 268
    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    iget-wide v4, p0, Lm/g;->d:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lm/g;->d:J

    .line 273
    :cond_37
    iput-wide v0, p0, Lm/g;->c:J

    .line 276
    iget-wide v2, p0, Lm/g;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4b

    .line 277
    iget-object v0, p0, Lm/g;->j:Lt/k;

    invoke-virtual {v0}, Lt/k;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lm/b;->setAccuracy(F)V

    .line 280
    :cond_4b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm/g;->c:J

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm/g;->d:J

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lm/g;->e:Lm/u;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/g;->i:Z

    .line 93
    return-void
.end method

.method public a(Lm/u;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lm/g;->e:Lm/u;

    .line 84
    return-void
.end method

.method public a(Lm/w;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lm/g;->k:Lm/w;

    .line 76
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_hmm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    invoke-static {p1}, Lm/F;->a(Landroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p0, Lm/g;->i:Z

    .line 125
    :cond_12
    :goto_12
    return-void

    .line 107
    :cond_13
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    iput-object v0, p0, Lm/g;->j:Lt/k;

    .line 108
    new-instance v0, Lm/b;

    invoke-direct {v0, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->a(Z)V

    .line 111
    invoke-direct {p0, v0}, Lm/g;->b(Lm/b;)V

    .line 112
    invoke-direct {p0, v0}, Lm/g;->a(Lm/b;)V

    .line 113
    invoke-direct {p0, v0}, Lm/g;->a(Landroid/location/Location;)V

    .line 114
    invoke-direct {p0, v0}, Lm/g;->b(Landroid/location/Location;)V

    .line 115
    invoke-direct {p0, v0}, Lm/g;->c(Landroid/location/Location;)V

    .line 116
    invoke-direct {p0, v0}, Lm/g;->c(Lm/b;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 119
    invoke-direct {p0, v0}, Lm/g;->d(Lm/b;)V

    .line 120
    invoke-direct {p0, v0}, Lm/g;->e(Lm/b;)V

    .line 121
    invoke-direct {p0, v0}, Lm/g;->f(Lm/b;)V

    .line 122
    invoke-direct {p0, v0}, Lm/g;->g(Lm/b;)V

    .line 124
    invoke-super {p0, v0}, Lm/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_12
.end method
