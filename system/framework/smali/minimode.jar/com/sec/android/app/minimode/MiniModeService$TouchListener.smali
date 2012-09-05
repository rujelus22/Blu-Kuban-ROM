.class public Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchListener"
.end annotation


# instance fields
.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v8, 0xa

    .line 1594
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1595
    .local v0, action:I
    packed-switch v0, :pswitch_data_7a

    .line 1638
    :cond_9
    :goto_9
    const/4 v7, 0x0

    return v7

    .line 1597
    :pswitch_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosX:I

    .line 1598
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosY:I

    .line 1601
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->startDrag()V
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2100(Lcom/sec/android/app/minimode/MiniModeService;)V

    goto :goto_9

    .line 1604
    :pswitch_1f
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1607
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 1608
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 1610
    .local v6, y:I
    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosX:I

    sub-int v1, v5, v7

    .line 1611
    .local v1, moveX:I
    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosY:I

    sub-int v2, v6, v7

    .line 1613
    .local v2, moveY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v8, :cond_45

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v8, :cond_9

    .line 1614
    :cond_45
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v3, v7, v1

    .line 1615
    .local v3, newX:I
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v4, v7, v2

    .line 1617
    .local v4, newY:I
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1618
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1619
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1621
    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosX:I

    .line 1622
    iput v6, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosY:I

    goto :goto_9

    .line 1630
    .end local v1           #moveX:I
    .end local v2           #moveY:I
    .end local v3           #newX:I
    .end local v4           #newY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_73
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)V

    goto :goto_9

    .line 1595
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_73
        :pswitch_1f
        :pswitch_73
    .end packed-switch
.end method
