.class public Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;
.super Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;
.source "LauncherManagerMakePageFolder.java"


# instance fields
.field private mPageFolderFull:Landroid/widget/Toast;

.field private mRejectDragDrop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f080076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "16"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mPageFolderFull:Landroid/widget/Toast;

    .line 45
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x0

    .line 49
    instance-of v3, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v3, :cond_7

    move v3, v4

    .line 70
    :goto_6
    return v3

    :cond_7
    move-object v3, p6

    .line 52
    check-cast v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 53
    .local v0, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-nez v0, :cond_12

    move v3, v4

    .line 54
    goto :goto_6

    .line 56
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v4

    .line 57
    goto :goto_6

    .line 59
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_33

    .line 61
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_33

    move-object v1, v2

    .line 62
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 63
    .local v1, model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_33

    .line 64
    const/4 v3, 0x1

    goto :goto_6

    .line 70
    .end local v1           #model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_33
    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v3

    goto :goto_6
.end method

.method public addToRejectDragDropList(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 3
    .parameter "aInfo"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_d
    return-void
.end method

.method public clearRejectDragDropList()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    return-void
.end method

.method public onContentsChanged()V
    .registers 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onContentsChanged()V

    .line 127
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 20
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 74
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 75
    move-object/from16 v0, p6

    instance-of v11, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v11, :cond_b

    .line 76
    const/4 v11, 0x0

    .line 117
    :goto_a
    return v11

    :cond_b
    move-object/from16 v11, p6

    .line 78
    check-cast v11, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v4

    .line 79
    .local v4, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-nez v4, :cond_17

    .line 80
    const/4 v11, 0x0

    goto :goto_a

    .line 82
    :cond_17
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 83
    const/4 v11, 0x0

    goto :goto_a

    .line 85
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 86
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_9e

    .line 87
    instance-of v11, v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v11, :cond_9e

    move-object v7, v10

    .line 88
    check-cast v7, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 89
    .local v7, model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v11

    const/16 v12, 0x10

    if-lt v11, v12, :cond_9e

    .line 90
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mPageFolderFull:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, draggedView:Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    .line 93
    .local v9, pt:Landroid/graphics/PointF;
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    .line 94
    .local v6, mgr:Lcom/sec/android/app/twlauncher/MenuManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, phanList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 97
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_77

    instance-of v11, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_77

    move-object v5, v3

    .line 98
    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 99
    .local v5, menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 100
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v6, v5, v9, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    .line 102
    const/4 v11, 0x0

    goto :goto_a

    .line 104
    .end local v5           #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_77
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    .line 105
    .local v1, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_9b

    instance-of v11, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_9b

    move-object v5, v3

    .line 107
    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 108
    .restart local v5       #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 109
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1, v5, v9, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z

    .line 111
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 113
    .end local v5           #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_9b
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 117
    .end local v1           #asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .end local v2           #draggedView:Landroid/view/View;
    .end local v3           #foundView:Landroid/view/View;
    .end local v6           #mgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v7           #model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v8           #phanList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    .end local v9           #pt:Landroid/graphics/PointF;
    :cond_9e
    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v11

    goto/16 :goto_a
.end method
