.class Lcom/sec/android/app/minimode/MiniModeService$10;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initWindowEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 11
    .parameter "hasWindowFocus"

    .prologue
    const/16 v7, -0x2710

    .line 878
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z
    invoke-static {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1102(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 882
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 883
    .local v0, displayRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 887
    .local v3, miniAppRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 888
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_cd

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v6, v7, :cond_cd

    .line 900
    :cond_2b
    :goto_2b
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1202(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 910
    :goto_31
    if-eqz p1, :cond_141

    .line 912
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 914
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1500(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5d

    .line 915
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1500(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 918
    :cond_5d
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 919
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1700(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 920
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/minimode/MainView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 960
    :cond_81
    :goto_81
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_bf

    .line 961
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 963
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v8}, Lcom/sec/android/app/minimode/MainView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 965
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v8}, Lcom/sec/android/app/minimode/MainView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 973
    :cond_bf
    :try_start_bf
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_cc} :catch_1bc

    .line 982
    :goto_cc
    return-void

    .line 892
    :cond_cd
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 894
    :cond_e3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v6, v0, v3}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300(Lcom/sec/android/app/minimode/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 896
    .local v4, nextMiniAppRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 897
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 898
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_2b

    .line 902
    .end local v4           #nextMiniAppRect:Landroid/graphics/Rect;
    :cond_108
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v7}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v5

    .line 903
    .local v5, v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 904
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 906
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_31

    .line 931
    .end local v5           #v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_141
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1502(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 932
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 934
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 936
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 937
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 938
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 939
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1700(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 943
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$202(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 944
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 946
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/minimode/MainView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 948
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/minimode/MainView;->postInvalidateDelayed(J)V

    goto/16 :goto_81

    .line 975
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    :catch_1bc
    move-exception v1

    .line 976
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$10;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not attached to window manager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cc
.end method
