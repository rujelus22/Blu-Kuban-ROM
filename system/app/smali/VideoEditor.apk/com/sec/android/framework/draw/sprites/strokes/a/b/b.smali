.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/b/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .registers 2

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    return-object v0
.end method

.method public final a(Z)Landroid/graphics/RectF;
    .registers 3
    .parameter

    .prologue
    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    return-void
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 2
    .parameter

    .prologue
    .line 12
    return-void
.end method
