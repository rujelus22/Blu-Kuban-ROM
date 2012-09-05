.class Lcom/sec/android/app/minimode/MiniModeService$13;
.super Landroid/os/Handler;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
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
    .line 1079
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 1082
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_b6

    .line 1130
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1133
    :cond_9
    :goto_9
    return-void

    .line 1085
    :pswitch_a
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_60

    .line 1086
    .local v0, hasFocus:Z
    :goto_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 1088
    .local v2, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_9

    .line 1089
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/sec/android/app/minimode/MiniModeService;->access$800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1096
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v4}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v5

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    invoke-static {v4, v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v3

    .line 1097
    .local v3, v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v4, v4, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v5, v5

    iget v6, v3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1098
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v4, v4, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    iget v6, v3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1100
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v4}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v5, v5, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_9

    .line 1085
    .end local v0           #hasFocus:Z
    .end local v2           #name:Landroid/content/ComponentName;
    .end local v3           #v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_60
    const/4 v0, 0x0

    goto :goto_e

    .line 1106
    :pswitch_62
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/minimode/MiniModeService;->move(II)V

    goto :goto_9

    .line 1112
    :pswitch_6c
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1113
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1114
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1116
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v4, v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$202(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1118
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v4, v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1120
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v4, v4, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v4}, Lcom/sec/android/app/minimode/MainView;->invalidate()V

    goto/16 :goto_9

    .line 1125
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_ae
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService$13;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v5, 0x7

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$700(Lcom/sec/android/app/minimode/MiniModeService;I)V

    goto/16 :goto_9

    .line 1082
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a
        :pswitch_62
        :pswitch_6c
        :pswitch_ae
    .end packed-switch
.end method
