.class public Lba/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:Lba/d;

.field private final f:Lba/b;

.field private final g:Ljava/util/ArrayList;

.field private final h:[Landroid/graphics/Bitmap;

.field private final i:Lbb/d;

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Landroid/graphics/Bitmap;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    const/high16 v3, 0x4000

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lba/e;->d:Landroid/graphics/Paint;

    .line 41
    iput v1, p0, Lba/e;->k:I

    .line 42
    iput v1, p0, Lba/e;->l:I

    .line 43
    const/16 v0, 0x1e

    iput v0, p0, Lba/e;->m:I

    .line 44
    iput-boolean v1, p0, Lba/e;->n:Z

    .line 47
    new-instance v0, Lbb/d;

    const/16 v1, 0x177

    invoke-direct {v0, p1, v1}, Lbb/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lba/e;->i:Lbb/d;

    .line 48
    iget-object v0, p0, Lba/e;->i:Lbb/d;

    invoke-virtual {v0, p0}, Lbb/d;->a(Lbb/e;)V

    .line 49
    iput p2, p0, Lba/e;->a:I

    .line 50
    iput p3, p0, Lba/e;->b:I

    .line 51
    iput-object p4, p0, Lba/e;->h:[Landroid/graphics/Bitmap;

    .line 52
    int-to-float v0, p2

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lba/e;->c:I

    .line 54
    iget-object v0, p0, Lba/e;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 55
    iget-object v0, p0, Lba/e;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lba/e;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    new-instance v0, Lba/b;

    int-to-float v1, p2

    div-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lba/b;-><init>(FF)V

    iput-object v0, p0, Lba/e;->f:Lba/b;

    .line 59
    new-instance v0, Lba/d;

    iget v1, p0, Lba/e;->c:I

    add-int v2, p2, v1

    int-to-double v3, p3

    const-wide/high16 v5, 0x3ff4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/high16 v4, 0x42f0

    iget-object v1, p0, Lba/e;->f:Lba/b;

    invoke-virtual {v1}, Lba/b;->a()Lbb/f;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lba/d;-><init>(Lba/e;IIFLbb/f;)V

    iput-object v0, p0, Lba/e;->e:Lba/d;

    .line 61
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Lba/e;->n:Z

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lba/e;->e:Lba/d;

    iget-object v1, p0, Lba/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lba/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 150
    :cond_b
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    const/16 v1, 0xff

    .line 153
    iget-object v0, p0, Lba/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 155
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 156
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/a;

    .line 159
    iget-object v2, p0, Lba/e;->e:Lba/d;

    invoke-virtual {v2}, Lba/d;->a()[[Lba/c;

    move-result-object v2

    iget-object v3, p0, Lba/e;->e:Lba/d;

    invoke-virtual {v3}, Lba/d;->b()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lba/a;->a([[Lba/c;F)V

    .line 160
    iget-object v2, p0, Lba/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lba/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_15

    .line 163
    :cond_36
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lba/e;->n:Z

    .line 134
    iput v0, p0, Lba/e;->l:I

    .line 135
    iput v0, p0, Lba/e;->k:I

    .line 137
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 138
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/a;

    invoke-virtual {v0}, Lba/a;->e()V

    .line 141
    iget v0, p0, Lba/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lba/e;->k:I

    goto :goto_15

    .line 144
    :cond_2b
    return-void
.end method

.method public a(F)V
    .registers 4
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 169
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/a;

    invoke-virtual {v0, p1}, Lba/a;->a(F)V

    goto :goto_e

    .line 175
    :cond_1e
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lba/e;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lba/e;->l:I

    iget v1, p0, Lba/e;->m:I

    if-le v0, v1, :cond_3e

    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 72
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1b
    if-ltz v1, :cond_3e

    .line 73
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/a;

    .line 74
    iget v2, p0, Lba/e;->k:I

    if-lez v2, :cond_3a

    invoke-virtual {v0}, Lba/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 75
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 76
    iget v0, p0, Lba/e;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lba/e;->k:I

    .line 72
    :cond_3a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1b

    .line 80
    :cond_3e
    invoke-virtual {p0, p1, p2}, Lba/e;->b(Landroid/graphics/Canvas;Z)V

    .line 81
    return-void
.end method

.method public a(Lba/f;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba/e;->n:Z

    .line 87
    iput v1, p0, Lba/e;->k:I

    .line 88
    iput v1, p0, Lba/e;->l:I

    .line 92
    invoke-virtual {p1}, Lba/f;->a()I

    move-result v0

    iget-object v2, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 94
    if-lez v2, :cond_3a

    move v0, v1

    .line 98
    :goto_17
    if-ge v0, v2, :cond_54

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lba/e;->h:[Landroid/graphics/Bitmap;

    array-length v5, v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 100
    iget-object v4, p0, Lba/e;->h:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    .line 101
    new-instance v4, Lba/a;

    iget-object v5, p0, Lba/e;->f:Lba/b;

    iget v6, p0, Lba/e;->a:I

    iget v7, p0, Lba/e;->b:I

    invoke-direct {v4, v5, v6, v7, v3}, Lba/a;-><init>(Lba/b;IILandroid/graphics/Bitmap;)V

    .line 102
    iget-object v3, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 104
    :cond_3a
    if-gez v2, :cond_54

    move v0, v1

    .line 108
    :goto_3d
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_54

    .line 109
    iget-object v3, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    .line 110
    iget v3, p0, Lba/e;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lba/e;->k:I

    .line 108
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 116
    :cond_54
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 117
    iget-object v0, p0, Lba/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/a;

    .line 120
    add-int/lit8 v2, v1, 0x1

    iget v4, p0, Lba/e;->k:I

    if-le v1, v4, :cond_7f

    .line 121
    invoke-virtual {v0}, Lba/a;->b()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 122
    invoke-virtual {v0}, Lba/a;->d()V

    :cond_7d
    :goto_7d
    move v1, v2

    .line 127
    goto :goto_62

    .line 125
    :cond_7f
    invoke-virtual {v0}, Lba/a;->e()V

    goto :goto_7d

    .line 129
    :cond_83
    return-void
.end method

.method public b(F)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 199
    iput p1, p0, Lba/e;->j:F

    .line 200
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lba/e;->c(F)F

    move-result v0

    .line 201
    iget v1, p0, Lba/e;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v0, v1, v0

    iget v1, p0, Lba/e;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 203
    iget-object v1, p0, Lba/e;->f:Lba/b;

    iget-object v2, p0, Lba/e;->f:Lba/b;

    invoke-virtual {v2}, Lba/b;->c()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lba/b;->a(FF)V

    .line 204
    iget-object v0, p0, Lba/e;->e:Lba/d;

    iget-object v1, p0, Lba/e;->f:Lba/b;

    invoke-virtual {v1}, Lba/b;->a()Lbb/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lba/d;->a(Lbb/f;)V

    .line 205
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 188
    if-eqz p2, :cond_6

    .line 189
    const/high16 v0, 0x3f00

    iput v0, p0, Lba/e;->j:F

    .line 192
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    invoke-direct {p0, p1}, Lba/e;->b(Landroid/graphics/Canvas;)V

    .line 194
    invoke-direct {p0, p1}, Lba/e;->a(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    return-void
.end method

.method public c(F)F
    .registers 5
    .parameter

    .prologue
    .line 208
    const/high16 v0, -0x4080

    iget v1, p0, Lba/e;->j:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lba/e;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
