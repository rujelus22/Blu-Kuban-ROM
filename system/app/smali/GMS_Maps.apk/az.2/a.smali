.class public LaZ/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/ArrayList;

.field private final d:Lbb/f;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaZ/a;->e:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaZ/a;->f:Landroid/graphics/Paint;

    .line 34
    iput v2, p0, LaZ/a;->g:I

    .line 35
    iput v2, p0, LaZ/a;->h:I

    .line 36
    const/16 v0, 0x14

    iput v0, p0, LaZ/a;->i:I

    .line 43
    iput p1, p0, LaZ/a;->a:I

    .line 44
    iput p2, p0, LaZ/a;->b:I

    .line 46
    iget-object v0, p0, LaZ/a;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, LaZ/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 48
    iget-object v0, p0, LaZ/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, LaZ/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 51
    iget-object v0, p0, LaZ/a;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    new-instance v0, Lbb/f;

    int-to-float v1, p1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    int-to-float v2, p2

    const/high16 v3, 0x3f40

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbb/f;-><init>(FF)V

    iput-object v0, p0, LaZ/a;->d:Lbb/f;

    .line 54
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    const/high16 v3, 0x4000

    .line 65
    const v0, 0x3dcccccd

    .line 66
    iget v1, p0, LaZ/a;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 67
    iget v1, p0, LaZ/a;->a:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    .line 69
    iget v2, p0, LaZ/a;->j:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, LaZ/a;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, LaZ/a;->k:F

    .line 70
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    const/16 v1, 0xff

    .line 73
    iget-object v0, p0, LaZ/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 74
    iget-object v0, p0, LaZ/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    if-eqz p2, :cond_14

    .line 77
    iput v2, p0, LaZ/a;->j:F

    .line 80
    :cond_14
    iget v0, p0, LaZ/a;->j:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 81
    iget-object v1, p0, LaZ/a;->d:Lbb/f;

    iget v2, p0, LaZ/a;->a:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, LaZ/a;->d:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    invoke-virtual {v1, v0, v2}, Lbb/f;->a(FF)V

    .line 82
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, LaZ/a;->g:I

    .line 128
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 129
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaZ/b;

    invoke-virtual {v0}, LaZ/b;->b()V

    .line 132
    iget v0, p0, LaZ/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaZ/a;->g:I

    goto :goto_11

    .line 135
    :cond_27
    return-void
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput p1, p0, LaZ/a;->j:F

    .line 59
    return-void
.end method

.method public a(LaZ/c;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    iput v1, p0, LaZ/a;->g:I

    .line 86
    iput v1, p0, LaZ/a;->h:I

    .line 88
    invoke-virtual {p1}, LaZ/c;->a()I

    move-result v0

    iget-object v2, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 89
    if-lez v2, :cond_29

    move v0, v1

    .line 93
    :goto_14
    if-ge v0, v2, :cond_43

    .line 94
    iget-object v3, p0, LaZ/a;->c:Ljava/util/ArrayList;

    new-instance v4, LaZ/b;

    iget v5, p0, LaZ/a;->a:I

    iget v6, p0, LaZ/a;->b:I

    iget-object v7, p0, LaZ/a;->d:Lbb/f;

    invoke-direct {v4, v5, v6, v7}, LaZ/b;-><init>(IILbb/f;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 96
    :cond_29
    if-gez v2, :cond_43

    move v0, v1

    .line 100
    :goto_2c
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 101
    iget-object v3, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 102
    iget v3, p0, LaZ/a;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LaZ/a;->g:I

    .line 100
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 108
    :cond_43
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 109
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaZ/b;

    .line 114
    add-int/lit8 v2, v1, 0x1

    iget v4, p0, LaZ/a;->g:I

    if-le v1, v4, :cond_6e

    .line 115
    invoke-virtual {v0}, LaZ/b;->e()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 116
    invoke-virtual {v0}, LaZ/b;->a()V

    :cond_6c
    :goto_6c
    move v1, v2

    .line 122
    goto :goto_51

    .line 119
    :cond_6e
    invoke-virtual {v0}, LaZ/b;->b()V

    goto :goto_6c

    .line 124
    :cond_72
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 138
    iget v0, p0, LaZ/a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LaZ/a;->h:I

    iget v1, p0, LaZ/a;->i:I

    if-le v0, v1, :cond_3f

    iget v0, p0, LaZ/a;->g:I

    if-lez v0, :cond_3f

    move v1, v2

    .line 139
    :goto_10
    iget v0, p0, LaZ/a;->g:I

    if-ge v1, v0, :cond_3f

    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 140
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaZ/b;

    .line 141
    invoke-virtual {v0}, LaZ/b;->d()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, LaZ/b;->c()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 142
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    iget v0, p0, LaZ/a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LaZ/a;->g:I

    .line 139
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 147
    :cond_3f
    invoke-direct {p0}, LaZ/a;->b()V

    .line 148
    invoke-direct {p0, p1, p2}, LaZ/a;->b(Landroid/graphics/Canvas;Z)V

    .line 151
    iget v0, p0, LaZ/a;->k:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 155
    iget-object v0, p0, LaZ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaZ/b;

    .line 158
    iget-object v2, p0, LaZ/a;->d:Lbb/f;

    invoke-virtual {v0, v2}, LaZ/b;->a(Lbb/f;)V

    .line 159
    invoke-virtual {v0, p1}, LaZ/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_59

    .line 162
    :cond_6e
    return-void
.end method
