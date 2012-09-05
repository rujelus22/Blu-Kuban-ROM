.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/CellLayout;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3375
    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 3377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3378
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3381
    .local v4, childCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_13
    if-ge v12, v4, :cond_159

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3383
    .local v18, view:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 3385
    .local v17, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_7c

    move-object/from16 v9, v17

    .line 3386
    check-cast v9, Lcom/android/launcher2/ShortcutInfo;

    .line 3387
    .local v9, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v9, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3388
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3390
    .local v14, name:Landroid/content/ComponentName;
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_155

    if-eqz v14, :cond_155

    .line 3391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4f
    :goto_4f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_155

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3392
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4f

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$2500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3394
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 3398
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_7c
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_fc

    move-object/from16 v9, v17

    .line 3399
    check-cast v9, Lcom/android/launcher2/FolderInfo;

    .line 3400
    .local v9, info:Lcom/android/launcher2/FolderInfo;
    iget-object v6, v9, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3401
    .local v6, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3402
    .local v7, contentsCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3405
    .local v2, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v13, 0x0

    .local v13, k:I
    :goto_94
    if-ge v13, v7, :cond_d9

    .line 3406
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 3407
    .local v1, appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3408
    .restart local v10       #intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3410
    .restart local v14       #name:Landroid/content/ComponentName;
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d6

    if-eqz v14, :cond_d6

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_ba
    :goto_ba
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3412
    .restart local v15       #packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_ba

    .line 3413
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 3405
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_d6
    add-int/lit8 v13, v13, 0x1

    goto :goto_94

    .line 3418
    .end local v1           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    :cond_d9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_dd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_155

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/ShortcutInfo;

    .line 3419
    .local v11, item:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 3420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$2500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_dd

    .line 3422
    .end local v2           #appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v6           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v7           #contentsCount:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/FolderInfo;
    .end local v11           #item:Lcom/android/launcher2/ShortcutInfo;
    .end local v13           #k:I
    :cond_fc
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_155

    move-object/from16 v9, v17

    .line 3423
    check-cast v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 3424
    .local v9, info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 3426
    .local v16, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v16, :cond_155

    .line 3427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_122
    :goto_122
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_155

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3428
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_122

    .line 3429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$2500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3430
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 3381
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_155
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_13

    .line 3437
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #view:Landroid/view/View;
    :cond_159
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3438
    const/4 v12, 0x0

    :goto_15e
    if-ge v12, v4, :cond_18b

    .line 3439
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3442
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3443
    instance-of v0, v3, Lcom/android/launcher2/DropTarget;

    move/from16 v19, v0

    if-eqz v19, :cond_188

    .line 3444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$3000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v19

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3438
    :cond_188
    add-int/lit8 v12, v12, 0x1

    goto :goto_15e

    .line 3448
    :cond_18b
    if-lez v4, :cond_19f

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->invalidate()V

    .line 3452
    :cond_19f
    return-void
.end method
