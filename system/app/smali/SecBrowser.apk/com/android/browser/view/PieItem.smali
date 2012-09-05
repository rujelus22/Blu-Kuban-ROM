.class public Lcom/android/browser/view/PieItem;
.super Ljava/lang/Object;
.source "PieItem.java"


# instance fields
.field private inner:I

.field private level:I

.field private mPath:Landroid/graphics/Path;

.field private mPieView:Lcom/android/browser/view/PieMenu$PieView;

.field private mSelected:Z

.field private mView:Landroid/view/View;

.field private outer:I

.field private start:F

.field private sweep:F


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3
    .parameter "view"
    .parameter "level"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/browser/view/PieItem;->mView:Landroid/view/View;

    .line 41
    iput p2, p0, Lcom/android/browser/view/PieItem;->level:I

    .line 42
    return-void
.end method


# virtual methods
.method public getInnerRadius()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/browser/view/PieItem;->inner:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/android/browser/view/PieItem;->level:I

    return v0
.end method

.method public getOuterRadius()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/browser/view/PieItem;->outer:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/view/PieItem;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPieView()Lcom/android/browser/view/PieMenu$PieView;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/browser/view/PieItem;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    return-object v0
.end method

.method public getStartAngle()F
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/android/browser/view/PieItem;->start:F

    return v0
.end method

.method public getSweep()F
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/android/browser/view/PieItem;->sweep:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/view/PieItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isPieView()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/view/PieItem;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/browser/view/PieItem;->mSelected:Z

    return v0
.end method

.method public setGeometry(FFIILandroid/graphics/Path;)V
    .registers 6
    .parameter "st"
    .parameter "sw"
    .parameter "inside"
    .parameter "outside"
    .parameter "p"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/browser/view/PieItem;->start:F

    .line 67
    iput p2, p0, Lcom/android/browser/view/PieItem;->sweep:F

    .line 68
    iput p3, p0, Lcom/android/browser/view/PieItem;->inner:I

    .line 69
    iput p4, p0, Lcom/android/browser/view/PieItem;->outer:I

    .line 70
    iput-object p5, p0, Lcom/android/browser/view/PieItem;->mPath:Landroid/graphics/Path;

    .line 71
    return-void
.end method

.method public setPieView(Lcom/android/browser/view/PieMenu$PieView;)V
    .registers 2
    .parameter "sym"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/browser/view/PieItem;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 99
    return-void
.end method

.method public setSelected(Z)V
    .registers 3
    .parameter "s"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/browser/view/PieItem;->mSelected:Z

    .line 52
    iget-object v0, p0, Lcom/android/browser/view/PieItem;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/android/browser/view/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 55
    :cond_b
    return-void
.end method
