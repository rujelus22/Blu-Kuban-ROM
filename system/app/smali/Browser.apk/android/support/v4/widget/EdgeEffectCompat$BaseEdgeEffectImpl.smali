.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter "edgeEffect"
    .parameter "canvas"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .registers 2
    .parameter "edgeEffect"

    .prologue
    .line 70
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 3
    .parameter "edgeEffect"

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
    .registers 4
    .parameter "edgeEffect"
    .parameter "velocity"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .registers 4
    .parameter "edgeEffect"
    .parameter "deltaDistance"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .registers 3
    .parameter "edgeEffect"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .registers 4
    .parameter "edgeEffect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    return-void
.end method
