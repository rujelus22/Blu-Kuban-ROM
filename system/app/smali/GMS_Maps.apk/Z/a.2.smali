.class public abstract Lz/a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lz/a;->a:F

    .line 48
    return-void
.end method

.method protected c(J)F
    .registers 4
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz/a;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 42
    iget v0, p0, Lz/a;->a:F

    return v0
.end method
