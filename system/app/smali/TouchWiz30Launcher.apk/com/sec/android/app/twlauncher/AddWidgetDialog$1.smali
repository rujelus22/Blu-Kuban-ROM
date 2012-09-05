.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 603
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    .line 606
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->isAppWidgetPreviewVisible()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 607
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    .line 641
    :goto_16
    return-void

    :cond_17
    move-object v2, p1

    .line 611
    check-cast v2, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    .line 612
    .local v2, item:Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->isSamsungAppWidget()Z

    move-result v8

    if-nez v8, :cond_46

    .line 613
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 614
    .local v0, i:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 615
    .local v3, itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 638
    .end local v0           #i:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :goto_40
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$108(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)I

    goto :goto_16

    .line 618
    :cond_46
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getSamsungAppWidgetInfo()Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v4

    .line 619
    .local v4, samsungItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    .line 629
    .local v5, samsungManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v6

    .line 631
    .local v6, widgetId:J
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4, v6, v7}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    .line 634
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    #getter for: Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_40
.end method
