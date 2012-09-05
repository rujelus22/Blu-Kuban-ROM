.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 15
    .parameter "aView"

    .prologue
    .line 646
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    if-nez v0, :cond_6

    .line 647
    const/4 v0, 0x0

    .line 699
    :goto_5
    return v0

    .line 649
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAppWidgetPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    .line 651
    const/4 v0, 0x1

    goto :goto_5

    :cond_1e
    move-object v7, p1

    .line 654
    check-cast v7, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    .line 655
    .local v7, item:Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getDragView()Landroid/view/View;

    move-result-object v1

    .line 657
    .local v1, view:Landroid/view/View;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setPhantom()V

    .line 659
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->isSamsungAppWidget()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 660
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 661
    .local v6, info:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v8, 0x0

    .line 662
    .local v8, itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    iget-object v0, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.widgetapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 663
    new-instance v8, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .end local v8           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v6, v4, v5, v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V

    .line 668
    .restart local v8       #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :goto_5e
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v8}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 669
    .local v3, dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v5, v1}, Lcom/sec/android/app/twlauncher/DragController;->centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v4, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->updateDragInfo(II)V

    .line 699
    .end local v6           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :goto_86
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 666
    .end local v3           #dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    .restart local v6       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v8       #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :cond_89
    new-instance v8, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .end local v8           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    invoke-direct {v8, v6}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .restart local v8       #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    goto :goto_5e

    .line 673
    .end local v6           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :cond_8f
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getSamsungAppWidgetInfo()Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v9

    .line 674
    .local v9, samsungItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v10

    .line 684
    .local v10, samsungManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v11

    .line 687
    .local v11, widgetId:J
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v11, v12}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v6

    .line 690
    .local v6, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 691
    .restart local v3       #dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v5, v1}, Lcom/sec/android/app/twlauncher/DragController;->centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->updateDragInfo(II)V

    goto :goto_86
.end method
