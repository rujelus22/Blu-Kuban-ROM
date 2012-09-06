.class Lcom/google/googlenav/ui/android/J;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/I;

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/android/I;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/google/googlenav/ui/android/J;->a:Lcom/google/googlenav/ui/android/I;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/ui/android/I;->a(Lcom/google/googlenav/ui/android/I;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    .line 240
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->a:Lcom/google/googlenav/ui/android/I;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/I;->b(Lcom/google/googlenav/ui/android/I;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 259
    :goto_29
    return-void

    .line 257
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 278
    instance-of v0, p1, Lcom/google/googlenav/ui/android/J;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/googlenav/ui/android/J;

    iget-object v0, p1, Lcom/google/googlenav/ui/android/J;->a:Lcom/google/googlenav/ui/android/I;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/J;->a:Lcom/google/googlenav/ui/android/I;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->a:Lcom/google/googlenav/ui/android/I;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .parameter

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 245
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 269
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/googlenav/ui/android/J;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 274
    return-void
.end method
