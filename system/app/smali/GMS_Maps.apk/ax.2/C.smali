.class public LaX/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:Ljava/util/ArrayList;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Lbb/f;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(FIILandroid/graphics/Bitmap;Lbb/f;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x32

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, LaX/c;->h:I

    .line 36
    iput v0, p0, LaX/c;->i:I

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, LaX/c;->j:I

    .line 40
    iput p1, p0, LaX/c;->a:F

    .line 41
    iput-object p4, p0, LaX/c;->f:Landroid/graphics/Bitmap;

    .line 42
    iput-object p5, p0, LaX/c;->g:Lbb/f;

    .line 43
    iput p2, p0, LaX/c;->c:I

    .line 44
    iput p3, p0, LaX/c;->d:I

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaX/c;->e:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, LaX/c;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 47
    iget-object v0, p0, LaX/c;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, LaX/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 114
    iput v0, p0, LaX/c;->i:I

    .line 115
    iput v0, p0, LaX/c;->h:I

    .line 117
    iget-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 118
    iget-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaX/a;

    invoke-virtual {v0}, LaX/a;->a()V

    .line 121
    iget v0, p0, LaX/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaX/c;->h:I

    goto :goto_13

    .line 124
    :cond_29
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    iget v0, p0, LaX/c;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LaX/c;->i:I

    iget v2, p0, LaX/c;->j:I

    if-le v0, v2, :cond_26

    .line 56
    iget v0, p0, LaX/c;->h:I

    if-lez v0, :cond_26

    move v0, v1

    .line 57
    :goto_10
    iget v2, p0, LaX/c;->h:I

    if-ge v0, v2, :cond_24

    .line 58
    iget-object v2, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 59
    iget-object v2, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 62
    :cond_24
    iput v1, p0, LaX/c;->h:I

    .line 66
    :cond_26
    iget-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 67
    iget-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaX/a;

    invoke-virtual {v0, p1, p2}, LaX/a;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_34

    .line 72
    :cond_44
    return-void
.end method

.method public a(Lbb/f;)V
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 77
    iput v6, p0, LaX/c;->h:I

    .line 78
    iput v6, p0, LaX/c;->i:I

    .line 80
    sget-object v0, LaX/d;->a:LaX/d;

    invoke-virtual {v0}, LaX/d;->a()I

    move-result v0

    iget-object v1, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v8, v0, v1

    .line 81
    if-lez v8, :cond_30

    move v7, v6

    .line 85
    :goto_16
    if-ge v7, v8, :cond_4a

    .line 86
    iget-object v9, p0, LaX/c;->b:Ljava/util/ArrayList;

    new-instance v0, LaX/a;

    iget v1, p0, LaX/c;->c:I

    iget v2, p0, LaX/c;->d:I

    iget-object v3, p0, LaX/c;->e:Landroid/graphics/Paint;

    iget-object v4, p0, LaX/c;->f:Landroid/graphics/Bitmap;

    iget-object v5, p0, LaX/c;->g:Lbb/f;

    invoke-direct/range {v0 .. v5}, LaX/a;-><init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Lbb/f;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_16

    .line 88
    :cond_30
    if-gez v8, :cond_4a

    move v0, v6

    .line 92
    :goto_33
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 93
    iget-object v1, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 94
    iget v1, p0, LaX/c;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LaX/c;->h:I

    .line 92
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 100
    :cond_4a
    iget-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    .line 101
    iget-object v0, p0, LaX/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaX/a;

    .line 104
    add-int/lit8 v1, v6, 0x1

    iget v3, p0, LaX/c;->h:I

    if-le v6, v3, :cond_6f

    .line 105
    invoke-virtual {v0, p1}, LaX/a;->a(Lbb/f;)V

    :goto_6d
    move v6, v1

    .line 109
    goto :goto_58

    .line 107
    :cond_6f
    invoke-virtual {v0}, LaX/a;->a()V

    goto :goto_6d

    .line 111
    :cond_73
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 133
    iget v0, p0, LaX/c;->a:F

    return v0
.end method
