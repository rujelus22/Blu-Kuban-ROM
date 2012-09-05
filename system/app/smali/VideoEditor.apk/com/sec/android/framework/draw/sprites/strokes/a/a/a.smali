.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Landroid/graphics/Path;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 13
    return-void
.end method
