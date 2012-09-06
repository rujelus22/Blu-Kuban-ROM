.class public LF/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Point;

.field private static final b:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, LF/g;->a:Landroid/graphics/Point;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, LF/g;->b:Landroid/graphics/Point;

    return-void
.end method

.method public static a(LaP/d;LaP/a;LaP/a;)F
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p1, LaP/a;->a:LaP/t;

    iget-object v1, p2, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v1}, LaP/t;->a(LaP/t;)I

    move-result v1

    .line 183
    if-nez v1, :cond_1b

    .line 184
    iget-object v0, p1, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v0}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, LaP/h;->w()F

    move-result v0

    .line 186
    iget v1, p2, LaP/a;->b:F

    iget v2, p1, LaP/a;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 206
    :cond_1a
    :goto_1a
    return v0

    .line 189
    :cond_1b
    if-lez v1, :cond_66

    .line 194
    :goto_1d
    iget-object v0, p2, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v0}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    .line 195
    iget-object v2, p1, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    .line 196
    invoke-virtual {v0}, LaP/h;->w()F

    move-result v0

    const/high16 v3, 0x3f80

    iget v4, p2, LaP/a;->b:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 197
    new-instance v3, LaP/v;

    invoke-direct {v3, p0}, LaP/v;-><init>(LaP/d;)V

    iget-object v4, p2, LaP/a;->a:LaP/t;

    invoke-virtual {v3, v4}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object v3

    .line 198
    :goto_3e
    invoke-virtual {v3}, LaP/v;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 199
    invoke-virtual {v3}, LaP/v;->a()LaP/t;

    move-result-object v4

    .line 200
    iget-object v5, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v4, v5}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 205
    :cond_50
    invoke-virtual {v2}, LaP/h;->w()F

    move-result v2

    iget v3, p1, LaP/a;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 206
    if-lez v1, :cond_1a

    neg-float v0, v0

    goto :goto_1a

    .line 203
    :cond_5c
    invoke-virtual {p0, v4}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v4

    invoke-virtual {v4}, LaP/h;->w()F

    move-result v4

    add-float/2addr v0, v4

    .line 204
    goto :goto_3e

    :cond_66
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1d
.end method

.method private static a(Landroid/graphics/Point;)F
    .registers 3
    .parameter

    .prologue
    .line 145
    invoke-static {p0}, LF/g;->b(Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lat/B;Lat/B;)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lat/B;->b(Lat/B;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lat/B;Lat/B;Lat/B;)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LF/g;->a(Lat/B;Lat/B;Lat/B;Z)F

    move-result v0

    return v0
.end method

.method private static a(Lat/B;Lat/B;Lat/B;Z)F
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, LF/g;->c(Lat/B;Lat/B;Lat/B;)F

    move-result v0

    .line 97
    if-eqz p3, :cond_11

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_33

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_33

    .line 98
    :cond_11
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v1

    sget-object v2, LF/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 99
    invoke-virtual {p1}, Lat/B;->e()I

    move-result v2

    sget-object v3, LF/g;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    .line 100
    new-instance v2, Lat/B;

    invoke-direct {v2, v1, v0}, Lat/B;-><init>(II)V

    .line 101
    invoke-static {v2, p0}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v0

    .line 103
    :goto_32
    return v0

    :cond_33
    const/high16 v0, -0x4080

    goto :goto_32
.end method

.method static a(D)I
    .registers 4
    .parameter

    .prologue
    .line 50
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method static a(Landroid/graphics/Point;Landroid/graphics/Point;)J
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 160
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-long v0, v0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-long v2, v2

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(LaP/d;LaP/a;F)LaP/a;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 222
    iget-object v0, p1, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v0}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, LaP/h;->w()F

    move-result v2

    .line 224
    cmpl-float v0, p2, v6

    if-lez v0, :cond_62

    .line 226
    iget v0, p1, LaP/a;->b:F

    sub-float v0, v5, v0

    mul-float v1, v2, v0

    .line 227
    cmpl-float v0, v1, p2

    if-lez v0, :cond_29

    .line 228
    iget v0, p1, LaP/a;->b:F

    div-float v1, p2, v2

    add-float/2addr v1, v0

    .line 229
    new-instance v0, LaP/a;

    iget-object v2, p1, LaP/a;->a:LaP/t;

    invoke-direct {v0, v2, v1}, LaP/a;-><init>(LaP/t;F)V

    move-object p1, v0

    .line 267
    :cond_28
    :goto_28
    return-object p1

    .line 231
    :cond_29
    new-instance v0, LaP/v;

    invoke-direct {v0, p0}, LaP/v;-><init>(LaP/d;)V

    iget-object v3, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v3}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object v3

    .line 232
    iget-object v0, p1, LaP/a;->a:LaP/t;

    .line 233
    :goto_36
    invoke-virtual {v3}, LaP/v;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    cmpg-float v4, v1, p2

    if-gez v4, :cond_4e

    .line 234
    invoke-virtual {v3}, LaP/v;->a()LaP/t;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    invoke-virtual {v2}, LaP/h;->w()F

    move-result v2

    .line 236
    add-float/2addr v1, v2

    goto :goto_36

    .line 238
    :cond_4e
    cmpg-float v3, v1, p2

    if-gez v3, :cond_58

    .line 240
    new-instance p1, LaP/a;

    invoke-direct {p1, v0, v5}, LaP/a;-><init>(LaP/t;F)V

    goto :goto_28

    .line 242
    :cond_58
    sub-float v1, p2, v1

    add-float/2addr v1, v2

    div-float/2addr v1, v2

    .line 243
    new-instance p1, LaP/a;

    invoke-direct {p1, v0, v1}, LaP/a;-><init>(LaP/t;F)V

    goto :goto_28

    .line 244
    :cond_62
    cmpg-float v0, p2, v6

    if-gez v0, :cond_28

    .line 246
    neg-float v0, v2

    iget v1, p1, LaP/a;->b:F

    mul-float v3, v0, v1

    .line 247
    cmpg-float v0, v3, p2

    if-gez v0, :cond_7d

    .line 248
    iget v0, p1, LaP/a;->b:F

    div-float v1, p2, v2

    add-float/2addr v1, v0

    .line 249
    new-instance v0, LaP/a;

    iget-object v2, p1, LaP/a;->a:LaP/t;

    invoke-direct {v0, v2, v1}, LaP/a;-><init>(LaP/t;F)V

    move-object p1, v0

    goto :goto_28

    .line 251
    :cond_7d
    new-instance v4, LaP/v;

    invoke-direct {v4, p0}, LaP/v;-><init>(LaP/d;)V

    .line 252
    iget-object v1, p1, LaP/a;->a:LaP/t;

    .line 253
    iget-object v0, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v4, v0}, LaP/v;->c(LaP/t;)LaP/t;

    move-result-object v0

    move v7, v3

    move v3, v2

    move v2, v7

    .line 254
    :goto_8d
    if-eqz v0, :cond_a4

    cmpl-float v5, v2, p2

    if-lez v5, :cond_a4

    .line 256
    invoke-virtual {v4, v0}, LaP/v;->c(LaP/t;)LaP/t;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v0}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v3

    invoke-virtual {v3}, LaP/h;->w()F

    move-result v3

    .line 258
    sub-float/2addr v2, v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8d

    .line 260
    :cond_a4
    cmpl-float v0, v2, p2

    if-lez v0, :cond_af

    .line 262
    new-instance p1, LaP/a;

    invoke-direct {p1, v1, v6}, LaP/a;-><init>(LaP/t;F)V

    goto/16 :goto_28

    .line 264
    :cond_af
    sub-float v0, p2, v2

    div-float/2addr v0, v3

    .line 265
    new-instance p1, LaP/a;

    invoke-direct {p1, v1, v0}, LaP/a;-><init>(LaP/t;F)V

    goto/16 :goto_28
.end method

.method public static a(Landroid/location/Location;)Lat/B;
    .registers 5
    .parameter

    .prologue
    .line 57
    new-instance v0, Lat/B;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, LF/g;->a(D)I

    move-result v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, LF/g;->a(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method static a(Landroid/graphics/Point;IIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x41b5752a00000000L

    .line 131
    sub-int v0, p4, p2

    .line 132
    int-to-double v1, v0

    const-wide v3, -0x3e5a8ad600000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1b

    .line 133
    int-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    .line 139
    :cond_14
    :goto_14
    sub-int v1, p3, p1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 140
    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 141
    return-void

    .line 134
    :cond_1b
    int-to-double v1, v0

    const-wide v3, 0x41a5752a00000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_14

    .line 135
    int-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_14
.end method

.method public static b(Lat/B;Lat/B;Lat/B;)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LF/g;->a(Lat/B;Lat/B;Lat/B;Z)F

    move-result v0

    return v0
.end method

.method private static b(Landroid/graphics/Point;)J
    .registers 3
    .parameter

    .prologue
    .line 152
    invoke-static {p0, p0}, LF/g;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Lat/B;Lat/B;Lat/B;)F
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    .line 115
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v2

    .line 116
    invoke-virtual {p1}, Lat/B;->e()I

    move-result v3

    .line 117
    invoke-virtual {p2}, Lat/B;->c()I

    move-result v4

    .line 118
    invoke-virtual {p2}, Lat/B;->e()I

    move-result v5

    .line 119
    sget-object v6, LF/g;->a:Landroid/graphics/Point;

    invoke-static {v6, v2, v3, v0, v1}, LF/g;->a(Landroid/graphics/Point;IIII)V

    .line 120
    sget-object v0, LF/g;->b:Landroid/graphics/Point;

    invoke-static {v0, v2, v3, v4, v5}, LF/g;->a(Landroid/graphics/Point;IIII)V

    .line 121
    sget-object v0, LF/g;->b:Landroid/graphics/Point;

    sget-object v1, LF/g;->a:Landroid/graphics/Point;

    invoke-static {v0, v1}, LF/g;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, LF/g;->b:Landroid/graphics/Point;

    invoke-static {v1}, LF/g;->b(Landroid/graphics/Point;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(Lat/B;Lat/B;Lat/B;)F
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    sget-object v0, LF/g;->a:Landroid/graphics/Point;

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v1

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v3

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LF/g;->a(Landroid/graphics/Point;IIII)V

    .line 173
    sget-object v0, LF/g;->b:Landroid/graphics/Point;

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v1

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    invoke-virtual {p2}, Lat/B;->c()I

    move-result v3

    invoke-virtual {p2}, Lat/B;->e()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LF/g;->a(Landroid/graphics/Point;IIII)V

    .line 174
    sget-object v0, LF/g;->a:Landroid/graphics/Point;

    sget-object v1, LF/g;->b:Landroid/graphics/Point;

    invoke-static {v0, v1}, LF/g;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, LF/g;->a:Landroid/graphics/Point;

    invoke-static {v1}, LF/g;->a(Landroid/graphics/Point;)F

    move-result v1

    sget-object v2, LF/g;->b:Landroid/graphics/Point;

    invoke-static {v2}, LF/g;->a(Landroid/graphics/Point;)F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method
