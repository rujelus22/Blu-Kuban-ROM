.class public Lbj/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:Ljava/util/ArrayList;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Lbn/f;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(FIILandroid/graphics/Bitmap;Lbn/f;)V
    .registers 9

    const/4 v0, 0x0

    const/16 v2, 0x32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lbj/c;->h:I

    iput v0, p0, Lbj/c;->i:I

    const/16 v0, 0x1e

    iput v0, p0, Lbj/c;->j:I

    iput p1, p0, Lbj/c;->a:F

    iput-object p4, p0, Lbj/c;->f:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lbj/c;->g:Lbn/f;

    iput p2, p0, Lbj/c;->c:I

    iput p3, p0, Lbj/c;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbj/c;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lbj/c;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbj/c;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lbj/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lbj/c;->i:I

    iput v0, p0, Lbj/c;->h:I

    iget-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj/a;

    invoke-virtual {v0}, Lbj/a;->a()V

    iget v0, p0, Lbj/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbj/c;->h:I

    goto :goto_13

    :cond_29
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lbj/c;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbj/c;->i:I

    iget v2, p0, Lbj/c;->j:I

    if-le v0, v2, :cond_26

    iget v0, p0, Lbj/c;->h:I

    if-lez v0, :cond_26

    move v0, v1

    :goto_10
    iget v2, p0, Lbj/c;->h:I

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v2, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    iput v1, p0, Lbj/c;->h:I

    :cond_26
    iget-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    iget-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj/a;

    invoke-virtual {v0, p1, p2}, Lbj/a;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_34

    :cond_44
    return-void
.end method

.method public a(Lbn/f;)V
    .registers 12

    const/4 v6, 0x0

    iput v6, p0, Lbj/c;->h:I

    iput v6, p0, Lbj/c;->i:I

    sget-object v0, Lbj/d;->a:Lbj/d;

    invoke-virtual {v0}, Lbj/d;->a()I

    move-result v0

    iget-object v1, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v8, v0, v1

    if-lez v8, :cond_30

    move v7, v6

    :goto_16
    if-ge v7, v8, :cond_4a

    iget-object v9, p0, Lbj/c;->b:Ljava/util/ArrayList;

    new-instance v0, Lbj/a;

    iget v1, p0, Lbj/c;->c:I

    iget v2, p0, Lbj/c;->d:I

    iget-object v3, p0, Lbj/c;->e:Landroid/graphics/Paint;

    iget-object v4, p0, Lbj/c;->f:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lbj/c;->g:Lbn/f;

    invoke-direct/range {v0 .. v5}, Lbj/a;-><init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Lbn/f;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_16

    :cond_30
    if-gez v8, :cond_4a

    move v0, v6

    :goto_33
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_4a

    iget-object v1, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_47

    iget v1, p0, Lbj/c;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbj/c;->h:I

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4a
    iget-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    iget-object v0, p0, Lbj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj/a;

    add-int/lit8 v1, v6, 0x1

    iget v3, p0, Lbj/c;->h:I

    if-le v6, v3, :cond_6f

    invoke-virtual {v0, p1}, Lbj/a;->a(Lbn/f;)V

    :goto_6d
    move v6, v1

    goto :goto_58

    :cond_6f
    invoke-virtual {v0}, Lbj/a;->a()V

    goto :goto_6d

    :cond_73
    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lbj/c;->a:F

    return v0
.end method
