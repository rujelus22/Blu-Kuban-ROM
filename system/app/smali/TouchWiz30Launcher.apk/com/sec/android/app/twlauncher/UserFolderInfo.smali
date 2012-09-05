.class Lcom/sec/android/app/twlauncher/UserFolderInfo;
.super Lcom/sec/android/app/twlauncher/FolderInfo;
.source "UserFolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;
    }
.end annotation


# instance fields
.field private mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

.field public mHighlightedIcon:Landroid/graphics/drawable/Drawable;

.field private mIsNewDropFolder:Z

.field private mIsNewDropPage:Z

.field private mShadowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingList:Ljava/util/ArrayList;
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
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 48
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mHighlightedIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setCreateTime(J)V

    .line 71
    return-void
.end method

.method private syncBubbleItemView(Lcom/sec/android/app/twlauncher/BubbleTextView;)V
    .registers 2
    .parameter "aView"

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidateIconSurface()V

    .line 414
    return-void
.end method

.method private syncItemView(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V
    .registers 3
    .parameter "aView"

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->forceReload()V

    .line 401
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->invalidateSurface()V

    .line 402
    return-void
.end method

.method private syncLMFolderView(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .registers 6
    .parameter "aView"

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 388
    .local v0, appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-eqz v0, :cond_26

    .line 389
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->clear()V

    .line 390
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 391
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_f

    .line 393
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1f
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 394
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 396
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_26
    return-void
.end method

.method private syncMenuItem(Landroid/view/MenuItem;)V
    .registers 3
    .parameter "aView"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 406
    return-void

    .line 405
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private syncSimpleTextIconItem(Lcom/sec/android/app/twlauncher/SimpleTextIconItem;)V
    .registers 3
    .parameter "aView"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-void
.end method

.method private syncUserFolder(Lcom/sec/android/app/twlauncher/UserFolder;)V
    .registers 6
    .parameter "aView"

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 375
    .local v0, appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-eqz v0, :cond_2a

    .line 376
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 377
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->clear()V

    .line 378
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 379
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_13

    .line 381
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_23
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 382
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 384
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2a
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .registers 3
    .parameter "aInfo"

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z
    .registers 5
    .parameter "aInfo"
    .parameter "aCommitNow"

    .prologue
    const/4 v0, 0x1

    .line 146
    if-eqz p2, :cond_12

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 152
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v1, :cond_28

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 158
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 162
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public addFolderView(Ljava/lang/Object;)Z
    .registers 4
    .parameter "aView"

    .prologue
    const/4 v0, 0x0

    .line 296
    if-nez p1, :cond_4

    .line 307
    .end local p1
    :cond_3
    :goto_3
    return v0

    .line 299
    .restart local p1
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 303
    .local v0, res:Z
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 304
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    goto :goto_3
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_13

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 286
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 288
    return-void
.end method

.method public commit()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->fixIndices()V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 244
    return v2
.end method

.method public contains(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .registers 3
    .parameter "aInfo"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V
    .registers 5
    .parameter "info"
    .parameter "aCommitNow"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    if-eqz p2, :cond_17

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_20

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 114
    :cond_20
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 115
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 118
    return-void
.end method

.method public fixIndices()V
    .registers 6

    .prologue
    .line 230
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_3e

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 232
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 233
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 234
    const-string v2, "DebugPlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fix indices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 236
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_3e
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
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
    .line 198
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 199
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 204
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_f
    if-ltz v0, :cond_1f

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 206
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 208
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1f
    return-object p1
.end method

.method public getBadgeCount()I
    .registers 5

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, sum:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 94
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    .line 96
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_19
    return v2
.end method

.method public getContents()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 3
    .parameter "aIndex"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isNewDropFolder()Z
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    return v0
.end method

.method public isNewDropPage()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    return v0
.end method

.method public markAsClean()V
    .registers 3

    .prologue
    .line 421
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;->markAsClean()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1b

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 422
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 425
    :cond_1b
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 87
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .registers 3
    .parameter "aInfo"

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z
    .registers 5
    .parameter "aInfo"
    .parameter "aCommitNow"

    .prologue
    const/4 v1, 0x1

    .line 213
    if-eqz p2, :cond_a

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 217
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_1b

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 224
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 225
    return v1
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    return-void
.end method

.method public removeFolderView(Ljava/lang/Object;)Z
    .registers 3
    .parameter "aView"

    .prologue
    .line 311
    if-nez p1, :cond_4

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .registers 7
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
    .local p1, aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, res:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_25

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 175
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 176
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 178
    const/4 v2, 0x1

    .line 173
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 181
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2d
    if-ltz v0, :cond_48

    .line 182
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 183
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 186
    const/4 v2, 0x1

    .line 181
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 189
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_48
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v3, :cond_54

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 193
    :cond_54
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 194
    return v2
.end method

.method public renewFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V
    .registers 7
    .parameter "info"
    .parameter "aCommitNow"

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 131
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 132
    .local v0, aInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 135
    .end local v0           #aInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_20
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 136
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 137
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 139
    return-void
.end method

.method public revert()Z
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_15

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 264
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public setIsNewDropFolder(Z)V
    .registers 2
    .parameter "isDropFolder"

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 327
    return-void
.end method

.method public setIsNewDropPage(Z)V
    .registers 2
    .parameter "isDropPage"

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 319
    return-void
.end method

.method public setOnContentsChangedListener(Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "aTitle"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 124
    return-void
.end method

.method syncAllViews()V
    .registers 4

    .prologue
    .line 347
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_4e

    .line 348
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, v:Ljava/lang/Object;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_1a

    move-object v2, v1

    .line 350
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncUserFolder(Lcom/sec/android/app/twlauncher/UserFolder;)V

    .line 352
    :cond_1a
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    if-eqz v2, :cond_24

    move-object v2, v1

    .line 353
    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncLMFolderView(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 355
    :cond_24
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v2, :cond_2e

    move-object v2, v1

    .line 356
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncItemView(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 358
    :cond_2e
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    if-eqz v2, :cond_38

    move-object v2, v1

    .line 362
    check-cast v2, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncSimpleTextIconItem(Lcom/sec/android/app/twlauncher/SimpleTextIconItem;)V

    .line 364
    :cond_38
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v2, :cond_42

    move-object v2, v1

    .line 365
    check-cast v2, Lcom/sec/android/app/twlauncher/BubbleTextView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncBubbleItemView(Lcom/sec/android/app/twlauncher/BubbleTextView;)V

    .line 367
    :cond_42
    instance-of v2, v1, Landroid/view/MenuItem;

    if-eqz v2, :cond_4b

    .line 368
    check-cast v1, Landroid/view/MenuItem;

    .end local v1           #v:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncMenuItem(Landroid/view/MenuItem;)V

    .line 347
    :cond_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 371
    :cond_4e
    return-void
.end method

.method public updateBadgeCount()I
    .registers 5

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, sum:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 337
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    .line 339
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_19
    return v2
.end method

.method public updateItemIds(J)Z
    .registers 6
    .parameter "aId"

    .prologue
    .line 249
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_18

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 251
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 253
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_18
    const/4 v2, 0x1

    return v2
.end method
