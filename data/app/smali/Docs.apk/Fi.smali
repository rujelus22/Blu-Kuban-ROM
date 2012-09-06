.class final LFi;
.super Landroid/graphics/drawable/LayerDrawable;
.source "IconUtils.java"


# direct methods
.method constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method
