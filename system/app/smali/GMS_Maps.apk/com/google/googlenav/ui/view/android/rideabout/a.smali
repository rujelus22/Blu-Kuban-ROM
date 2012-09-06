.class public Lcom/google/googlenav/ui/view/android/rideabout/a;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    .line 25
    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->b:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    .line 25
    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->b:I

    .line 33
    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    .line 34
    iput p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 40
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 41
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v2, v1, v0

    .line 42
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    if-ne v0, v3, :cond_45

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 43
    :goto_18
    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    if-ne v1, v3, :cond_48

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 44
    :goto_24
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 45
    sub-int/2addr v2, v1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    add-int v0, p7, v2

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    return-void

    .line 42
    :cond_45
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    goto :goto_18

    .line 43
    :cond_48
    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->b:I

    goto :goto_24
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 59
    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/a;->a:I

    goto :goto_9
.end method
