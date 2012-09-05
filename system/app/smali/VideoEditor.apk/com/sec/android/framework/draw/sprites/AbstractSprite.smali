.class public abstract Lcom/sec/android/framework/draw/sprites/AbstractSprite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/a/a;
.implements Lcom/sec/android/framework/draw/sprites/a/c;
.implements Lcom/sec/android/framework/draw/sprites/a/f;
.implements Lcom/sec/android/framework/draw/sprites/a/g;


# instance fields
.field protected c:Z

.field protected d:Landroid/graphics/RectF;

.field public dragBehavior:Lcom/sec/android/framework/draw/sprites/a/c;

.field public hitBehavior:Lcom/sec/android/framework/draw/sprites/a/a;

.field public selectBehavior:Lcom/sec/android/framework/draw/sprites/a/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->d:Landroid/graphics/RectF;

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->setVisible(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public deselect()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->selectBehavior:Lcom/sec/android/framework/draw/sprites/a/g;

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/a/g;->deselect()V

    .line 40
    return-void
.end method

.method public abstract dispose()V
.end method

.method public getBounds()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method public isHitted(Landroid/graphics/RectF;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->hitBehavior:Lcom/sec/android/framework/draw/sprites/a/a;

    invoke-interface {v0, p1}, Lcom/sec/android/framework/draw/sprites/a/a;->isHitted(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->selectBehavior:Lcom/sec/android/framework/draw/sprites/a/g;

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/a/g;->isSelected()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->c:Z

    return v0
.end method

.method public moveBy(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->dragBehavior:Lcom/sec/android/framework/draw/sprites/a/c;

    invoke-interface {v0, p1}, Lcom/sec/android/framework/draw/sprites/a/c;->moveBy(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->computeBounds()Landroid/graphics/RectF;

    .line 56
    return-void
.end method

.method public resizeTo(Landroid/graphics/RectF;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->dragBehavior:Lcom/sec/android/framework/draw/sprites/a/c;

    invoke-interface {v0, p1}, Lcom/sec/android/framework/draw/sprites/a/c;->resizeTo(Landroid/graphics/RectF;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->computeBounds()Landroid/graphics/RectF;

    .line 62
    return-void
.end method

.method public select()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->selectBehavior:Lcom/sec/android/framework/draw/sprites/a/g;

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/a/g;->select()V

    .line 50
    return-void
.end method

.method public setBehavior(Lcom/sec/android/framework/draw/sprites/a/a;Lcom/sec/android/framework/draw/sprites/a/c;Lcom/sec/android/framework/draw/sprites/a/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->hitBehavior:Lcom/sec/android/framework/draw/sprites/a/a;

    .line 90
    iput-object p2, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->dragBehavior:Lcom/sec/android/framework/draw/sprites/a/c;

    .line 91
    iput-object p3, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->selectBehavior:Lcom/sec/android/framework/draw/sprites/a/g;

    .line 92
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->c:Z

    .line 72
    return-void
.end method

.method public abstract toXML()Ljava/lang/StringBuilder;
.end method
