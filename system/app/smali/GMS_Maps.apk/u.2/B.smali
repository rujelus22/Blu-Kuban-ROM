.class public Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lu/b;->a:F

    .line 17
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lu/b;->a:F

    return v0
.end method
