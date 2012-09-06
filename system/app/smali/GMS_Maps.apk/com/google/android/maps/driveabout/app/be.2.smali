.class public Lcom/google/android/maps/driveabout/app/bE;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/bz;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/bw;

.field private final b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private final c:Lcom/google/android/maps/driveabout/vector/aB;

.field private d:Lcom/google/android/maps/driveabout/vector/cf;

.field private final e:Lw/e;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/Bitmap;

.field private i:Ljava/util/HashSet;

.field private final j:Ljava/util/List;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/android/maps/driveabout/app/NavigationMapView;Lcom/google/android/maps/driveabout/vector/aB;Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bE;->a:Lcom/google/android/maps/driveabout/app/bw;

    .line 117
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    .line 118
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bE;->c:Lcom/google/android/maps/driveabout/vector/aB;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->i:Ljava/util/HashSet;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->j:Ljava/util/List;

    .line 123
    new-instance v0, Lw/e;

    invoke-direct {v0, p4, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ck;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/ck;-><init>()V

    invoke-virtual {v0, v1}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/df;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bH;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/bH;-><init>(Lcom/google/android/maps/driveabout/app/bE;Lcom/google/android/maps/driveabout/app/bF;)V

    invoke-virtual {v0, v1}, Lw/e;->a(Lw/j;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bE;->f:I

    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bE;->g:I

    .line 131
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012d

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->h:Landroid/graphics/Bitmap;

    .line 133
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/bw;)V
    .registers 3
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bE;->k:Z

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->postInvalidate()V

    .line 342
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->d:Lcom/google/android/maps/driveabout/vector/cf;

    if-nez v0, :cond_15

    .line 168
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cf;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ck;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/ck;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cf;-><init>(Lcom/google/android/maps/driveabout/vector/df;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->d:Lcom/google/android/maps/driveabout/vector/cf;

    .line 170
    :cond_15
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bE;->k:Z

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/bE;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 154
    :cond_7
    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bw;->d()[Lcom/google/android/maps/driveabout/app/by;

    move-result-object v4

    move v1, v2

    .line 220
    :goto_d
    array-length v0, v4

    if-ge v1, v0, :cond_51

    .line 221
    aget-object v5, v4, v1

    .line 222
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/by;->e()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/app/by;->a(F)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/app/by;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 224
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 225
    new-instance v7, Lr/V;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/by;->i()Ln/G;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lr/V;-><init>(Ln/am;Ln/G;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 220
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 236
    :cond_51
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/bE;->i:Ljava/util/HashSet;

    .line 238
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    .line 240
    :goto_59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7c

    .line 241
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/V;

    .line 242
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 243
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_6e
    :goto_6e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_59

    .line 244
    :cond_72
    invoke-virtual {p0, v0, v4}, Lcom/google/android/maps/driveabout/app/bE;->a(Lr/V;[Lcom/google/android/maps/driveabout/app/by;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 245
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 251
    :cond_7c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r()Lcom/google/android/maps/driveabout/vector/ay;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_9e

    instance-of v1, v0, Lcom/google/android/maps/driveabout/app/bG;

    if-eqz v1, :cond_9e

    .line 253
    check-cast v0, Lcom/google/android/maps/driveabout/app/bG;

    move v1, v2

    .line 255
    :goto_8b
    array-length v3, v4

    if-ge v1, v3, :cond_b6

    .line 256
    aget-object v3, v4, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bG;->a()Lcom/google/android/maps/driveabout/app/by;

    move-result-object v7

    if-ne v3, v7, :cond_b3

    .line 257
    const/4 v0, 0x1

    .line 261
    :goto_97
    if-nez v0, :cond_9e

    .line 262
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->b:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q()V

    .line 268
    :cond_9e
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_ae

    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->c:Lcom/google/android/maps/driveabout/vector/aB;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bI;

    invoke-direct {v1, v5}, Lcom/google/android/maps/driveabout/app/bI;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/aA;Z)V

    .line 272
    :cond_ae
    iput-object v6, p0, Lcom/google/android/maps/driveabout/app/bE;->i:Ljava/util/HashSet;

    .line 273
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bE;->k:Z

    .line 274
    return-void

    .line 255
    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_b6
    move v0, v2

    goto :goto_97
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->b(Z)V

    .line 181
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bw;->e()I

    move-result v0

    if-nez v0, :cond_a

    .line 146
    :cond_9
    :goto_9
    return v2

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->d:Lcom/google/android/maps/driveabout/vector/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cf;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bE;->j:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/cf;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 142
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bE;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 143
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bE;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bE;->k:Z

    goto :goto_9
.end method

.method a(Lr/V;[Lcom/google/android/maps/driveabout/app/by;)Z
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->b(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_28

    move v1, v9

    .line 289
    :goto_c
    array-length v2, p2

    if-ge v1, v2, :cond_8c

    .line 290
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/by;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lr/V;->k()Ln/G;

    move-result-object v3

    invoke-virtual {v3}, Ln/G;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 291
    aget-object v6, p2, v1

    .line 295
    :goto_25
    if-nez v6, :cond_2c

    move v9, v10

    .line 335
    :cond_28
    :goto_28
    return v9

    .line 289
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 299
    :cond_2c
    check-cast v0, Lcom/google/android/maps/driveabout/vector/ba;

    .line 300
    new-instance v11, Lcom/google/android/maps/driveabout/vector/ct;

    invoke-direct {v11}, Lcom/google/android/maps/driveabout/vector/ct;-><init>()V

    .line 301
    invoke-virtual {v0, v11}, Lcom/google/android/maps/driveabout/vector/ba;->a(Lcom/google/android/maps/driveabout/vector/ct;)Z

    .line 302
    :cond_36
    :goto_36
    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/ct;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 303
    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/ct;->a()Lcom/google/android/maps/driveabout/vector/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ca;->a()Ln/l;

    move-result-object v5

    .line 304
    instance-of v0, v5, Ln/R;

    if-eqz v0, :cond_36

    .line 305
    check-cast v5, Ln/R;

    .line 311
    :try_start_4a
    invoke-virtual {v5}, Ln/R;->p()Ln/E;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln/E;->a(I)Ln/F;

    move-result-object v0

    invoke-virtual {v0}, Ln/F;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_5a} :catch_85

    move-result v0

    .line 316
    :goto_5b
    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/app/by;->c(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_36

    .line 321
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 322
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 323
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/app/by;->f()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 324
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bE;->h:Landroid/graphics/Bitmap;

    .line 325
    iget v3, p0, Lcom/google/android/maps/driveabout/app/bE;->f:I

    .line 326
    iget v4, p0, Lcom/google/android/maps/driveabout/app/bE;->g:I

    .line 328
    :goto_79
    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/bE;->c:Lcom/google/android/maps/driveabout/vector/aB;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bG;

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bG;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILn/R;Lcom/google/android/maps/driveabout/app/by;Lr/V;Lcom/google/android/maps/driveabout/app/bF;)V

    invoke-virtual {v12, v0}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    goto :goto_36

    .line 313
    :catch_85
    move-exception v0

    move v0, v9

    goto :goto_5b

    :cond_88
    move v9, v10

    .line 333
    goto :goto_28

    :cond_8a
    move-object v2, v8

    goto :goto_79

    :cond_8c
    move-object v6, v8

    goto :goto_25
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    invoke-virtual {v1, v0}, Lw/e;->a(Z)V

    .line 176
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->e:Lw/e;

    invoke-virtual {v0}, Lw/e;->g()V

    .line 186
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method
