.class public Lcom/google/android/maps/driveabout/app/DirectionView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->a:F

    .line 26
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->b:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->b:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionView;->getWidth()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionView;->getHeight()I

    move-result v1

    .line 41
    iget v2, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->a:F

    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 42
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    return-void
.end method

.method public setOrientation(F)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/maps/driveabout/app/DirectionView;->a:F

    .line 33
    return-void
.end method
