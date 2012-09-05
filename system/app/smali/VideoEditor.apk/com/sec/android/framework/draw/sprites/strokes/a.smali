.class public final Lcom/sec/android/framework/draw/sprites/strokes/a;
.super Lcom/sec/android/framework/draw/sprites/strokes/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/f;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_1a

    const v2, 0x3ecccccd

    const/high16 v3, 0x40c0

    const/high16 v4, 0x4060

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/strokes/a;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 9
    return-void

    .line 8
    nop

    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
