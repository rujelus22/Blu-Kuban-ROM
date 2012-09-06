.class public Lcom/google/android/maps/driveabout/vector/cJ;
.super Lcom/google/android/maps/driveabout/vector/ek;
.source "SourceFile"


# instance fields
.field private final d:F

.field private e:Z

.field private f:J

.field private g:Ln/aK;

.field private h:Ln/aK;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ek;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:J

    .line 86
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(D)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:F

    .line 87
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/dg;D)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->e:Z

    .line 89
    return-void
.end method

.method public static a(D)F
    .registers 3
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/dg;D)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->k:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->l:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p0, v0, :cond_14

    :cond_c
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->j()Ln/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/df;->a()Ln/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public a(Ln/Q;)F
    .registers 4
    .parameter

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->e:Z

    if-eqz v0, :cond_f

    .line 208
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/ek;->a(Ln/Q;)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 210
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/ek;->a(Ln/Q;)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:F

    sub-float/2addr v0, v1

    goto :goto_e
.end method

.method public a()J
    .registers 3

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:J

    return-wide v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v1

    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:Ln/aK;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:Ln/aK;

    invoke-virtual {v1, v0}, Ln/aK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->i:Ljava/util/List;

    .line 146
    :goto_19
    return-object v0

    .line 137
    :cond_1a
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:J

    .line 138
    invoke-virtual {v1}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/df;->a()Ln/av;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ln/am;->a(Ln/aL;ILn/av;)Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_50

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_50

    const/4 v0, 0x1

    .line 141
    :goto_44
    if-nez v0, :cond_49

    .line 142
    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Ln/aK;Ljava/util/ArrayList;)V

    .line 144
    :cond_49
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->i:Ljava/util/List;

    .line 145
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:Ln/aK;

    .line 146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->i:Ljava/util/List;

    goto :goto_19

    .line 140
    :cond_50
    const/4 v0, 0x0

    goto :goto_44
.end method

.method a(Ln/aK;Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 192
    :goto_7
    if-ge v3, v4, :cond_24

    .line 193
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 194
    invoke-virtual {v0}, Ln/am;->h()Ln/aa;

    move-result-object v1

    .line 195
    invoke-virtual {p1, v1}, Ln/aK;->b(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 196
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 192
    :goto_1f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_7

    .line 200
    :cond_24
    add-int/lit8 v0, v4, -0x1

    :goto_26
    if-lt v0, v2, :cond_2e

    .line 201
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 203
    :cond_2e
    return-void

    :cond_2f
    move v0, v2

    goto :goto_1f
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v1

    .line 170
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->h:Ln/aK;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->h:Ln/aK;

    invoke-virtual {v1, v0}, Ln/aK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->j:Ljava/util/List;

    .line 182
    :goto_13
    return-object v0

    .line 173
    :cond_14
    invoke-virtual {v1}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v2

    invoke-static {v0, v2}, Ln/am;->b(Ln/aL;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 177
    :goto_31
    if-nez v0, :cond_36

    .line 178
    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Ln/aK;Ljava/util/ArrayList;)V

    .line 180
    :cond_36
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->h:Ln/aK;

    .line 181
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->j:Ljava/util/List;

    .line 182
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->j:Ljava/util/List;

    goto :goto_13

    .line 176
    :cond_3d
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected c(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 6
    .parameter

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:F

    add-float/2addr v0, v1

    .line 218
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:Lcom/google/android/maps/driveabout/vector/ei;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/ei;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_1a

    .line 220
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/eh;->a(F)I

    move-result v0

    .line 223
    :goto_19
    return v0

    :cond_1a
    float-to-int v0, v0

    goto :goto_19
.end method
