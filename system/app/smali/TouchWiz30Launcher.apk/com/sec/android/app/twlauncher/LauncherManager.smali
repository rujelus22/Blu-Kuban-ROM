.class public Lcom/sec/android/app/twlauncher/LauncherManager;
.super Landroid/widget/LinearLayout;
.source "LauncherManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;


# static fields
.field private static mNewMode:I


# instance fields
.field private isDpadCenterLongPress:Z

.field private mAddFolderOffsetX:F

.field private mAddPageOffsetX:F

.field private mEmptyFolderMenu:Landroid/view/MenuItem;

.field private mEmptyPageMenu:Landroid/view/MenuItem;

.field private mFolderOffsetY:F

.field private mItemCountColor:I

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

.field private mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

.field private mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

.field private mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mRes:Landroid/content/res/Resources;

.field private mShowHelp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->init()V

    .line 93
    return-void
.end method

.method private addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V
    .registers 6
    .parameter "aItemView"
    .parameter "aMenuItem"

    .prologue
    .line 185
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 197
    :cond_4
    :goto_4
    return-void

    .line 188
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 192
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 195
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 196
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private closeAllOpenFolderViews()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 789
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 791
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 793
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->invalidate()V

    .line 794
    return-void
.end method

.method private ensureAllIsSaved()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 273
    .local v0, folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 275
    .local v1, pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_25

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_25

    .line 276
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 287
    :goto_24
    return v2

    .line 279
    :cond_25
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_33

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_24

    .line 283
    :cond_33
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-lez v3, :cond_41

    .line 284
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_24

    .line 287
    :cond_41
    const/4 v2, 0x1

    goto :goto_24
.end method

.method private getChildViewLocationF(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 7
    .parameter "aView"

    .prologue
    .line 549
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 550
    .local v0, pos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 551
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method private getDesiredY()I
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddFolderOffsetX:F

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddPageOffsetX:F

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    .line 110
    return-void
.end method

.method private openFolderView(Landroid/view/View;)V
    .registers 6
    .parameter "aView"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 546
    :goto_8
    return-void

    .line 507
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->closeAllOpenFolderViews()V

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v1, :cond_23

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 512
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 513
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 527
    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v1, :cond_3a

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 530
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 531
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 545
    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->requestLayout()V

    goto :goto_8
.end method

.method private removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V
    .registers 6
    .parameter "aItemView"
    .parameter "aMenuItem"

    .prologue
    .line 170
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 182
    :cond_4
    :goto_4
    return-void

    .line 173
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 177
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 180
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 181
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeFolderView(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V
    .registers 13
    .parameter "aFolderIcon"

    .prologue
    const/4 v10, 0x0

    .line 555
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 556
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_49

    instance-of v8, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_49

    move-object v5, v6

    .line 557
    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 558
    .local v5, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getChildViewLocationF(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    .line 559
    .local v3, folderPosition:Landroid/graphics/PointF;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_13
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v8

    if-ge v4, v8, :cond_49

    .line 560
    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 561
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 564
    .local v2, curMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 565
    .local v7, tempView:Lcom/sec/android/app/twlauncher/MenuItemView;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8, v7, v3, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 566
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    .line 567
    .local v1, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    if-eqz v1, :cond_46

    .line 568
    invoke-virtual {v1, v7, v3, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    .line 559
    .end local v1           #asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 574
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #curMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v3           #folderPosition:Landroid/graphics/PointF;
    .end local v4           #i:I
    .end local v5           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v7           #tempView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_49
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public close(I)Z
    .registers 3
    .parameter "aNewMode"

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->ensureAllIsSaved()Z

    move-result v0

    if-nez v0, :cond_a

    .line 578
    sput p1, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    .line 579
    const/4 v0, 0x0

    .line 584
    :goto_9
    return v0

    .line 581
    :cond_a
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    .line 582
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 584
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public dialogRes(IZZ)V
    .registers 10
    .parameter "aId"
    .parameter "aYes"
    .parameter "aAnimate"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 291
    if-eqz p2, :cond_55

    .line 292
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 293
    .local v1, mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 294
    .local v0, folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 296
    .local v2, pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    if-eqz v1, :cond_22

    .line 297
    packed-switch p1, :pswitch_data_66

    .line 313
    :goto_1f
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    .line 322
    .end local v0           #folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v1           #mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_22
    :goto_22
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    .line 323
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 324
    sget v3, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    if-eq v5, v3, :cond_3b

    .line 325
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    sget v4, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    .line 326
    sput v5, Lcom/sec/android/app/twlauncher/LauncherManager;->mNewMode:I

    .line 328
    :cond_3b
    return-void

    .line 299
    .restart local v0       #folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .restart local v1       #mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .restart local v2       #pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :pswitch_3c
    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    goto :goto_1f

    .line 304
    :pswitch_40
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    goto :goto_1f

    .line 309
    :pswitch_4a
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    .line 310
    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    goto :goto_1f

    .line 316
    .end local v0           #folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v1           #mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_55
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 317
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->menuedit_save()V

    goto :goto_22

    .line 297
    nop

    :pswitch_data_66
    .packed-switch 0x8
        :pswitch_3c
        :pswitch_40
        :pswitch_4a
    .end packed-switch
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 235
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 729
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v8

    .line 730
    .local v8, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-nez v8, :cond_9

    .line 752
    :goto_8
    return v9

    .line 733
    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 734
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v6

    .line 735
    .local v6, kTotalHeight:I
    neg-int v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 736
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 739
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v7

    .line 741
    .local v7, launcherMgrF:F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v10

    .line 743
    .local v10, scrollF:F
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->getHeight()I

    move-result v0

    sub-int v0, v6, v0

    int-to-float v3, v0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 748
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 750
    invoke-virtual {v8, p1, p0, v9, v9}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v9

    .line 751
    .local v9, res:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_8
.end method

.method public emptyNewFolder(Z)V
    .registers 3
    .parameter "animateOn"

    .prologue
    .line 592
    if-eqz p1, :cond_7

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 595
    :cond_7
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 596
    return-void
.end method

.method public emptyNewFolder(ZZ)V
    .registers 5
    .parameter "animateOn"
    .parameter "opened"

    .prologue
    .line 600
    if-eqz p1, :cond_7

    .line 601
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 603
    :cond_7
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 604
    .local v0, ui:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 605
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 617
    return-void
.end method

.method public emptyPageFolder(Z)V
    .registers 3
    .parameter "animateOn"

    .prologue
    .line 673
    if-eqz p1, :cond_7

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 676
    :cond_7
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 677
    return-void
.end method

.method public emptyPageFolder(ZZ)V
    .registers 5
    .parameter "animateOn"
    .parameter "opened"

    .prologue
    .line 681
    if-eqz p1, :cond_7

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 684
    :cond_7
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 685
    .local v0, ui:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 686
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 699
    return-void
.end method

.method public forceClear(Z)V
    .registers 2
    .parameter "animate"

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 333
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 858
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 861
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 862
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 864
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 865
    return-object p1
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "outRect"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v0

    .line 241
    .local v0, height:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 242
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 243
    return-void
.end method

.method public getMakeFolderInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .registers 3

    .prologue
    .line 654
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 655
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_e

    .line 656
    :cond_c
    const/4 v0, 0x0

    .line 658
    .end local v0           #tag:Ljava/lang/Object;
    :goto_d
    return-object v0

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_e
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    goto :goto_d
.end method

.method public getMakePageInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .registers 3

    .prologue
    .line 662
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 663
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_e

    .line 664
    :cond_c
    const/4 v0, 0x0

    .line 666
    .end local v0           #tag:Ljava/lang/Object;
    :goto_d
    return-object v0

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_e
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    goto :goto_d
.end method

.method public handleBackKey()Z
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->isShown()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 264
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hasDropTarget(Ljava/lang/Object;)Z
    .registers 3
    .parameter "dropTarget"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public help1DlgRes(Z)V
    .registers 5
    .parameter "aDontShow"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_5

    .line 215
    :goto_4
    return-void

    .line 212
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dontshowhelp1"

    if-eqz p1, :cond_17

    const/4 v1, 0x1

    :goto_10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 213
    :cond_17
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 247
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method public isMakeFolderOrPageOpened()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 870
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 871
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 878
    :cond_f
    :goto_f
    return v1

    .line 874
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 875
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v2

    if-nez v2, :cond_f

    .line 878
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "aView"

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openCloseFolderPage(Landroid/view/View;)V

    .line 487
    return-void
.end method

.method public onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .registers 2
    .parameter "aFolderView"

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->closeAllOpenFolderViews()V

    .line 782
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 762
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 774
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 770
    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 8
    .parameter "v"
    .parameter "newSource"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 766
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .registers 23
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 338
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p7

    instance-of v13, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v13, :cond_1d

    .line 342
    check-cast p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p7
    invoke-virtual/range {p7 .. p7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v3

    .line 343
    .local v3, dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v13, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v13, :cond_1d

    move-object v1, v3

    .line 344
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 347
    .end local v3           #dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1d
    if-nez v1, :cond_43

    .line 414
    :cond_1f
    :goto_1f
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setChildState(I)V

    .line 415
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setChildState(I)V

    .line 416
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDragDropEnabled(Z)V

    .line 417
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDragDropEnabled(Z)V

    .line 418
    if-nez p6, :cond_42

    .line 419
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnd()V

    .line 421
    :cond_42
    return-void

    .line 350
    :cond_43
    const/4 v6, 0x0

    .line 351
    .local v6, folderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
    const/4 v7, 0x0

    .line 353
    .local v7, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v11, 0x0

    .line 354
    .local v11, tempView:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 355
    invoke-virtual {v6, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v11

    .line 356
    if-nez v11, :cond_54

    .line 357
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 358
    invoke-virtual {v6, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v11

    .line 360
    :cond_54
    if-eqz v11, :cond_1f

    .line 363
    instance-of v13, v11, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v13, :cond_1f

    move-object v7, v11

    .line 366
    check-cast v7, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 368
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 369
    .local v9, myRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/LauncherManager;->getDropHitRect(Landroid/graphics/Rect;)V

    .line 370
    move/from16 v0, p2

    float-to-int v13, v0

    move/from16 v0, p3

    float-to-int v14, v0

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 371
    .local v4, droppedInMe:Z
    if-nez v4, :cond_1f

    .line 375
    new-instance v8, Landroid/graphics/PointF;

    sub-float v13, p2, p4

    sub-float v14, p3, p5

    invoke-direct {v8, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 376
    .local v8, loc:Landroid/graphics/PointF;
    const/4 v12, 0x1

    .line 378
    .local v12, unPhanRes:Z
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v8, v14}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    move-result v13

    if-eqz v13, :cond_98

    .line 388
    :goto_84
    if-eqz v12, :cond_1f

    .line 389
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 390
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_1f

    .line 393
    instance-of v13, v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v13, :cond_1f

    move-object v5, v10

    .line 396
    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 397
    .local v5, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/4 v13, 0x0

    invoke-virtual {v5, v1, v13}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_1f

    .line 381
    .end local v5           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v10           #tag:Ljava/lang/Object;
    :cond_98
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    .line 382
    .local v2, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    if-nez v2, :cond_a2

    .line 383
    const/4 v12, 0x0

    .line 384
    goto :goto_84

    .line 386
    :cond_a2
    const/4 v13, 0x0

    invoke-virtual {v2, v7, v8, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    move-result v12

    goto :goto_84
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 115
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V

    .line 118
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V

    .line 127
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDrawBadgeCountOn(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setHighlightBitmap(I)V

    .line 136
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDrawBadgeCountOn(Z)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setHighlightBitmap(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setFoldersAllowed(Z)V

    .line 142
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .registers 7
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .parameter "aFolderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)Z
    .registers 17
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .parameter "aFolderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v1, :cond_6

    .line 822
    const/4 v1, 0x0

    .line 843
    :goto_5
    return v1

    .line 824
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 825
    .local v8, tag:Ljava/lang/Object;
    if-nez v8, :cond_e

    .line 826
    const/4 v1, 0x0

    goto :goto_5

    .line 828
    :cond_e
    instance-of v1, v8, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_14

    .line 829
    const/4 v1, 0x0

    goto :goto_5

    :cond_14
    move-object v9, p2

    .line 831
    check-cast v9, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 832
    .local v9, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 833
    .local v6, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    .line 834
    .local v7, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    if-nez v7, :cond_27

    .line 835
    const/4 v1, 0x0

    goto :goto_5

    .line 837
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDragDropEnabled(Z)V

    .line 838
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDragDropEnabled(Z)V

    .line 839
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    .line 840
    .local v0, dragger:Lcom/sec/android/app/twlauncher/DragLayer;
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v4, 0x0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/DragLayer;->centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    move-object v1, p2

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragLayer;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 842
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    .line 843
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 443
    const/16 v4, 0x17

    if-ne p2, v4, :cond_3d

    .line 444
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 445
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 447
    :cond_e
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    if-eqz v4, :cond_2f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_2f

    .line 448
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .local v1, tag:Ljava/lang/Object;
    move-object v0, v1

    .line 450
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 451
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    instance-of v3, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v3, :cond_2e

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->onAddDefaultFolder(Landroid/view/View;)V

    .line 463
    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v1           #tag:Ljava/lang/Object;
    :cond_2e
    :goto_2e
    return v2

    .line 456
    :cond_2f
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    if-nez v3, :cond_2e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2e

    .line 457
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openCloseFolderPage(Landroid/view/View;)V

    goto :goto_2e

    :cond_3d
    move v2, v3

    .line 463
    goto :goto_2e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    .line 482
    return v3
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .registers 4
    .parameter "aView"
    .parameter "aDragAction"

    .prologue
    .line 425
    if-nez p2, :cond_6

    .line 426
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_6
    return-void
.end method

.method public openCloseFolderPage(Landroid/view/View;)V
    .registers 3
    .parameter "aView"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    .line 471
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    :goto_1e
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 475
    :goto_21
    return-void

    .line 471
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    goto :goto_1e

    .line 474
    :cond_25
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    goto :goto_21
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 849
    .local v1, res:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 850
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 851
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 852
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 853
    return v1
.end method

.method public restoreSelf()V
    .registers 3

    .prologue
    .line 492
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 493
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    .line 501
    :cond_13
    :goto_13
    return-void

    .line 497
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 498
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    goto :goto_13
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getDesiredY()I

    move-result v1

    .line 258
    .local v1, y:I
    sub-int v0, p4, p2

    .line 259
    .local v0, height:I
    add-int v2, v1, v0

    invoke-super {p0, p1, v1, p3, v2}, Landroid/widget/LinearLayout;->setFrame(IIII)Z

    move-result v2

    return v2
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 5
    .parameter "aLauncher"

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v1, "launchermanager"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 436
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 437
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 438
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 440
    return-void
.end method

.method public setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 15
    .parameter "aUserFolderInfo"

    .prologue
    .line 620
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropFolder(Z)V

    .line 622
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 623
    .local v12, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 624
    .local v3, bitmap:Landroid/graphics/Bitmap;
    instance-of v1, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_64

    move-object v11, v12

    .line 625
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 626
    .local v11, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 631
    .end local v11           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_19
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddFolderOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 636
    .local v0, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 639
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->clearRejectDragDropList()V

    .line 649
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->addToRejectDragDropList(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 651
    return-void

    .line 628
    .end local v0           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    :cond_64
    const-string v1, "LauncherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder image is not a BitmapDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 15
    .parameter "aUserFolderInfo"

    .prologue
    .line 702
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropPage(Z)V

    .line 704
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 705
    .local v12, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 706
    .local v3, bitmap:Landroid/graphics/Bitmap;
    instance-of v1, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5a

    move-object v11, v12

    .line 707
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 708
    .local v11, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 713
    .end local v11           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_19
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddPageOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 718
    .local v0, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 719
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 720
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 721
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 724
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 725
    return-void

    .line 710
    .end local v0           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    :cond_5a
    const-string v1, "LauncherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder image is not a BitmapDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .registers 5
    .parameter "aEmptyFolderMenu"
    .parameter "aEmptyPageMenu"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 202
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    .line 203
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 206
    return-void
.end method

.method public setShowHelp(Z)V
    .registers 2
    .parameter "aShowHelp"

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    .line 589
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    .line 231
    return-void
.end method
