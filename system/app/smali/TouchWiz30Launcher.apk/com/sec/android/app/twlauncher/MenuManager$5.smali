.class Lcom/sec/android/app/twlauncher/MenuManager$5;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 3504
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "aView"

    .prologue
    const/4 v1, 0x0

    .line 3506
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3508
    .local v0, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3528
    :cond_a
    :goto_a
    return v1

    .line 3511
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3515
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-boolean v2, v2, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    if-nez v2, :cond_a

    .line 3520
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showMotionDialog()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3521
    const/4 v1, 0x1

    goto :goto_a

    .line 3528
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v4, v0}, Lcom/sec/android/app/twlauncher/DragController;->centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v4

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    invoke-static {v1, v2, v3, v0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v1

    goto :goto_a
.end method
