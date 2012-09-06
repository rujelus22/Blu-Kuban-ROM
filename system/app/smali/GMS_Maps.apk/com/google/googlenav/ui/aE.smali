.class public abstract Lcom/google/googlenav/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/ac;


# instance fields
.field protected a:Lat/V;

.field protected b:Lcom/google/googlenav/ui/aR;

.field protected final c:Lat/R;

.field private d:Z

.field private e:I

.field private final f:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ae;->d:Z

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->f:Ljava/util/Vector;

    .line 61
    new-instance v0, Lat/R;

    invoke-direct {v0}, Lat/R;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->c:Lat/R;

    .line 62
    return-void
.end method

.method private a(Lat/I;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 273
    .line 274
    iget-boolean v1, p0, Lcom/google/googlenav/ui/ae;->d:Z

    if-eqz v1, :cond_35

    .line 275
    iget-object v1, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v2

    invoke-virtual {v2}, Lat/P;->i()Lat/P;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lat/V;->a(Lat/P;Z)Lat/X;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lat/X;->b()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 278
    invoke-virtual {v1}, Lat/X;->f()Z

    move-result v2

    if-nez v2, :cond_26

    .line 279
    invoke-virtual {v1}, Lat/X;->d()J

    move-result-wide v2

    long-to-int v0, v2

    .line 281
    :cond_26
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lat/X;->a(J)V

    .line 285
    :cond_35
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/googlenav/ui/ae;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Lat/I;Lat/X;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Lcom/google/googlenav/ui/aR;

    if-eqz v0, :cond_24

    :cond_6
    invoke-virtual {p1}, Lat/I;->l()I

    move-result v0

    if-nez v0, :cond_24

    .line 237
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lat/X;->b()Z

    move-result v0

    if-nez v0, :cond_15

    .line 238
    const/4 p2, 0x0

    .line 241
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/ae;->a(Lat/I;Lat/X;)LS/f;

    move-result-object v0

    .line 242
    if-nez v0, :cond_1f

    .line 244
    invoke-virtual {p1, p3}, Lat/I;->a(I)V

    .line 253
    :cond_1e
    :goto_1e
    return-void

    .line 246
    :cond_1f
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Lat/I;->a(LS/f;IZ)V

    goto :goto_1e

    .line 248
    :cond_24
    invoke-virtual {p1}, Lat/I;->l()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lat/I;->l()I

    move-result v0

    if-eq v0, p3, :cond_1e

    .line 250
    invoke-virtual {p1}, Lat/I;->k()V

    .line 251
    invoke-virtual {p1}, Lat/I;->o()V

    goto :goto_1e
.end method

.method private b(Lat/I;Z)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v1

    .line 187
    iget-boolean v2, p0, Lcom/google/googlenav/ui/ae;->d:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Lat/P;->e()Lat/Y;

    move-result-object v2

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2f

    invoke-virtual {v1}, Lat/P;->e()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    const/16 v2, 0x16

    if-gt v1, v2, :cond_2f

    .line 190
    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v0

    invoke-virtual {v0}, Lat/P;->i()Lat/P;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    invoke-virtual {v1, v0, p2}, Lat/V;->a(Lat/P;Z)Lat/X;

    move-result-object v0

    .line 212
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/ae;->a(Lat/I;)I

    move-result v1

    .line 213
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ae;->f()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {p1}, Lat/I;->f()Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_3f
    invoke-virtual {p1}, Lat/I;->m()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p1}, Lat/I;->l()I

    move-result v2

    if-eq v2, v1, :cond_50

    .line 215
    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/ae;->a(Lat/I;Lat/X;I)V

    .line 216
    const/4 v0, 0x1

    .line 219
    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method


# virtual methods
.method protected abstract a(Lat/I;Lat/X;)LS/f;
.end method

.method public a()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Lcom/google/googlenav/ui/aR;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Lcom/google/googlenav/ui/aR;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aR;->a()I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/google/googlenav/ui/ae;->e:I

    .line 84
    return-void

    .line 79
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lat/V;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    .line 68
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/ad;)V
    .registers 3
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ae;->d:Z

    .line 165
    return-void
.end method

.method public a(Lat/I;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/ae;->b(Lat/I;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lat/p;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1}, Lat/p;->g()[Lat/P;

    move-result-object v2

    .line 98
    if-nez v2, :cond_8

    .line 118
    :cond_7
    :goto_7
    return v0

    .line 102
    :cond_8
    array-length v3, v2

    move v1, v0

    .line 103
    :goto_a
    if-ge v1, v3, :cond_2a

    .line 104
    aget-object v4, v2, v1

    .line 106
    invoke-virtual {p1, v4}, Lat/p;->a(Lat/P;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 103
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 110
    :cond_17
    iget-object v5, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    invoke-virtual {v4}, Lat/P;->i()Lat/P;

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lat/V;->a(Lat/P;Z)Lat/X;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lat/X;->b()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_7

    .line 118
    :cond_2a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    invoke-virtual {v0}, Lat/V;->b()V

    .line 179
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/ad;)V
    .registers 3
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public b(Lat/p;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1}, Lat/p;->g()[Lat/P;

    move-result-object v3

    .line 134
    if-nez v3, :cond_9

    .line 156
    :cond_8
    :goto_8
    return v0

    .line 138
    :cond_9
    array-length v4, v3

    move v2, v1

    .line 139
    :goto_b
    if-ge v2, v4, :cond_8

    .line 140
    aget-object v5, v3, v2

    .line 142
    invoke-virtual {p1, v5}, Lat/p;->a(Lat/P;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 139
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 146
    :cond_18
    iget-object v6, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    invoke-virtual {v5}, Lat/P;->i()Lat/P;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lat/V;->a(Lat/P;Z)Lat/X;

    move-result-object v5

    .line 148
    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Lat/X;->b()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, Lat/X;->f()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5}, Lat/X;->d()J

    move-result-wide v5

    const-wide/high16 v7, -0x8000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_15

    :cond_3a
    move v0, v1

    .line 151
    goto :goto_8
.end method

.method public c()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->a:Lat/V;

    invoke-virtual {v0}, Lat/V;->a()V

    .line 295
    return-void
.end method

.method public d()Lcom/google/googlenav/ui/aR;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Lcom/google/googlenav/ui/aR;

    return-object v0
.end method

.method public e()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v8, v0, [[Lcom/google/googlenav/ui/aH;

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v9

    move v7, v5

    move v4, v5

    :goto_11
    if-ge v7, v9, :cond_52

    .line 320
    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ad;

    invoke-interface {v0}, Lcom/google/googlenav/ui/ad;->d()[Lcom/google/googlenav/ui/aH;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_7e

    .line 327
    array-length v2, v3

    move v1, v5

    move v0, v5

    :goto_24
    if-ge v1, v2, :cond_2f

    .line 328
    aget-object v6, v3, v1

    if-eqz v6, :cond_2c

    .line 329
    add-int/lit8 v0, v0, 0x1

    .line 327
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 333
    :cond_2f
    array-length v1, v3

    if-eq v1, v0, :cond_7c

    .line 334
    new-array v2, v0, [Lcom/google/googlenav/ui/aH;

    .line 336
    array-length v10, v3

    move v6, v5

    move v1, v5

    :goto_37
    if-ge v6, v10, :cond_48

    .line 337
    aget-object v0, v3, v6

    if-eqz v0, :cond_7a

    .line 338
    add-int/lit8 v0, v1, 0x1

    aget-object v11, v3, v6

    aput-object v11, v2, v1

    .line 336
    :goto_43
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_37

    :cond_48
    move-object v0, v2

    .line 344
    :goto_49
    aput-object v0, v8, v7

    .line 345
    array-length v0, v0

    add-int/2addr v0, v4

    .line 319
    :goto_4d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v4, v0

    goto :goto_11

    .line 349
    :cond_52
    if-nez v4, :cond_58

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Lcom/google/googlenav/ui/aR;

    .line 366
    :goto_57
    return-void

    .line 356
    :cond_58
    new-array v2, v4, [Lcom/google/googlenav/ui/aH;

    move v0, v5

    move v1, v5

    .line 358
    :goto_5c
    array-length v3, v8

    if-ge v0, v3, :cond_72

    .line 359
    aget-object v3, v8, v0

    if-eqz v3, :cond_6f

    .line 360
    aget-object v3, v8, v0

    aget-object v4, v8, v0

    array-length v4, v4

    invoke-static {v3, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    aget-object v3, v8, v0

    array-length v3, v3

    add-int/2addr v1, v3

    .line 358
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 365
    :cond_72
    new-instance v0, Lcom/google/googlenav/ui/aR;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/aR;-><init>([Lcom/google/googlenav/ui/aH;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Lcom/google/googlenav/ui/aR;

    goto :goto_57

    :cond_7a
    move v0, v1

    goto :goto_43

    :cond_7c
    move-object v0, v3

    goto :goto_49

    :cond_7e
    move v0, v4

    goto :goto_4d
.end method

.method protected abstract f()Z
.end method
