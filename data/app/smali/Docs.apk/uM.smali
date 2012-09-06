.class public abstract LuM;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "TransformedBitmapDrawable.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LuM;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    .line 32
    invoke-virtual {p0}, LuM;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, LuM;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LuM;->a:Landroid/graphics/Bitmap;

    .line 34
    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    invoke-virtual {p0}, LuM;->getGravity()I

    move-result v1

    iget-object v2, p0, LuM;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, LuM;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, LuM;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 37
    iget-object v1, p0, LuM;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p0}, LuM;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    return-void
.end method
