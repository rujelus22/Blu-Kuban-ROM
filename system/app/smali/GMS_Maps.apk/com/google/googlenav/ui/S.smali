.class public Lcom/google/googlenav/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/r;
.implements Lcom/google/googlenav/common/util/n;


# static fields
.field private static final e:I


# instance fields
.field protected final a:Lat/p;

.field protected b:LS/f;

.field protected final c:Landroid/graphics/Point;

.field protected d:Z

.field private f:LS/e;

.field private g:Lcom/google/googlenav/ui/u;

.field private h:Landroid/graphics/Point;

.field private i:I

.field private j:I

.field private k:Lcom/google/googlenav/ui/t;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/s;->e:I

    return-void
.end method

.method public constructor <init>(Lat/p;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    .line 109
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/s;->h:Landroid/graphics/Point;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/s;->d:Z

    .line 134
    iput-object p1, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    .line 135
    return-void
.end method

.method public static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 424
    invoke-static {}, Lcom/google/googlenav/ui/s;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 p0, v0, 0x1

    :cond_a
    return p0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 184
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static d(II)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 350
    sget v0, Lcom/google/googlenav/ui/s;->e:I

    neg-int v0, v0

    if-lt p0, v0, :cond_14

    sget v0, Lcom/google/googlenav/ui/s;->e:I

    if-gt p0, v0, :cond_14

    sget v0, Lcom/google/googlenav/ui/s;->e:I

    neg-int v0, v0

    if-lt p1, v0, :cond_14

    sget v0, Lcom/google/googlenav/ui/s;->e:I

    if-gt p1, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    invoke-virtual {v0}, Lat/p;->c()Lat/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/Y;->a(I)I

    move-result v0

    return v0
.end method

.method public a(II)Lcom/google/googlenav/ui/u;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/s;->b(II)V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->g:Lcom/google/googlenav/ui/u;

    return-object v0
.end method

.method protected final a()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->k:Lcom/google/googlenav/ui/t;

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->k:Lcom/google/googlenav/ui/t;

    invoke-interface {v0}, Lcom/google/googlenav/ui/t;->a()V

    .line 152
    :cond_9
    return-void
.end method

.method public final a(IIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 364
    iput-boolean v2, p0, Lcom/google/googlenav/ui/s;->d:Z

    .line 366
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/r;)V

    .line 369
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    invoke-virtual {v0, p1, p2}, Lat/p;->c(II)V

    .line 372
    if-eqz p3, :cond_1f

    if-nez p1, :cond_14

    if-eqz p2, :cond_1f

    .line 373
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    invoke-virtual {v1}, Lat/p;->d()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/p;->d(Lat/B;)V

    .line 375
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 376
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->h:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 377
    return-void
.end method

.method public a(LZ/b;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 319
    invoke-virtual {p1}, LZ/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 320
    invoke-virtual {p0}, Lcom/google/googlenav/ui/s;->a()V

    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lat/p;

    invoke-virtual {v0, p0}, Lat/p;->a(Lat/r;)V

    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->h:Landroid/graphics/Point;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v1

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 327
    iput-boolean v3, p0, Lcom/google/googlenav/ui/s;->d:Z

    .line 340
    :cond_1e
    :goto_1e
    return-void

    .line 328
    :cond_1f
    invoke-virtual {p1}, LZ/b;->c()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/google/googlenav/ui/s;->d:Z

    if-eqz v0, :cond_53

    .line 329
    invoke-virtual {p1}, LZ/b;->k()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/s;->h:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 330
    invoke-virtual {p1}, LZ/b;->l()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/s;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 331
    iget-object v2, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, v1, v2

    .line 332
    iget-object v3, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v0, v3

    .line 333
    invoke-static {v3, v2}, Lcom/google/googlenav/ui/s;->d(II)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 334
    iget-object v2, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1e

    .line 336
    :cond_53
    invoke-virtual {p1}, LZ/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/s;->d:Z

    if-eqz v0, :cond_1e

    .line 337
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/s;->a(IIZ)V

    .line 338
    invoke-virtual {p0}, Lcom/google/googlenav/ui/s;->b()V

    goto :goto_1e
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 4
    .parameter

    .prologue
    .line 450
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 451
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 452
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/t;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/googlenav/ui/s;->k:Lcom/google/googlenav/ui/t;

    .line 143
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 236
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->e()I

    move-result v1

    .line 238
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->f()I

    move-result v2

    .line 240
    const v3, 0xded7d6

    invoke-interface {v0, v3}, LS/e;->a(I)V

    .line 243
    invoke-interface {v0, v4, v4, v1, v2}, LS/e;->b(IIII)V

    .line 244
    return-void
.end method

.method public a(Laj/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->k:Lcom/google/googlenav/ui/t;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->k:Lcom/google/googlenav/ui/t;

    invoke-interface {v0}, Lcom/google/googlenav/ui/t;->b()V

    .line 161
    :cond_9
    return-void
.end method

.method protected b(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    if-nez v0, :cond_30

    .line 211
    iput p1, p0, Lcom/google/googlenav/ui/s;->i:I

    .line 212
    iput p2, p0, Lcom/google/googlenav/ui/s;->j:I

    .line 215
    invoke-static {p1}, Lcom/google/googlenav/ui/s;->b(I)I

    move-result v0

    .line 216
    invoke-static {p2}, Lcom/google/googlenav/ui/s;->b(I)I

    move-result v1

    .line 223
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v2

    .line 225
    const/4 v3, 0x0

    :try_start_1a
    invoke-interface {v2, v0, v1, v3}, LS/h;->a(IIZ)LS/f;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/ui/s;->b:LS/f;
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_20} :catch_31

    .line 230
    :goto_20
    iget-object v2, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    invoke-interface {v2}, LS/f;->c()LS/e;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/s;->f:LS/e;

    .line 231
    iget-object v2, p0, Lcom/google/googlenav/ui/s;->f:LS/e;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/u;->b(LS/e;II)Lcom/google/googlenav/ui/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/s;->g:Lcom/google/googlenav/ui/u;

    .line 233
    :cond_30
    return-void

    .line 226
    :catch_31
    move-exception v3

    .line 227
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    .line 228
    invoke-interface {v2, v0, v1, v4}, LS/h;->a(IIZ)LS/f;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    goto :goto_20
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 6
    .parameter

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->e()I

    move-result v1

    .line 266
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->f()I

    move-result v2

    .line 270
    iget-object v3, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    invoke-interface {v3}, LS/f;->a()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    .line 271
    iget-object v3, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    invoke-interface {v3}, LS/f;->b()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    .line 272
    iget-object v3, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    invoke-interface {v0, v3, v1, v2}, LS/e;->a(LS/f;II)V

    .line 273
    return-void
.end method

.method public c(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/s;->i:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/google/googlenav/ui/s;->j:I

    if-eq p2, v0, :cond_18

    .line 285
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    invoke-interface {v0}, LS/f;->d()V

    .line 286
    iput-object v1, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    .line 287
    iput-object v1, p0, Lcom/google/googlenav/ui/s;->f:LS/e;

    .line 288
    iput-object v1, p0, Lcom/google/googlenav/ui/s;->g:Lcom/google/googlenav/ui/u;

    .line 290
    :cond_18
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/google/googlenav/ui/s;->d:Z

    return v0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 485
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "DragBuffer"

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->b:LS/f;

    invoke-interface {v0}, LS/f;->g()I

    move-result v0

    goto :goto_9
.end method

.method public h()V
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/s;->d:Z

    .line 414
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method
