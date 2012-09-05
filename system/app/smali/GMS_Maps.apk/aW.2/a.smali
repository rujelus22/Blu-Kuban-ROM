.class public LaW/a;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Landroid/graphics/Camera;

.field private g:F

.field private h:F

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .registers 7

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, LaW/a;->a:Landroid/view/View;

    iput p2, p0, LaW/a;->g:F

    iput p2, p0, LaW/a;->b:F

    iput p3, p0, LaW/a;->c:F

    iput p4, p0, LaW/a;->h:F

    iput p4, p0, LaW/a;->d:F

    iput p5, p0, LaW/a;->e:F

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, LaW/a;->f:Landroid/graphics/Camera;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaW/a;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(FFLjava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, LaW/a;->i:Ljava/util/List;

    new-instance v1, LaW/b;

    invoke-direct {v1, p1, p2, p3}, LaW/b;-><init>(FFLjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 11

    const/high16 v4, 0x4000

    iget v0, p0, LaW/a;->b:F

    iget v1, p0, LaW/a;->c:F

    iget v2, p0, LaW/a;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iget v0, p0, LaW/a;->d:F

    iget v2, p0, LaW/a;->e:F

    iget v3, p0, LaW/a;->d:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iget-object v0, p0, LaW/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v3, p0, LaW/a;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v4, p0, LaW/a;->f:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    :try_start_2d
    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v4, v2}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v4, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    neg-float v6, v0

    neg-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_5b

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, LaW/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaW/b;

    iget v4, p0, LaW/a;->g:F

    iget v5, p0, LaW/a;->h:F

    invoke-virtual {v0, v4, v1, v5, v2}, LaW/b;->a(FFFF)Z

    goto :goto_47

    :catchall_5b
    move-exception v0

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    throw v0

    :cond_60
    iput v1, p0, LaW/a;->g:F

    iput v2, p0, LaW/a;->h:F

    return-void
.end method
