.class Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;
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
    .line 862
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x3

    .line 865
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_5a

    .line 894
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 897
    :goto_b
    return-void

    .line 867
    :pswitch_c
    const/4 v1, 0x0

    .line 869
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v6, :cond_38

    .line 870
    const/4 v3, 0x0

    .line 871
    .local v3, index:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$200(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4c

    .line 872
    move v3, v2

    .line 876
    :goto_1b
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$300(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 877
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 879
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_57

    .line 880
    :cond_2f
    add-int/lit8 v4, v2, 0x1

    if-eq v6, v4, :cond_51

    .line 881
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    .line 889
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_38
    :goto_38
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$400(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 890
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->this$1:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    .line 874
    .restart local v3       #index:I
    :cond_4c
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_1b

    .line 884
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_51
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_38

    .line 869
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 865
    :pswitch_data_5a
    .packed-switch 0x64
        :pswitch_c
    .end packed-switch
.end method
