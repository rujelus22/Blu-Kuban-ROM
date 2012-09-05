.class public Lcom/android/launcher2/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/DragController$DragListener;


# instance fields
.field protected mActive:Z

.field private mBottomDragPadding:I

.field protected final mHoverPaint:Landroid/graphics/Paint;

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field protected mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field protected mText:Landroid/widget/TextView;

.field protected final mTransitionDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/ButtonDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher2/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/ButtonDropTarget;->mTransitionDuration:I

    .line 55
    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/ButtonDropTarget;->mBottomDragPadding:I

    .line 56
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .registers 3
    .parameter "d"

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "outRect"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 100
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher2/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 101
    return-void
.end method

.method public getLocationInDragLayer([I)V
    .registers 3
    .parameter "loc"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/ButtonDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 110
    return-void
.end method

.method public isDropEnabled()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/launcher2/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method public onDragEnd()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 74
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v1, p0, Lcom/android/launcher2/ButtonDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 82
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 79
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 4
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 87
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 71
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/launcher2/ButtonDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 60
    return-void
.end method

.method public setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V
    .registers 2
    .parameter "searchDropTargetBar"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/launcher2/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    .line 68
    return-void
.end method
