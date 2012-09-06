.class Lo/m;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Lo/l;

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 222
    iput-object p2, p0, Lo/m;->a:Lo/l;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2}, Lo/l;->a(Lo/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    .line 225
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lo/m;->a:Lo/l;

    invoke-static {v0}, Lo/l;->b(Lo/l;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 237
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 239
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    :goto_29
    return-void

    .line 242
    :cond_2a
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 263
    instance-of v0, p1, Lo/m;

    if-eqz v0, :cond_12

    check-cast p1, Lo/m;

    iget-object v0, p1, Lo/m;->a:Lo/l;

    iget-object v1, p0, Lo/m;->a:Lo/l;

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

.method public getOpacity()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lo/m;->a:Lo/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 254
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lo/m;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 259
    return-void
.end method
