.class public Lcom/sec/android/app/twlauncher/UserFolder;
.super Lcom/sec/android/app/twlauncher/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mHostScreen:I

.field private mRequiresPreload:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mRequiresPreload:Z

    .line 21
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;
    .registers 4
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    return-object v0
.end method

.method private setRequiresPreload()V
    .registers 2

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mRequiresPreload:Z

    .line 324
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 325
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 46
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 47
    .local v0, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 48
    .local v1, itemType:I
    if-eqz v1, :cond_d

    if-ne v1, v2, :cond_18

    :cond_d
    iget-wide v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public addAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 6
    .parameter "aInfo"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 175
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-nez v0, :cond_7

    .line 183
    :cond_6
    :goto_6
    return-void

    .line 178
    :cond_7
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_6

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 181
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    if-eq v2, v3, :cond_20

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_6

    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-nez v0, :cond_13

    .line 240
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 242
    :cond_13
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_1c

    .line 243
    check-cast p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 245
    :cond_1c
    return-void
.end method

.method close()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeFolderView(Ljava/lang/Object;)Z

    .line 279
    :cond_d
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->updateHostScreen()V

    .line 281
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 294
    .local v0, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    const/4 v1, 0x0

    .line 295
    .local v1, res:Z
    if-eqz v0, :cond_1f

    .line 296
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 298
    invoke-virtual {v0, p1, p0, v4, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v1

    .line 299
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 301
    :cond_1f
    return v1
.end method

.method public getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .registers 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getContentAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 249
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_b

    .line 250
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 252
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :goto_a
    return-object v0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "outRect"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolder;->getHitRect(Landroid/graphics/Rect;)V

    .line 171
    return-void
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->invalidate()V

    .line 307
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    .line 308
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Folder;->invalidate(IIII)V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    .line 320
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->invalidate(Landroid/graphics/Rect;)V

    .line 313
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    .line 314
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
    .line 167
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
    .line 205
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
    .line 200
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 16
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v0, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v0, :cond_14

    .line 125
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v7, v1

    .line 129
    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .local v7, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_10
    if-nez v7, :cond_1d

    move-object v1, v7

    .line 161
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_13
    return v4

    .line 126
    .restart local p6
    :cond_14
    instance-of v0, p6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_84

    move-object v1, p6

    .line 127
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v1

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_10

    .line 132
    .end local p6
    :cond_1d
    iget-wide v2, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_82

    .line 134
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 136
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_2a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->addAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 138
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    if-ne v0, v8, :cond_4f

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    if-ne v0, v8, :cond_6d

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080081

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    packed-switch v0, :pswitch_data_86

    .line 158
    :goto_58
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;

    if-eqz v0, :cond_6b

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    :cond_6b
    move v4, v8

    .line 161
    goto :goto_13

    .line 145
    :cond_6d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080082

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4f

    .line 152
    :pswitch_76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_58

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_82
    move-object v1, v7

    .end local v7           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_2a

    .restart local p6
    :cond_84
    move-object v7, v1

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_10

    .line 150
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_76
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .registers 13
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 211
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v3, :cond_1d

    .line 221
    :goto_6
    invoke-super/range {p0 .. p7}, Lcom/sec/android/app/twlauncher/Folder;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 222
    if-eqz p6, :cond_1c

    move-object v2, p7

    .line 223
    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .line 225
    .local v2, ldi:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 227
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->shouldDelayRemovingFromSourceWhenDrop()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 229
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->updateHostScreen()V

    .line 235
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #ldi:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    :cond_1c
    return-void

    .line 214
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 215
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1c

    goto :goto_6
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_a

    .line 114
    :cond_9
    :goto_9
    return v4

    .line 92
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v6, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v6, :cond_15

    .line 114
    :cond_10
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/Folder;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_9

    .line 95
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 97
    .local v2, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v6

    if-ne v6, v7, :cond_10

    .line 100
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v6

    if-eqz v6, :cond_65

    :cond_37
    move v1, v5

    .line 101
    .local v1, dropTableFolders:Z
    :goto_38
    if-nez v1, :cond_9

    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 105
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    .line 107
    new-array v3, v7, [I

    .line 108
    .local v3, loc:[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 109
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    aget v8, v3, v4

    aget v5, v3, v5

    invoke-direct {v7, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, p0, v7, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromFolder(Lcom/sec/android/app/twlauncher/UserFolder;Landroid/graphics/Point;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 110
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/UserFolder;->removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    goto :goto_9

    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #dropTableFolders:Z
    .end local v3           #loc:[I
    :cond_65
    move v1, v4

    .line 100
    goto :goto_38
.end method

.method onOpen()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    .line 268
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus()Z

    .line 272
    return-void
.end method

.method public removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 6
    .parameter "aInfo"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 188
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-nez v0, :cond_7

    .line 196
    :cond_6
    :goto_6
    return-void

    .line 191
    :cond_7
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_6

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 194
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    if-eq v2, v3, :cond_20

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_6

    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method protected updateHostScreen()V
    .registers 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 257
    .local v0, cl:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_11

    .line 259
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->updateBadgeCounts()V

    .line 261
    :cond_11
    return-void
.end method
