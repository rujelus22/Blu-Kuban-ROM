.class Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;
.super Landroid/os/Handler;
.source "TimerSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x3

    .line 903
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$600(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    if-nez v4, :cond_c

    .line 933
    :goto_b
    return-void

    .line 906
    :cond_c
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_58

    .line 930
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_b

    .line 908
    :pswitch_15
    const/4 v1, 0x0

    .line 910
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v5, :cond_3a

    .line 911
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    .line 912
    .local v3, index:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$600(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 913
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 915
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_54

    .line 916
    :cond_31
    add-int/lit8 v4, v2, 0x1

    if-eq v5, v4, :cond_4e

    .line 917
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v6, v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->sendEmptyMessageDelayed(IJ)Z

    .line 925
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_3a
    :goto_3a
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$400(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 926
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    .line 920
    .restart local v0       #ani:Landroid/view/animation/Animation;
    .restart local v3       #index:I
    :cond_4e
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v6, v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3a

    .line 910
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 906
    nop

    :pswitch_data_58
    .packed-switch 0x64
        :pswitch_15
    .end packed-switch
.end method
