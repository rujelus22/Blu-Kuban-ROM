.class Lcom/sec/android/app/camera/Camcorder$4$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camcorder$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder$4;)V
    .registers 2
    .parameter

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2527
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BlackScreen;

    .line 2529
    .local v0, blackScreen:Lcom/sec/android/app/camera/BlackScreen;
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2530
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showMenu()V

    .line 2531
    invoke-virtual {v0}, Lcom/sec/android/app/camera/BlackScreen;->showMenu()V

    .line 2536
    :goto_2b
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0xbd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 2538
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setModeButtonDimmed()V

    .line 2543
    .end local v0           #blackScreen:Lcom/sec/android/app/camera/BlackScreen;
    :cond_61
    :goto_61
    return-void

    .line 2533
    .restart local v0       #blackScreen:Lcom/sec/android/app/camera/BlackScreen;
    :cond_62
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$4$1;->this$1:Lcom/sec/android/app/camera/Camcorder$4;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showMenu()V
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_2b

    .line 2540
    .end local v0           #blackScreen:Lcom/sec/android/app/camera/BlackScreen;
    :catch_6e
    move-exception v1

    goto :goto_61
.end method
