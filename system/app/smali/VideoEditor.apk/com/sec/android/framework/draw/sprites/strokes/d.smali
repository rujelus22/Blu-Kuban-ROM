.class public final Lcom/sec/android/framework/draw/sprites/strokes/d;
.super Lcom/sec/android/framework/draw/sprites/strokes/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/f;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40a0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/strokes/d;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 9
    return-void
.end method
