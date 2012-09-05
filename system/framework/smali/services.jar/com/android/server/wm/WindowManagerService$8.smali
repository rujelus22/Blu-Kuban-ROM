.class Lcom/android/server/wm/WindowManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 10440
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 10443
    const/4 v15, 0x0

    .line 10445
    .local v15, win:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 10446
    .local v9, action:Ljava/lang/String;
    const-string v1, "statusbar_height"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 10447
    .local v14, statusbarHeight:I
    const-string v1, "samsunghandwrite"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 10448
    const-string v1, "M"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/MotionEvent;

    .line 10449
    .local v13, me:Landroid/view/MotionEvent;
    const/4 v12, 0x1

    .line 10450
    .local v12, isM:Z
    if-nez v13, :cond_31

    .line 10451
    const/4 v12, 0x0

    .line 10452
    const-string v1, "N"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .end local v13           #me:Landroid/view/MotionEvent;
    check-cast v13, Landroid/view/MotionEvent;

    .line 10453
    .restart local v13       #me:Landroid/view/MotionEvent;
    if-nez v13, :cond_31

    .line 10484
    .end local v12           #isM:Z
    .end local v13           #me:Landroid/view/MotionEvent;
    :cond_30
    :goto_30
    return-void

    .line 10456
    .restart local v12       #isM:Z
    .restart local v13       #me:Landroid/view/MotionEvent;
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->getWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/wm/WindowState;
    invoke-static {v1, v13}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;Landroid/view/MotionEvent;)Lcom/android/server/wm/WindowState;

    move-result-object v15

    .line 10457
    if-eqz v15, :cond_30

    .line 10460
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v6, v1, v2

    .line 10462
    .local v6, xPos:F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    .line 10471
    .local v7, yPos:F
    if-eqz v12, :cond_30

    .line 10472
    :try_start_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 10474
    .local v10, evDown:Landroid/view/MotionEvent;
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10475
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v2, 0x1

    invoke-interface {v1, v10, v2}, Landroid/view/IWindow;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    .line 10477
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 10479
    .local v11, evUp:Landroid/view/MotionEvent;
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10480
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v2, 0x1

    invoke-interface {v1, v11, v2}, Landroid/view/IWindow;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_8f} :catch_90

    goto :goto_30

    .line 10482
    .end local v10           #evDown:Landroid/view/MotionEvent;
    .end local v11           #evUp:Landroid/view/MotionEvent;
    :catch_90
    move-exception v1

    goto :goto_30
.end method