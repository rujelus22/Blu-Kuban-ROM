.class public LAU;
.super Landroid/text/style/ReplacementSpan;
.source "UnsupportedSpan.java"

# interfaces
.implements LEk;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 24
    iput-object p1, p0, LAU;->a:Landroid/view/View;

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 11
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
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v0, p0, LAU;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p7, v0

    .line 32
    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    iget-object v0, p0, LAU;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p5, :cond_d

    .line 40
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v1, p0, LAU;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 42
    :cond_d
    iget-object v0, p0, LAU;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method
