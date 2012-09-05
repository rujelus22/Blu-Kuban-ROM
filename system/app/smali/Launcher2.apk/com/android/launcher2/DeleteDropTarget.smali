.class public Lcom/android/launcher2/DeleteDropTarget;
.super Lcom/android/launcher2/ButtonDropTarget;
.source "DeleteDropTarget.java"


# static fields
.field private static DELETE_ANIMATION_DURATION:I


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mHoverColor:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;

.field private mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0xfa

    sput v0, Lcom/android/launcher2/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/high16 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->completeDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method private animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 19
    .parameter "d"

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 170
    .local v2, dragLayer:Lcom/android/launcher2/DragLayer;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .local v4, from:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v5, to:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v14

    .line 176
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v13

    .line 177
    .local v13, height:I
    iget v3, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DeleteDropTarget;->getPaddingLeft()I

    move-result v6

    add-int/2addr v3, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DeleteDropTarget;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DeleteDropTarget;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v14

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 181
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v14

    neg-int v3, v3

    div-int/lit8 v15, v3, 0x2

    .line 182
    .local v15, xOffset:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v13

    neg-int v3, v3

    div-int/lit8 v16, v3, 0x2

    .line 183
    .local v16, yOffset:I
    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v3}, Lcom/android/launcher2/SearchDropTargetBar;->deferOnDragEnd()V

    .line 186
    new-instance v11, Lcom/android/launcher2/DeleteDropTarget$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/launcher2/DeleteDropTarget$1;-><init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 194
    .local v11, onAnimationEndRunnable:Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const v6, 0x3dcccccd

    const v7, 0x3dcccccd

    sget v8, Lcom/android/launcher2/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x4000

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x3fc0

    invoke-direct {v10, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 197
    return-void
.end method

.method private completeDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 8
    .parameter "d"

    .prologue
    .line 200
    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 202
    .local v2, item:Lcom/android/launcher2/ItemInfo;
    iget-object v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v4, v2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 204
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .end local v2           #item:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v4, v2}, Lcom/android/launcher2/Launcher;->startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V

    .line 229
    :cond_13
    :goto_13
    return-void

    .line 205
    .restart local v2       #item:Lcom/android/launcher2/ItemInfo;
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 206
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_13

    .line 207
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object v1, v2

    .line 209
    check-cast v1, Lcom/android/launcher2/FolderInfo;

    .line 210
    .local v1, folderInfo:Lcom/android/launcher2/FolderInfo;
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 211
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4, v1}, Lcom/android/launcher2/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)V

    goto :goto_13

    .line 212
    .end local v1           #folderInfo:Lcom/android/launcher2/FolderInfo;
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceOrFolderWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 214
    iget-object v5, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 215
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    move-object v3, v2

    .line 217
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 218
    .local v3, launcherAppWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    .line 219
    .local v0, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v0, :cond_13

    .line 222
    new-instance v4, Lcom/android/launcher2/DeleteDropTarget$2;

    const-string v5, "deleteAppWidgetId"

    invoke-direct {v4, p0, v5, v0, v3}, Lcom/android/launcher2/DeleteDropTarget$2;-><init>(Lcom/android/launcher2/DeleteDropTarget;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    invoke-virtual {v4}, Lcom/android/launcher2/DeleteDropTarget$2;->start()V

    goto :goto_13
.end method

.method private isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .registers 4
    .parameter "source"
    .parameter "info"

    .prologue
    .line 84
    instance-of v0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isAllAppsWidget(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .registers 4
    .parameter "source"
    .parameter "info"

    .prologue
    .line 87
    instance-of v0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 90
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v0, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isWorkspaceFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 99
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isWorkspaceOrFolderApplication(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isWorkspaceOrFolderWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .registers 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnd()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mActive:Z

    .line 150
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 156
    iget v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(I)V

    .line 157
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 162
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_11

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 164
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    :cond_11
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 10
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 110
    const/4 v2, 0x1

    .line 111
    .local v2, isVisible:Z
    const/4 v1, 0x0

    .line 114
    .local v1, isUninstall:Z
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsWidget(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 115
    const/4 v2, 0x0

    .line 120
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v0, p2

    .line 121
    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 122
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget v3, v0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_56

    .line 123
    const/4 v1, 0x1

    .line 129
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_58

    .line 130
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3, v5, v5, v5}, Lcom/android/launcher2/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_22
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v4

    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 136
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mActive:Z

    .line 137
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 138
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5e

    :goto_40
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_55

    .line 141
    if-eqz v1, :cond_61

    const v3, 0x7f0c0023

    :goto_52
    invoke-virtual {p0, v3}, Lcom/android/launcher2/DeleteDropTarget;->setText(I)V

    .line 144
    :cond_55
    return-void

    .line 125
    .restart local v0       #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_56
    const/4 v2, 0x0

    goto :goto_1b

    .line 132
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_58
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3, v5, v5, v5}, Lcom/android/launcher2/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 139
    :cond_5e
    const/16 v4, 0x8

    goto :goto_40

    .line 141
    :cond_61
    const v3, 0x7f0c0022

    goto :goto_52
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 233
    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onFinishInflate()V

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    .local v1, r:Landroid/content/res/Resources;
    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 63
    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 65
    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 67
    iget-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 68
    iget-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 76
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_67

    .line 77
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_67

    .line 78
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/launcher2/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_67
    return-void
.end method
