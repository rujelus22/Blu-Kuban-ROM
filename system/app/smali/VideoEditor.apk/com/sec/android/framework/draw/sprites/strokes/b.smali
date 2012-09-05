.class public final Lcom/sec/android/framework/draw/sprites/strokes/b;
.super Lcom/sec/android/framework/draw/sprites/strokes/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/f;-><init>()V

    .line 9
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/strokes/b;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 10
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/sprites/strokes/b;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 11
    return-void
.end method
