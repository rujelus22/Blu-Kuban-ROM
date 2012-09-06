.class public LaN/a;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/google/googlenav/ui/aH;

.field private c:I

.field private d:Ln/U;

.field private e:Ln/U;

.field private f:Ljava/util/List;

.field private g:F

.field private h:Lcom/google/android/maps/driveabout/vector/aD;

.field private i:Ln/Q;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/aH;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 76
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, LaN/a;->i:Ln/Q;

    .line 82
    iput-object p1, p0, LaN/a;->a:Landroid/content/Context;

    .line 83
    iput-object p2, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    .line 84
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aG;)Ljava/util/List;
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-interface {p1}, Lcom/google/googlenav/ui/aG;->o()[[Lat/B;

    move-result-object v4

    .line 195
    if-nez v4, :cond_c

    .line 196
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    :cond_b
    return-object v0

    .line 198
    :cond_c
    array-length v0, v4

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    array-length v5, v4

    move v3, v2

    :goto_13
    if-ge v3, v5, :cond_b

    aget-object v6, v4, v3

    .line 200
    new-instance v7, Ln/W;

    array-length v1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v7, v1}, Ln/W;-><init>(I)V

    .line 201
    array-length v8, v6

    move v1, v2

    :goto_21
    if-ge v1, v8, :cond_2f

    .line 202
    aget-object v9, v6, v1

    invoke-static {v9}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v9

    invoke-virtual {v7, v9}, Ln/W;->a(Ln/Q;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 204
    :cond_2f
    aget-object v1, v6, v2

    invoke-static {v1}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v1

    invoke-virtual {v7, v1}, Ln/W;->a(Ln/Q;)Z

    .line 205
    invoke-virtual {v7}, Ln/W;->d()Ln/U;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_13
.end method

.method private a(Lcom/google/googlenav/ui/aG;Z)Ln/U;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-interface {p1}, Lcom/google/googlenav/ui/aG;->j()[Lat/B;

    move-result-object v2

    .line 179
    new-instance v3, Ln/W;

    array-length v0, v2

    invoke-direct {v3, v0}, Ln/W;-><init>(I)V

    .line 180
    new-instance v4, Ln/Q;

    invoke-direct {v4}, Ln/Q;-><init>()V

    .line 181
    array-length v5, v2

    move v0, v1

    :goto_12
    if-ge v0, v5, :cond_1f

    aget-object v6, v2, v0

    .line 182
    invoke-static {v6, v4}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 183
    invoke-virtual {v3, v4}, Ln/W;->a(Ln/Q;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 185
    :cond_1f
    if-eqz p2, :cond_29

    .line 186
    aget-object v0, v2, v1

    invoke-static {v0, v4}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 187
    invoke-virtual {v3, v4}, Ln/W;->a(Ln/Q;)Z

    .line 189
    :cond_29
    invoke-virtual {v3}, Ln/W;->d()Ln/U;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ui/aG;)I
    .registers 3
    .parameter

    .prologue
    .line 212
    iget v0, p0, LaN/a;->g:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/aG;->a(Lat/Y;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, LaN/a;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 89
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_c

    .line 90
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 92
    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    iget v1, p0, LaN/a;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    .line 231
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    iput v0, p0, LaN/a;->g:F

    .line 233
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    instance-of v0, v0, Lcom/google/googlenav/ui/aF;

    if-nez v0, :cond_39

    .line 234
    iget v1, p0, LaN/a;->j:I

    .line 235
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    check-cast v0, Lcom/google/googlenav/ui/aG;

    invoke-direct {p0, v0}, LaN/a;->b(Lcom/google/googlenav/ui/aG;)I

    move-result v0

    iput v0, p0, LaN/a;->j:I

    .line 236
    iget v0, p0, LaN/a;->j:I

    if-eq v0, v1, :cond_39

    .line 239
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    instance-of v0, v0, Lat/M;

    if-eqz v0, :cond_36

    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    check-cast v0, Lat/M;

    invoke-virtual {v0}, Lat/M;->l()Z

    move-result v0

    if-nez v0, :cond_39

    .line 240
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    .line 246
    :cond_39
    invoke-virtual {p0, p2}, LaN/a;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 247
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_45

    .line 248
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 251
    :cond_45
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 259
    :cond_9
    return-void
.end method

.method c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_12

    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aH;->i()I

    move-result v0

    iget v2, p0, LaN/a;->c:I

    if-ne v0, v2, :cond_12

    .line 168
    :goto_11
    return-void

    .line 104
    :cond_12
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_1b

    .line 105
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 107
    :cond_1b
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    instance-of v0, v0, Lcom/google/googlenav/ui/aF;

    if-eqz v0, :cond_8f

    .line 108
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    move-object v6, v0

    check-cast v6, Lcom/google/googlenav/ui/aF;

    .line 113
    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->k()I

    move-result v3

    .line 114
    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->m()I

    move-result v4

    .line 115
    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->c()Lat/B;

    move-result-object v0

    .line 116
    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->b()I

    move-result v2

    .line 117
    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->d()Ln/B;

    move-result-object v5

    .line 118
    if-nez v5, :cond_76

    move-object v5, v7

    .line 119
    :goto_3d
    if-eqz v0, :cond_42

    const/4 v7, -0x1

    if-ne v3, v7, :cond_7b

    .line 120
    :cond_42
    iget-object v0, p0, LaN/a;->i:Ln/Q;

    invoke-virtual {v0, v1, v1}, Ln/Q;->d(II)V

    move v2, v1

    move v4, v1

    move v3, v1

    .line 127
    :goto_4a
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_81

    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/a;

    if-eqz v0, :cond_81

    .line 128
    iget-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/a;

    .line 129
    iget-object v1, p0, LaN/a;->i:Ln/Q;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Ln/Q;I)V

    .line 130
    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/a;->a(Ln/p;)V

    .line 131
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/a;->a_(I)V

    .line 132
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/a;->b(I)V

    .line 133
    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)V

    .line 167
    :goto_6d
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aH;->i()I

    move-result v0

    iput v0, p0, LaN/a;->c:I

    goto :goto_11

    .line 118
    :cond_76
    invoke-virtual {v5}, Ln/B;->a()Ln/p;

    move-result-object v5

    goto :goto_3d

    .line 125
    :cond_7b
    iget-object v1, p0, LaN/a;->i:Ln/Q;

    invoke-static {v0, v1}, Lt/e;->a(Lat/B;Ln/Q;)V

    goto :goto_4a

    .line 135
    :cond_81
    new-instance v0, Lcom/google/android/maps/driveabout/vector/a;

    iget-object v1, p0, LaN/a;->i:Ln/Q;

    invoke-interface {v6}, Lcom/google/googlenav/ui/aF;->n()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/a;-><init>(Ln/Q;IIILn/p;Ljava/lang/String;)V

    iput-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    goto :goto_6d

    .line 139
    :cond_8f
    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    move-object v5, v0

    check-cast v5, Lcom/google/googlenav/ui/aG;

    .line 140
    invoke-interface {v5}, Lcom/google/googlenav/ui/aG;->j()[Lat/B;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v3, :cond_9e

    .line 141
    iput-object v7, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    goto :goto_6d

    .line 142
    :cond_9e
    invoke-interface {v5}, Lcom/google/googlenav/ui/aG;->l()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 144
    iget-object v0, p0, LaN/a;->e:Ln/U;

    if-eqz v0, :cond_b2

    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aH;->i()I

    move-result v0

    iget v1, p0, LaN/a;->c:I

    if-eq v0, v1, :cond_be

    .line 146
    :cond_b2
    invoke-direct {p0, v5, v3}, LaN/a;->a(Lcom/google/googlenav/ui/aG;Z)Ln/U;

    move-result-object v0

    iput-object v0, p0, LaN/a;->e:Ln/U;

    .line 147
    invoke-direct {p0, v5}, LaN/a;->a(Lcom/google/googlenav/ui/aG;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LaN/a;->f:Ljava/util/List;

    .line 152
    :cond_be
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v1, p0, LaN/a;->e:Ln/U;

    iget-object v2, p0, LaN/a;->f:Ljava/util/List;

    move-object v3, v5

    check-cast v3, Lat/M;

    invoke-virtual {v3}, Lat/M;->f()I

    move-result v3

    invoke-interface {v5}, Lcom/google/googlenav/ui/aG;->k()I

    move-result v4

    invoke-interface {v5}, Lcom/google/googlenav/ui/aG;->m()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Ln/U;Ljava/util/List;III)V

    iput-object v0, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    goto :goto_6d

    .line 156
    :cond_d9
    iget-object v0, p0, LaN/a;->d:Ln/U;

    if-eqz v0, :cond_e7

    iget-object v0, p0, LaN/a;->b:Lcom/google/googlenav/ui/aH;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aH;->i()I

    move-result v0

    iget v2, p0, LaN/a;->c:I

    if-eq v0, v2, :cond_ed

    .line 158
    :cond_e7
    invoke-direct {p0, v5, v1}, LaN/a;->a(Lcom/google/googlenav/ui/aG;Z)Ln/U;

    move-result-object v0

    iput-object v0, p0, LaN/a;->d:Ln/U;

    .line 160
    :cond_ed
    invoke-interface {v5}, Lcom/google/googlenav/ui/aG;->c()Ln/B;

    move-result-object v0

    .line 161
    if-nez v0, :cond_106

    move-object v0, v7

    .line 164
    :goto_f4
    new-instance v1, Lcom/google/android/maps/driveabout/vector/X;

    iget-object v2, p0, LaN/a;->d:Ln/U;

    iget v3, p0, LaN/a;->j:I

    int-to-float v3, v3

    invoke-interface {v5}, Lcom/google/googlenav/ui/aG;->k()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/vector/X;-><init>(Ln/U;FILn/p;)V

    iput-object v1, p0, LaN/a;->h:Lcom/google/android/maps/driveabout/vector/aD;

    goto/16 :goto_6d

    .line 161
    :cond_106
    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    goto :goto_f4
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 219
    const v0, 0x26548

    return v0
.end method
