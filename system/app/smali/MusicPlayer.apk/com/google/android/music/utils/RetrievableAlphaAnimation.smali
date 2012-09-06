.class public Lcom/google/android/music/utils/RetrievableAlphaAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "RetrievableAlphaAnimation.java"


# instance fields
.field private final mFromAlpha:F

.field private final mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 17
    iput p1, p0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;->mFromAlpha:F

    .line 18
    iput p2, p0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;->mToAlpha:F

    .line 19
    return-void
.end method


# virtual methods
.method public getToAlpha()F
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;->mToAlpha:F

    return v0
.end method
