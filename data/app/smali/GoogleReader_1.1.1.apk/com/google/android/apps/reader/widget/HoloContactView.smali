.class public Lcom/google/android/apps/reader/widget/HoloContactView;
.super Lcom/google/android/apps/reader/widget/QuickContactView;
.source "HoloContactView.java"


# instance fields
.field private final mOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/QuickContactView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/HoloContactView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/widget/QuickContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/HoloContactView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/QuickContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/HoloContactView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/QuickContactView;->drawableStateChanged()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/HoloContactView;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->invalidate()V

    .line 53
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/QuickContactView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/HoloContactView;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/HoloContactView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/HoloContactView;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method
