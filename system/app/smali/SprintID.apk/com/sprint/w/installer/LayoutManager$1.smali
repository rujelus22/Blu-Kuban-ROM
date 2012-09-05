.class Lcom/sprint/w/installer/LayoutManager$1;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/LayoutManager;->apply(Lcom/sprint/w/installer/LayoutManager$Layout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/LayoutManager;

.field final synthetic val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

.field final synthetic val$l:Lcom/sprint/w/installer/LayoutManager$Layout;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/service/SprintIDServiceConnection;Lcom/sprint/w/installer/LayoutManager$Layout;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iput-object p2, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    iput-object p3, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v13, -0x64

    .line 487
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v1, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v1}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    .line 488
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    if-eqz v0, :cond_f4

    .line 489
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/LayoutManager$AppMeta;

    .line 490
    .local v8, app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPH-P100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v1, v8, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    #calls: Lcom/sprint/w/installer/LayoutManager;->isOnTablet(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sprint/w/installer/LayoutManager;->access$100(Lcom/sprint/w/installer/LayoutManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 491
    :cond_3a
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    #calls: Lcom/sprint/w/installer/LayoutManager;->addAppShortcut(Lcom/sprint/w/installer/LayoutManager$AppMeta;I)V
    invoke-static {v0, v8, v13}, Lcom/sprint/w/installer/LayoutManager;->access$200(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$AppMeta;I)V

    goto :goto_1a

    .line 494
    .end local v8           #app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    :cond_40
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_48
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;

    .line 495
    .local v12, w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->packageName:Ljava/lang/String;

    iget-object v1, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v7, cn:Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v1, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v1, v1, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    iget v2, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->screen:I

    iget v3, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->x:I

    iget v4, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->y:I

    iget v5, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->w:I

    iget v6, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->h:I

    #calls: Lcom/sprint/w/installer/LayoutManager;->addAppWidget(Landroid/app/Activity;IIIIILandroid/content/ComponentName;)V
    invoke-static/range {v0 .. v7}, Lcom/sprint/w/installer/LayoutManager;->access$300(Lcom/sprint/w/installer/LayoutManager;Landroid/app/Activity;IIIIILandroid/content/ComponentName;)V

    goto :goto_48

    .line 499
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v12           #w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    :cond_71
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_79
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;

    .line 500
    .local v11, m:Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    #calls: Lcom/sprint/w/installer/LayoutManager;->addShortcut(Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;I)V
    invoke-static {v0, v11, v13}, Lcom/sprint/w/installer/LayoutManager;->access$400(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;I)V

    goto :goto_79

    .line 502
    .end local v11           #m:Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    :cond_8b
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mSearchWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_93
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;

    .line 503
    .local v11, m:Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget v1, v11, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->screen:I

    iget v2, v11, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->x:I

    iget v3, v11, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->y:I

    #calls: Lcom/sprint/w/installer/LayoutManager;->addSearchWidget(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/sprint/w/installer/LayoutManager;->access$500(Lcom/sprint/w/installer/LayoutManager;III)V

    goto :goto_93

    .line 505
    .end local v11           #m:Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;
    :cond_ab
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mLiveFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;

    .line 506
    .local v11, m:Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    #calls: Lcom/sprint/w/installer/LayoutManager;->addLiveFolder(Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;)V
    invoke-static {v0, v11}, Lcom/sprint/w/installer/LayoutManager;->access$600(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;)V

    goto :goto_b3

    .line 508
    .end local v11           #m:Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
    :cond_c5
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$l:Lcom/sprint/w/installer/LayoutManager$Layout;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_cd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/w/installer/LayoutManager$FolderMeta;

    .line 509
    .local v11, m:Lcom/sprint/w/installer/LayoutManager$FolderMeta;
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    #calls: Lcom/sprint/w/installer/LayoutManager;->addFolder(Lcom/sprint/w/installer/LayoutManager$FolderMeta;)V
    invoke-static {v0, v11}, Lcom/sprint/w/installer/LayoutManager;->access$700(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$FolderMeta;)V

    goto :goto_cd

    .line 513
    .end local v11           #m:Lcom/sprint/w/installer/LayoutManager$FolderMeta;
    :cond_df
    :try_start_df
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v0}, Lcom/sprint/id/ISprintIDService;->notifyFavoritesChanges()V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e6} :catch_f5

    .line 518
    :goto_e6
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    iget-object v0, v0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sprint/w/installer/LayoutManager$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 519
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager$1;->this$0:Lcom/sprint/w/installer/LayoutManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    .line 522
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_f4
    return-void

    .line 514
    .restart local v10       #i$:Ljava/util/Iterator;
    :catch_f5
    move-exception v9

    .line 516
    .local v9, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Error calling mService.notifyFavoritesChanges()"

    invoke-virtual {v0, v1, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e6
.end method
