.class public LaP/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lad/w;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lad/w;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, LaP/e;->a:Lad/w;

    .line 56
    return-void
.end method

.method private a(LaP/g;)F
    .registers 5
    .parameter

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, LaP/g;->a()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 93
    invoke-virtual {p1, v0}, LaP/g;->a(I)LaP/h;

    move-result-object v2

    invoke-virtual {v2}, LaP/h;->p()F

    move-result v2

    add-float/2addr v1, v2

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_14
    return v1
.end method

.method private a(Lad/t;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    new-instance v1, LaP/g;

    new-instance v2, LaP/p;

    iget-object v3, p0, LaP/e;->a:Lad/w;

    invoke-direct {v2, v3, p1, p2}, LaP/p;-><init>(Lad/w;Lad/t;I)V

    invoke-direct {v1, v2}, LaP/g;-><init>(LaP/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method private a(Lad/t;ILjava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    new-instance v1, LaP/g;

    new-instance v2, LaP/m;

    iget-object v3, p0, LaP/e;->a:Lad/w;

    invoke-direct {v2, v3, p1, p2, p3}, LaP/m;-><init>(Lad/w;Lad/t;ILjava/util/List;)V

    invoke-direct {v1, v2}, LaP/g;-><init>(LaP/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method private a(Lad/t;Lad/t;ILcom/google/common/collect/P;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 224
    new-instance v7, LaP/g;

    new-instance v0, LaP/j;

    iget-object v1, p0, LaP/e;->a:Lad/w;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LaP/j;-><init>(Lad/w;Lad/t;Lad/t;ILjava/util/List;)V

    invoke-direct {v7, v0}, LaP/g;-><init>(LaP/h;)V

    .line 227
    invoke-virtual {p2}, Lad/t;->O()[Lad/u;

    move-result-object v8

    .line 228
    :goto_1c
    array-length v0, v8

    if-ge v6, v0, :cond_44

    .line 229
    aget-object v2, v8, v6

    .line 230
    add-int/lit8 v0, v6, 0x1

    array-length v1, v8

    if-ge v0, v1, :cond_42

    add-int/lit8 v0, v6, 0x1

    aget-object v3, v8, v0

    .line 231
    :goto_2a
    new-instance v0, LaP/r;

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LaP/r;-><init>(Lad/t;Lad/u;Lad/u;ILjava/util/List;)V

    invoke-virtual {v7, v0}, LaP/g;->a(LaP/h;)V

    .line 228
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1c

    .line 230
    :cond_42
    const/4 v3, 0x0

    goto :goto_2a

    .line 234
    :cond_44
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private a(Lad/t;Lad/t;ILjava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v6, p0, LaP/e;->b:Ljava/util/List;

    new-instance v7, LaP/g;

    new-instance v0, LaP/l;

    iget-object v1, p0, LaP/e;->a:Lad/w;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LaP/l;-><init>(Lad/w;Lad/t;Lad/t;ILjava/util/List;)V

    invoke-direct {v7, v0}, LaP/g;-><init>(LaP/h;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 76
    move v1, v2

    :goto_2
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 77
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-direct {p0, v0}, LaP/e;->a(LaP/g;)F

    move-result v5

    .line 78
    const/4 v0, 0x0

    move v3, v2

    move v4, v0

    .line 79
    :goto_19
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0}, LaP/g;->a()I

    move-result v0

    if-ge v3, v0, :cond_41

    .line 80
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0, v3}, LaP/g;->a(I)LaP/h;

    move-result-object v0

    .line 81
    sub-float v6, v5, v4

    invoke-virtual {v0, v6}, LaP/h;->c(F)V

    .line 82
    invoke-virtual {v0}, LaP/h;->p()F

    move-result v0

    add-float/2addr v4, v0

    .line 79
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_19

    .line 76
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 85
    :cond_45
    return-void
.end method

.method private b(LaP/g;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, LaP/g;->a(I)LaP/h;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, LaP/h;->b()LaP/q;

    move-result-object v2

    sget-object v3, LaP/q;->b:LaP/q;

    if-ne v2, v3, :cond_3d

    .line 149
    invoke-virtual {v1}, LaP/h;->a()Lad/t;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lad/t;->v()I

    move-result v1

    .line 151
    invoke-direct {p0, p1}, LaP/e;->a(LaP/g;)F

    move-result v2

    .line 152
    :goto_19
    invoke-virtual {p1}, LaP/g;->a()I

    move-result v3

    if-ge v0, v3, :cond_3d

    .line 153
    invoke-virtual {p1, v0}, LaP/g;->a(I)LaP/h;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, LaP/h;->n()Z

    move-result v4

    if-nez v4, :cond_3a

    if-lez v1, :cond_3a

    .line 155
    int-to-float v4, v1

    invoke-virtual {v3}, LaP/h;->p()F

    move-result v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 157
    invoke-virtual {p1, v0}, LaP/g;->a(I)LaP/h;

    move-result-object v4

    invoke-virtual {v4, v3}, LaP/h;->a(I)V

    .line 152
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 161
    :cond_3d
    return-void
.end method

.method private b(Lad/t;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    new-instance v1, LaP/g;

    new-instance v2, LaP/k;

    iget-object v3, p0, LaP/e;->a:Lad/w;

    invoke-direct {v2, v3, p1, p2}, LaP/k;-><init>(Lad/w;Lad/t;I)V

    invoke-direct {v1, v2}, LaP/g;-><init>(LaP/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method private b(Lad/t;Lad/t;ILjava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v6, p0, LaP/e;->b:Ljava/util/List;

    new-instance v7, LaP/g;

    new-instance v0, LaP/o;

    iget-object v1, p0, LaP/e;->a:Lad/w;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LaP/o;-><init>(Lad/w;Lad/t;Lad/t;ILjava/util/List;)V

    invoke-direct {v7, v0}, LaP/g;-><init>(LaP/h;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private c(LaP/g;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 167
    move v1, v0

    .line 168
    :goto_2
    invoke-virtual {p1}, LaP/g;->a()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 169
    invoke-virtual {p1, v0}, LaP/g;->a(I)LaP/h;

    move-result-object v2

    invoke-virtual {v2}, LaP/h;->o()I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 171
    :cond_14
    return v1
.end method

.method private c()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, LaP/e;->e()V

    .line 104
    invoke-direct {p0}, LaP/e;->d()I

    move-result v7

    move v1, v2

    move v3, v2

    .line 106
    :goto_a
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 108
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-direct {p0, v0}, LaP/e;->c(LaP/g;)I

    move-result v8

    move v4, v2

    move v5, v2

    .line 109
    :goto_20
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0}, LaP/g;->a()I

    move-result v0

    if-ge v4, v0, :cond_52

    .line 110
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0, v4}, LaP/g;->a(I)LaP/h;

    move-result-object v0

    .line 111
    sub-int v6, v8, v5

    invoke-virtual {v0, v6}, LaP/h;->e(I)V

    .line 112
    sub-int v6, v7, v3

    invoke-virtual {v0, v6}, LaP/h;->f(I)V

    .line 113
    invoke-virtual {v0}, LaP/h;->o()I

    move-result v0

    .line 114
    add-int v6, v3, v0

    .line 115
    add-int v3, v5, v0

    .line 109
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v3

    move v3, v6

    goto :goto_20

    .line 106
    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 118
    :cond_56
    return-void
.end method

.method private d()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 124
    move v1, v0

    move v2, v0

    .line 125
    :goto_3
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 126
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-direct {p0, v0}, LaP/e;->c(LaP/g;)I

    move-result v0

    add-int/2addr v2, v0

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 128
    :cond_1c
    return v2
.end method

.method private e()V
    .registers 3

    .prologue
    .line 135
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 136
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-virtual {v0}, LaP/g;->b()Z

    move-result v0

    if-nez v0, :cond_23

    .line 137
    iget-object v0, p0, LaP/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/g;

    invoke-direct {p0, v0}, LaP/e;->b(LaP/g;)V

    .line 135
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 140
    :cond_27
    return-void
.end method

.method private f()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 175
    new-instance v2, LaP/f;

    iget-object v0, p0, LaP/e;->a:Lad/w;

    invoke-direct {v2, v0}, LaP/f;-><init>(Lad/b;)V

    .line 177
    invoke-virtual {v2}, LaP/f;->j()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 180
    invoke-virtual {v2}, LaP/f;->d()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_be

    .line 181
    invoke-virtual {v2}, LaP/f;->b()Lad/t;

    move-result-object v0

    .line 182
    invoke-virtual {v2}, LaP/f;->a()Lad/t;

    move-result-object v3

    invoke-virtual {v2}, LaP/f;->f()I

    move-result v4

    invoke-virtual {v2}, LaP/f;->i()Lcom/google/common/collect/P;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, LaP/e;->a(Lad/t;Lad/t;ILjava/util/List;)V

    .line 184
    invoke-virtual {v2}, LaP/f;->h()V

    .line 186
    :goto_34
    invoke-virtual {v2}, LaP/f;->j()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 190
    invoke-virtual {v2}, LaP/f;->b()Lad/t;

    move-result-object v3

    invoke-virtual {v2}, LaP/f;->f()I

    move-result v4

    invoke-virtual {v2}, LaP/f;->i()Lcom/google/common/collect/P;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, LaP/e;->a(Lad/t;Lad/t;ILcom/google/common/collect/P;)V

    .line 191
    invoke-virtual {v2}, LaP/f;->h()V

    .line 193
    :cond_4c
    :goto_4c
    invoke-virtual {v2}, LaP/f;->j()Z

    move-result v0

    if-nez v0, :cond_96

    .line 194
    invoke-virtual {v2}, LaP/f;->e()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 195
    invoke-virtual {v2}, LaP/f;->c()Lad/t;

    move-result-object v0

    invoke-virtual {v2}, LaP/f;->f()I

    move-result v3

    invoke-virtual {v2}, LaP/f;->i()Lcom/google/common/collect/P;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, LaP/e;->a(Lad/t;ILjava/util/List;)V

    .line 193
    :goto_6f
    invoke-virtual {v2}, LaP/f;->h()V

    goto :goto_4c

    .line 198
    :cond_73
    invoke-virtual {v2}, LaP/f;->c()Lad/t;

    move-result-object v0

    invoke-virtual {v2}, LaP/f;->b()Lad/t;

    move-result-object v3

    invoke-virtual {v2}, LaP/f;->g()I

    move-result v4

    invoke-direct {p0, v0, v3, v4, v1}, LaP/e;->b(Lad/t;Lad/t;ILjava/util/List;)V

    .line 200
    invoke-virtual {v2}, LaP/f;->c()Lad/t;

    move-result-object v0

    invoke-virtual {v2}, LaP/f;->b()Lad/t;

    move-result-object v3

    invoke-virtual {v2}, LaP/f;->f()I

    move-result v4

    invoke-virtual {v2}, LaP/f;->i()Lcom/google/common/collect/P;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, LaP/e;->a(Lad/t;Lad/t;ILcom/google/common/collect/P;)V

    goto :goto_6f

    .line 204
    :cond_96
    invoke-virtual {v2}, LaP/f;->k()Lcom/google/googlenav/ui/view/android/rideabout/m;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne v0, v1, :cond_aa

    .line 205
    invoke-virtual {v2}, LaP/f;->c()Lad/t;

    move-result-object v0

    invoke-virtual {v2}, LaP/f;->f()I

    move-result v1

    invoke-direct {p0, v0, v1}, LaP/e;->a(Lad/t;I)V

    .line 210
    :cond_a9
    :goto_a9
    return-void

    .line 206
    :cond_aa
    invoke-virtual {v2}, LaP/f;->k()Lcom/google/googlenav/ui/view/android/rideabout/m;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne v0, v1, :cond_a9

    .line 207
    invoke-virtual {v2}, LaP/f;->c()Lad/t;

    move-result-object v0

    invoke-virtual {v2}, LaP/f;->f()I

    move-result v1

    invoke-direct {p0, v0, v1}, LaP/e;->b(Lad/t;I)V

    goto :goto_a9

    :cond_be
    move-object v0, v1

    goto/16 :goto_34
.end method


# virtual methods
.method public a()LaP/d;
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaP/e;->b:Ljava/util/List;

    .line 66
    invoke-direct {p0}, LaP/e;->f()V

    .line 67
    invoke-direct {p0}, LaP/e;->c()V

    .line 68
    invoke-direct {p0}, LaP/e;->b()V

    .line 69
    new-instance v0, LaP/d;

    iget-object v1, p0, LaP/e;->b:Ljava/util/List;

    invoke-direct {v0, v1}, LaP/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method
