.class public Ls/k;
.super Ls/q;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Ls/p;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lo/x;

.field private j:[Lo/x;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ls/q;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/k;->c:Z

    return-void
.end method

.method static synthetic a(Ls/k;)Lo/x;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Ls/k;->i:Lo/x;

    return-object v0
.end method

.method private a(Lo/x;Lo/x;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1}, Lo/x;->v()[Lo/R;

    move-result-object v2

    .line 212
    invoke-virtual {p2}, Lo/x;->v()[Lo/R;

    move-result-object v3

    .line 213
    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_e

    .line 221
    :cond_d
    :goto_d
    return v1

    :cond_e
    move v0, v1

    .line 216
    :goto_f
    array-length v4, v2

    if-ge v0, v4, :cond_27

    .line 217
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lo/R;->c()Ln/s;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lo/R;->c()Ln/s;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln/s;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 221
    :cond_27
    const/4 v1, 0x1

    goto :goto_d
.end method

.method static synthetic a(Ls/k;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Ls/k;->g:Z

    return p1
.end method

.method private ai()V
    .registers 4

    .prologue
    .line 226
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_1d

    .line 227
    iget-object v0, p0, Ls/k;->j:[Lo/x;

    .line 231
    :goto_6
    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-object v2, p0, Ls/k;->i:Lo/x;

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;[Lo/x;)V

    .line 232
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/k;->i:Lo/x;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;)V

    .line 233
    return-void

    .line 229
    :cond_1d
    const/4 v0, 0x1

    new-array v0, v0, [Lo/x;

    const/4 v1, 0x0

    iget-object v2, p0, Ls/k;->i:Lo/x;

    aput-object v2, v0, v1

    goto :goto_6
.end method

.method private aj()V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Ls/k;->i:Lo/x;

    if-eqz v0, :cond_44

    iget-object v0, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v0}, Lo/x;->E()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 237
    iget-object v0, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v0}, Lo/x;->D()[Lo/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lo/c;->a([Lo/b;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 239
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/CharSequence;)V

    .line 249
    :goto_2f
    return-void

    .line 243
    :cond_30
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dp;->b(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 247
    :cond_44
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->n()V

    goto :goto_2f
.end method

.method private ak()V
    .registers 4

    .prologue
    .line 280
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-object v0, p0, Ls/k;->i:Lo/x;

    if-eqz v0, :cond_1f

    invoke-static {}, Lo/c;->a()Lo/c;

    move-result-object v0

    iget-object v2, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v2}, Lo/x;->D()[Lo/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/c;->b([Lo/b;)I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1b
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->e(Z)V

    .line 282
    return-void

    .line 280
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private c(Lo/x;[Lo/x;)Lo/x;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_12

    .line 201
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Ls/k;->a(Lo/x;Lo/x;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 202
    aget-object v0, p2, v0

    .line 206
    :goto_e
    return-object v0

    .line 200
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public A()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v2, p0, Ls/k;->d:Ls/p;

    if-eqz v2, :cond_d

    .line 374
    invoke-virtual {p0}, Ls/k;->ad()V

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Ls/k;->d:Ls/p;

    .line 389
    :goto_c
    return v0

    .line 377
    :cond_d
    iget-boolean v2, p0, Ls/k;->f:Z

    if-eqz v2, :cond_22

    .line 378
    invoke-virtual {p0}, Ls/k;->ad()V

    .line 379
    iput-boolean v1, p0, Ls/k;->c:Z

    .line 380
    iget-object v2, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/app/cI;->c(Z)V

    .line 381
    iput-boolean v1, p0, Ls/k;->f:Z

    goto :goto_c

    .line 383
    :cond_22
    iget-boolean v2, p0, Ls/k;->g:Z

    if-eqz v2, :cond_35

    .line 384
    iget-object v2, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->f()Lo/r;

    move-result-object v2

    invoke-virtual {v2}, Lo/r;->c()V

    .line 385
    invoke-virtual {p0}, Ls/k;->ad()V

    .line 386
    iput-boolean v1, p0, Ls/k;->g:Z

    goto :goto_c

    :cond_35
    move v0, v1

    .line 389
    goto :goto_c
.end method

.method public a()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/k;->c:Z

    .line 70
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ls/k;->b()V

    .line 72
    return-void
.end method

.method protected a(Landroid/os/Bundle;Ln/ab;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aN;Ln/ab;)V

    .line 306
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bM;)V
    .registers 3
    .parameter

    .prologue
    .line 442
    invoke-super {p0, p1}, Ls/q;->a(Lcom/google/android/maps/driveabout/app/bM;)V

    .line 443
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 444
    const v0, 0x7f1004b8

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 445
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 2
    .parameter

    .prologue
    .line 438
    return-void
.end method

.method protected a(Ln/Q;)V
    .registers 16
    .parameter

    .prologue
    .line 401
    if-nez p1, :cond_3

    .line 433
    :cond_2
    :goto_2
    return-void

    .line 404
    :cond_3
    const-wide/high16 v0, 0x3fc4

    const-wide/high16 v2, 0x4000

    const/high16 v4, 0x41f0

    iget-object v5, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v5}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v7, v0, v2

    .line 407
    const-wide v2, 0x7fefffffffffffffL

    .line 408
    const/4 v1, 0x0

    .line 409
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_60

    .line 410
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    :goto_30
    iget-object v1, p0, Ls/k;->j:[Lo/x;

    array-length v1, v1

    if-ge v4, v1, :cond_61

    .line 411
    iget-object v1, p0, Ls/k;->j:[Lo/x;

    aget-object v1, v1, v4

    .line 412
    invoke-virtual {v1, p1, v7, v8}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v9

    .line 413
    if-nez v9, :cond_46

    move-wide v1, v2

    .line 410
    :goto_40
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v12, v1

    move-wide v2, v12

    goto :goto_30

    .line 416
    :cond_46
    invoke-virtual {v9}, Lo/B;->d()D

    move-result-wide v5

    .line 417
    iget-object v10, p0, Ls/k;->i:Lo/x;

    if-ne v1, v10, :cond_54

    .line 422
    const-wide v10, 0x3fe999999999999aL

    mul-double/2addr v5, v10

    .line 424
    :cond_54
    cmpg-double v5, v5, v2

    if-gez v5, :cond_6b

    .line 425
    invoke-virtual {v9}, Lo/B;->d()D

    move-result-wide v2

    move-object v0, v1

    move-wide v12, v2

    move-wide v1, v12

    .line 426
    goto :goto_40

    :cond_60
    move-object v0, v1

    .line 430
    :cond_61
    if-eqz v0, :cond_2

    iget-object v1, p0, Ls/k;->i:Lo/x;

    if-eq v0, v1, :cond_2

    .line 431
    invoke-virtual {p0, v0}, Ls/k;->a(Lo/x;)V

    goto :goto_2

    :cond_6b
    move-wide v1, v2

    goto :goto_40
.end method

.method protected a(Lo/g;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    invoke-super {p0, p1}, Ls/q;->a(Lo/g;)V

    .line 396
    invoke-virtual {p0}, Ls/k;->ad()V

    .line 397
    return-void
.end method

.method public a(Lo/x;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Ls/k;->i:Lo/x;

    .line 296
    invoke-direct {p0}, Ls/k;->ai()V

    .line 297
    invoke-direct {p0}, Ls/k;->aj()V

    .line 298
    invoke-virtual {p0}, Ls/k;->u()V

    .line 299
    return-void
.end method

.method public a(Lo/x;[Lo/x;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    invoke-virtual {p0}, Ls/k;->ad()V

    .line 157
    iget-boolean v0, p0, Ls/k;->f:Z

    if-eqz v0, :cond_5f

    .line 158
    iput-boolean v3, p0, Ls/k;->f:Z

    .line 159
    array-length v0, p2

    if-le v0, v2, :cond_1a

    .line 160
    iput-boolean v2, p0, Ls/k;->c:Z

    .line 161
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/r;->a(Z)V

    .line 172
    :cond_1a
    :goto_1a
    iput-boolean v2, p0, Ls/k;->h:Z

    .line 174
    iget-object v0, p0, Ls/k;->i:Lo/x;

    if-eqz v0, :cond_78

    iget-object v0, p0, Ls/k;->i:Lo/x;

    invoke-direct {p0, v0, p2}, Ls/k;->c(Lo/x;[Lo/x;)Lo/x;

    move-result-object v0

    :goto_26
    iput-object v0, p0, Ls/k;->i:Lo/x;

    .line 175
    iget-object v0, p0, Ls/k;->i:Lo/x;

    if-nez v0, :cond_2e

    .line 176
    iput-object p1, p0, Ls/k;->i:Lo/x;

    .line 178
    :cond_2e
    iput-object p2, p0, Ls/k;->j:[Lo/x;

    .line 180
    invoke-direct {p0}, Ls/k;->ai()V

    .line 181
    invoke-direct {p0}, Ls/k;->aj()V

    .line 182
    invoke-virtual {p0}, Ls/k;->m()V

    .line 183
    invoke-direct {p0}, Ls/k;->ak()V

    .line 184
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_49

    .line 185
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0}, Lo/r;->g()V

    .line 187
    :cond_49
    iget-object v0, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v0}, Lo/x;->y()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Ls/k;->d:Ls/p;

    if-eqz v0, :cond_5e

    .line 188
    iget-object v0, p0, Ls/k;->a:Ls/n;

    iget-object v2, p0, Ls/k;->d:Ls/p;

    invoke-virtual {v0, v2}, Ls/n;->a(Ls/p;)V

    .line 189
    iput-object v1, p0, Ls/k;->d:Ls/p;

    .line 191
    :cond_5e
    return-void

    .line 163
    :cond_5f
    iget-boolean v0, p0, Ls/k;->g:Z

    if-eqz v0, :cond_1a

    .line 164
    iput-boolean v3, p0, Ls/k;->g:Z

    .line 167
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_1a

    array-length v0, p2

    if-ne v0, v2, :cond_1a

    .line 168
    iput-boolean v3, p0, Ls/k;->c:Z

    .line 169
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/r;->a(Z)V

    goto :goto_1a

    :cond_78
    move-object v0, v1

    .line 174
    goto :goto_26
.end method

.method protected a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Ls/k;->h:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_2c

    .line 142
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/k;->h:Z

    .line 143
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_2d

    .line 144
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->b(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 151
    :cond_2c
    :goto_2c
    return-void

    .line 147
    :cond_2d
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->c(Lcom/google/android/maps/driveabout/app/aN;)V

    goto :goto_2c
.end method

.method public a(Ls/p;)Z
    .registers 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Ls/k;->i:Lo/x;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v0}, Lo/x;->y()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 59
    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Ls/k;->c(I)V

    .line 60
    iput-object p1, p0, Ls/k;->d:Ls/p;

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public b()V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/k;->h:Z

    .line 77
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 78
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->C()V

    .line 79
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->v()V

    .line 80
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 81
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->G()V

    .line 83
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    iput-object v0, p0, Ls/k;->j:[Lo/x;

    .line 84
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    iput-object v0, p0, Ls/k;->i:Lo/x;

    .line 86
    invoke-virtual {p0}, Ls/k;->m()V

    .line 87
    invoke-direct {p0}, Ls/k;->ak()V

    .line 89
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->z()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 90
    invoke-direct {p0}, Ls/k;->ai()V

    .line 92
    :cond_5e
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ls/k;->i:Lo/x;

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 100
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    iget-object v1, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v0, v1}, Lo/r;->a(Lo/x;)V

    .line 103
    :cond_26
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/r;->a(Z)V

    .line 104
    invoke-super {p0}, Ls/q;->d()V

    .line 105
    iput-object v2, p0, Ls/k;->i:Lo/x;

    .line 106
    iput-object v2, p0, Ls/k;->j:[Lo/x;

    .line 107
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 112
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->q()V

    .line 113
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->H()V

    .line 114
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    .line 115
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->s()V

    .line 116
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->n()V

    .line 117
    return-void
.end method

.method protected m()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-boolean v2, p0, Ls/k;->f:Z

    if-nez v2, :cond_2f

    iget-object v2, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->o()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Ls/k;->j:[Lo/x;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Ls/k;->j:[Lo/x;

    array-length v2, v2

    if-le v2, v0, :cond_2f

    :cond_20
    :goto_20
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->c(Z)V

    .line 274
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-boolean v1, p0, Ls/k;->c:Z

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->d(Z)V

    .line 275
    return-void

    .line 269
    :cond_2f
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public p()V
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Ls/k;->c:Z

    iput-boolean v0, p0, Ls/k;->e:Z

    .line 136
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/k;->h:Z

    .line 122
    iget-boolean v0, p0, Ls/k;->e:Z

    iput-boolean v0, p0, Ls/k;->c:Z

    .line 123
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_21

    .line 124
    invoke-virtual {p0}, Ls/k;->m()V

    .line 125
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0}, Lo/r;->g()V

    .line 126
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/r;->a(Z)V

    .line 128
    :cond_21
    invoke-direct {p0}, Ls/k;->ai()V

    .line 129
    invoke-direct {p0}, Ls/k;->ak()V

    .line 130
    invoke-virtual {p0}, Ls/k;->u()V

    .line 131
    return-void
.end method

.method protected r()V
    .registers 1

    .prologue
    .line 291
    return-void
.end method

.method protected u()V
    .registers 4

    .prologue
    .line 253
    iget-boolean v0, p0, Ls/k;->c:Z

    if-eqz v0, :cond_12

    .line 254
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/k;->i:Lo/x;

    iget-object v2, p0, Ls/k;->j:[Lo/x;

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(Lo/x;[Lo/x;)V

    .line 258
    :goto_11
    return-void

    .line 256
    :cond_12
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/app/aN;)V

    goto :goto_11
.end method

.method protected v()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficMode(I)V

    .line 287
    return-void
.end method

.method protected x()V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTopOverlayText(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method public y()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->o()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 311
    iput-boolean v1, p0, Ls/k;->f:Z

    .line 312
    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Ls/k;->c(I)V

    .line 314
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    iget-object v1, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    iget-object v2, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/r;->a(Lm/b;Lo/x;)V

    .line 328
    :goto_33
    invoke-virtual {p0}, Ls/k;->m()V

    .line 329
    return-void

    .line 317
    :cond_37
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/r;->a(Z)V

    .line 318
    iget-boolean v0, p0, Ls/k;->c:Z

    if-nez v0, :cond_74

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Ls/k;->c:Z

    .line 319
    iput-boolean v1, p0, Ls/k;->h:Z

    .line 320
    invoke-virtual {p0}, Ls/k;->u()V

    .line 321
    invoke-virtual {p0, v2}, Ls/k;->a(Z)V

    .line 322
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    iput-object v0, p0, Ls/k;->i:Lo/x;

    .line 323
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    iput-object v0, p0, Ls/k;->j:[Lo/x;

    .line 324
    invoke-direct {p0}, Ls/k;->ai()V

    .line 326
    iget-object v0, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    invoke-virtual {v0}, Lo/r;->g()V

    goto :goto_33

    :cond_74
    move v0, v2

    .line 318
    goto :goto_45
.end method

.method public z()V
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Ls/k;->i:Lo/x;

    invoke-virtual {v0}, Lo/x;->D()[Lo/b;

    move-result-object v0

    .line 335
    new-instance v1, Ls/l;

    invoke-direct {v1, p0, v0}, Ls/l;-><init>(Ls/k;[Lo/b;)V

    .line 368
    iget-object v2, p0, Ls/k;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a([Lo/b;Lcom/google/android/maps/driveabout/app/aE;)V

    .line 369
    return-void
.end method
