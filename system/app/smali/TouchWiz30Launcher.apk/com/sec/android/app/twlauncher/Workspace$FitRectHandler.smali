.class Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;
.super Landroid/os/Handler;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitRectHandler"
.end annotation


# instance fields
.field private initRect:Landroid/graphics/Rect;

.field private mDuration:I

.field private mStartTimeMil:J

.field private targetRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .registers 4
    .parameter

    .prologue
    .line 3757
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3758
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mStartTimeMil:J

    .line 3760
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3757
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 3796
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_be

    .line 3824
    :cond_6
    :goto_6
    return-void

    .line 3798
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$800(Lcom/sec/android/app/twlauncher/Workspace;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3801
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mStartTimeMil:J

    sub-long v0, v2, v4

    .line 3803
    .local v0, timeDiff:J
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_35

    .line 3805
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    #calls: Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$900(Lcom/sec/android/app/twlauncher/Workspace;Landroid/graphics/Rect;)V

    .line 3806
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/twlauncher/Workspace;->access$802(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    .line 3807
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I
    invoke-static {v2, v6}, Lcom/sec/android/app/twlauncher/Workspace;->access$1002(Lcom/sec/android/app/twlauncher/Workspace;I)I

    .line 3808
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_6

    .line 3811
    :cond_35
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 3813
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 3815
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3817
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3819
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3821
    const/16 v2, 0xaa

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 3796
    nop

    :pswitch_data_be
    .packed-switch 0xaa
        :pswitch_7
    .end packed-switch
.end method

.method public startFitting()V
    .registers 6

    .prologue
    const/16 v2, 0x1c2

    .line 3772
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Workspace;->access$600(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    .line 3773
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    .line 3774
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3776
    .local v1, maxDiff:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, diff:I
    if-le v0, v1, :cond_39

    .line 3777
    move v1, v0

    .line 3779
    :cond_39
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_49

    .line 3780
    move v1, v0

    .line 3782
    :cond_49
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_59

    .line 3783
    move v1, v0

    .line 3785
    :cond_59
    if-ge v2, v1, :cond_5c

    move v1, v2

    .end local v1           #maxDiff:I
    :cond_5c
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    .line 3786
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mStartTimeMil:J

    .line 3787
    const/16 v2, 0xaa

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3788
    return-void
.end method
