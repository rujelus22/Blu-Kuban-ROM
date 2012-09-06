.class public LN/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lat/B;

.field private final c:I

.field private final d:I

.field private final e:LN/d;

.field private f:Lcom/google/googlenav/ui/ap;

.field private g:Landroid/graphics/Rect;

.field private final h:Lat/u;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;LN/d;Lat/u;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, LN/a;->a:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, LN/a;->b:Lat/B;

    .line 131
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, LN/a;->c:I

    .line 132
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, LN/a;->d:I

    .line 133
    iput-object p3, p0, LN/a;->e:LN/d;

    .line 134
    iput-object p2, p0, LN/a;->g:Landroid/graphics/Rect;

    .line 135
    iput-object p4, p0, LN/a;->h:Lat/u;

    .line 136
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lat/B;IILN/d;Lat/u;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, LN/a;->a:Ljava/lang/String;

    .line 118
    iput-object p2, p0, LN/a;->b:Lat/B;

    .line 119
    iput p3, p0, LN/a;->c:I

    .line 120
    iput p4, p0, LN/a;->d:I

    .line 121
    iput-object p5, p0, LN/a;->e:LN/d;

    .line 122
    iput-object p6, p0, LN/a;->h:Lat/u;

    .line 123
    return-void
.end method

.method public static a(Lat/u;)LN/a;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lat/u;->m()I

    move-result v1

    invoke-virtual {p0}, Lat/u;->n()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    new-instance v1, LN/a;

    const-string v2, "map"

    sget-object v3, LN/d;->e:LN/d;

    invoke-direct {v1, v2, v0, v3, p0}, LN/a;-><init>(Ljava/lang/String;Landroid/graphics/Rect;LN/d;Lat/u;)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/g;Lcom/google/android/maps/driveabout/vector/d;LN/c;Lat/u;)LN/a;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/g;->e()Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-static {p1, v0, p2, p3}, LN/a;->a(Lcom/google/android/maps/driveabout/vector/d;Landroid/view/View;LN/c;Lat/u;)Landroid/graphics/Rect;

    move-result-object v0

    .line 192
    instance-of v1, p1, Lcom/google/android/maps/driveabout/vector/cl;

    if-nez v1, :cond_12

    .line 193
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 196
    :cond_12
    invoke-static {p1}, LN/a;->a(Lcom/google/android/maps/driveabout/vector/d;)Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v2, LN/a;

    sget-object v3, LN/d;->c:LN/d;

    invoke-direct {v2, v1, v0, v3, p3}, LN/a;-><init>(Ljava/lang/String;Landroid/graphics/Rect;LN/d;Lat/u;)V

    return-object v2
.end method

.method public static a(Lcom/google/googlenav/ai;Lat/u;)LN/a;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(B)I

    move-result v3

    .line 172
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->c(B)I

    move-result v4

    .line 173
    new-instance v0, LN/a;

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    sget-object v5, LN/d;->b:LN/d;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LN/a;-><init>(Ljava/lang/String;Lat/B;IILN/d;Lat/u;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/ap;Lat/u;)LN/a;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Lcom/google/googlenav/ui/bn;->U()[LS/f;

    move-result-object v0

    aget-object v0, v0, v3

    .line 157
    if-nez v0, :cond_19

    .line 160
    :goto_9
    new-instance v0, LN/a;

    const-string v1, "current location"

    const/4 v2, 0x0

    sget-object v5, LN/d;->a:LN/d;

    move v4, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LN/a;-><init>(Ljava/lang/String;Lat/B;IILN/d;Lat/u;)V

    .line 162
    invoke-direct {v0, p0}, LN/a;->a(Lcom/google/googlenav/ui/ap;)V

    .line 163
    return-object v0

    .line 157
    :cond_19
    invoke-interface {v0}, LS/f;->a()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    goto :goto_9
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/d;Landroid/view/View;LN/c;Lat/u;)Landroid/graphics/Rect;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v0

    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v0

    .line 260
    invoke-virtual {p3, v0}, Lat/u;->f(Lat/B;)Landroid/graphics/Point;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 266
    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 267
    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v2

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->s_()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1e

    .line 268
    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 269
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->s_()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1e

    .line 271
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/d;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 225
    const-string v0, "more details button"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, ""

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, ""

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0

    .line 226
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 228
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method private a(Lcom/google/googlenav/ui/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, LN/a;->f:Lcom/google/googlenav/ui/ap;

    .line 348
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/g;Lcom/google/android/maps/driveabout/vector/d;LN/c;Lat/u;)LN/a;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/g;->e()Landroid/view/View;

    move-result-object v0

    .line 211
    invoke-static {p1, v0, p2, p3}, LN/a;->a(Lcom/google/android/maps/driveabout/vector/d;Landroid/view/View;LN/c;Lat/u;)Landroid/graphics/Rect;

    move-result-object v0

    .line 212
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 215
    new-instance v1, LN/a;

    invoke-static {}, LN/a;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LN/d;->d:LN/d;

    invoke-direct {v1, v2, v0, v3, p3}, LN/a;-><init>(Ljava/lang/String;Landroid/graphics/Rect;LN/d;Lat/u;)V

    return-object v1
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    sget-object v0, LN/b;->a:[I

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aw()Lcom/google/googlenav/settings/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 248
    const-string v0, ""

    :goto_15
    return-object v0

    .line 240
    :pswitch_16
    const-string v0, "call button"

    goto :goto_15

    .line 242
    :pswitch_19
    const-string v0, "directions button"

    goto :goto_15

    .line 244
    :pswitch_1c
    const-string v0, "navigation button"

    goto :goto_15

    .line 246
    :pswitch_1f
    const-string v0, "street view button"

    goto :goto_15

    .line 238
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a(LN/a;)I
    .registers 4
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0}, LN/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, LN/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public a()Lat/B;
    .registers 3

    .prologue
    .line 281
    sget-object v0, LN/b;->b:[I

    iget-object v1, p0, LN/a;->e:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 287
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 283
    :pswitch_f
    iget-object v0, p0, LN/a;->b:Lat/B;

    goto :goto_e

    .line 285
    :pswitch_12
    iget-object v0, p0, LN/a;->b:Lat/B;

    if-eqz v0, :cond_19

    iget-object v0, p0, LN/a;->b:Lat/B;

    goto :goto_e

    :cond_19
    iget-object v0, p0, LN/a;->f:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v0

    goto :goto_e

    .line 281
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, LN/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, " "

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LN/a;->a:Ljava/lang/String;

    goto :goto_a
.end method

.method public c()I
    .registers 3

    .prologue
    .line 304
    sget-object v0, LN/b;->b:[I

    iget-object v1, p0, LN/a;->e:LN/d;

    invoke-virtual {v1}, LN/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 316
    const/4 v0, -0x1

    :goto_e
    return v0

    .line 306
    :pswitch_f
    iget-object v0, p0, LN/a;->b:Lat/B;

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v0

    iget-object v1, p0, LN/a;->b:Lat/B;

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_e

    .line 308
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_e

    .line 310
    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_e

    .line 312
    :pswitch_21
    const/4 v0, 0x3

    goto :goto_e

    .line 314
    :pswitch_23
    const/4 v0, 0x0

    goto :goto_e

    .line 304
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
    .end packed-switch
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 30
    check-cast p1, LN/a;

    invoke-virtual {p0, p1}, LN/a;->a(LN/a;)I

    move-result v0

    return v0
.end method

.method public d()Landroid/graphics/Rect;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    iget-object v0, p0, LN/a;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    iget-object v0, p0, LN/a;->e:LN/d;

    sget-object v1, LN/d;->a:LN/d;

    if-ne v0, v1, :cond_45

    .line 327
    :cond_c
    invoke-virtual {p0}, LN/a;->a()Lat/B;

    move-result-object v0

    .line 330
    if-nez v0, :cond_18

    .line 331
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    :goto_17
    return-object v0

    .line 333
    :cond_18
    iget-object v0, p0, LN/a;->h:Lat/u;

    invoke-virtual {p0}, LN/a;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->f(Lat/B;)Landroid/graphics/Point;

    move-result-object v0

    .line 334
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, LN/a;->c:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 335
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, LN/a;->d:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 336
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, p0, LN/a;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 337
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, LN/a;->d:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 338
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, LN/a;->g:Landroid/graphics/Rect;

    .line 340
    :cond_45
    iget-object v0, p0, LN/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_17

    :cond_53
    iget-object v0, p0, LN/a;->g:Landroid/graphics/Rect;

    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 352
    instance-of v1, p1, LN/a;

    if-nez v1, :cond_6

    .line 357
    :cond_5
    :goto_5
    return v0

    .line 356
    :cond_6
    check-cast p1, LN/a;

    .line 357
    invoke-virtual {p0}, LN/a;->c()I

    move-result v1

    invoke-virtual {p1}, LN/a;->c()I

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 362
    invoke-virtual {p0}, LN/a;->c()I

    move-result v0

    return v0
.end method
