.class Lcom/android/launcher2/Workspace$ZoomInInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoomInInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final inverseZInterpolator:Lcom/android/launcher2/Workspace$InverseZInterpolator;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    new-instance v0, Lcom/android/launcher2/Workspace$InverseZInterpolator;

    const v1, 0x3eb33333

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$InverseZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$ZoomInInterpolator;->inverseZInterpolator:Lcom/android/launcher2/Workspace$InverseZInterpolator;

    .line 1490
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .parameter "input"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/launcher2/Workspace$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$ZoomInInterpolator;->inverseZInterpolator:Lcom/android/launcher2/Workspace$InverseZInterpolator;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace$InverseZInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method