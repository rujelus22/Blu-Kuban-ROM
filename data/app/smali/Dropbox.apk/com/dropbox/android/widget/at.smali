.class public final Lcom/dropbox/android/widget/at;
.super Landroid/graphics/drawable/Drawable;
.source "panda.py"


# instance fields
.field private a:Landroid/text/StaticLayout;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/text/TextPaint;

.field private d:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, v0}, Lcom/dropbox/android/widget/at;-><init>(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/dropbox/android/widget/at;->b:Ljava/lang/CharSequence;

    .line 32
    if-nez p1, :cond_18

    .line 33
    invoke-static {}, Lcom/dropbox/android/widget/at;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/at;->a(Landroid/text/TextPaint;)V

    .line 38
    :goto_10
    if-nez p2, :cond_1c

    .line 39
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/at;->a(Landroid/text/Layout$Alignment;)V

    .line 44
    :goto_17
    return-void

    .line 35
    :cond_18
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/at;->a(Landroid/text/TextPaint;)V

    goto :goto_10

    .line 41
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/dropbox/android/widget/at;->a(Landroid/text/Layout$Alignment;)V

    goto :goto_17
.end method

.method protected static a()Landroid/text/TextPaint;
    .registers 2

    .prologue
    const/16 v1, 0xff

    .line 52
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 53
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 54
    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 55
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 57
    return-object v0
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    invoke-super {p0, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    return-void
.end method

.method private d()V
    .registers 9

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v0

    .line 105
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/dropbox/android/widget/at;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/dropbox/android/widget/at;->c:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/dropbox/android/widget/at;->d:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/dropbox/android/widget/at;->a:Landroid/text/StaticLayout;

    .line 106
    iget-object v0, p0, Lcom/dropbox/android/widget/at;->a:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/at;->a(I)V

    .line 107
    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Layout$Alignment;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->invalidateSelf()V

    .line 65
    iput-object p1, p0, Lcom/dropbox/android/widget/at;->d:Landroid/text/Layout$Alignment;

    .line 66
    invoke-direct {p0}, Lcom/dropbox/android/widget/at;->d()V

    .line 67
    return-void
.end method

.method public final a(Landroid/text/TextPaint;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->invalidateSelf()V

    .line 48
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/at;->c:Landroid/text/TextPaint;

    .line 49
    invoke-direct {p0}, Lcom/dropbox/android/widget/at;->d()V

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->invalidateSelf()V

    .line 71
    iput-object p1, p0, Lcom/dropbox/android/widget/at;->b:Ljava/lang/CharSequence;

    .line 72
    invoke-direct {p0}, Lcom/dropbox/android/widget/at;->d()V

    .line 73
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/android/widget/at;->a:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/android/widget/at;->a:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 114
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget-object v0, p0, Lcom/dropbox/android/widget/at;->a:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    return-void
.end method

.method public final getOpacity()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .registers 2
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public final setBounds(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/dropbox/android/widget/at;->invalidateSelf()V

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-direct {p0}, Lcom/dropbox/android/widget/at;->d()V

    .line 91
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .registers 6
    .parameter

    .prologue
    .line 84
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dropbox/android/widget/at;->setBounds(IIII)V

    .line 85
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    return-void
.end method
