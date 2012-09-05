.class Lcom/sec/android/app/twlauncher/AppShortcutZone$3;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 12
    .parameter "view"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_17

    .line 678
    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    move v4, v9

    .line 707
    :cond_16
    :goto_16
    return v4

    .line 682
    :cond_17
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v0

    if-nez v0, :cond_16

    .line 688
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 689
    .local v8, tag:Ljava/lang/Object;
    if-eqz v8, :cond_68

    instance-of v0, v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_68

    move-object v6, v8

    .line 690
    check-cast v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 691
    .local v6, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    .line 692
    .local v7, mode:I
    packed-switch v7, :pswitch_data_92

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v2, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v0, p1, v1, v2, v9}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    .end local v6           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v7           #mode:I
    :cond_68
    :goto_68
    move v4, v9

    .line 707
    goto :goto_16

    .line 694
    .restart local v6       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #mode:I
    :pswitch_6a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v1

    #setter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$202(Lcom/sec/android/app/twlauncher/AppShortcutZone;I)I

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/twlauncher/DragController;->centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    goto :goto_68

    .line 692
    nop

    :pswitch_data_92
    .packed-switch 0x2
        :pswitch_6a
    .end packed-switch
.end method
