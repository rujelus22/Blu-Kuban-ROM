.class Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;
.super Landroid/os/Handler;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

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

    .line 973
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    if-nez v4, :cond_16

    .line 1004
    :cond_15
    :goto_15
    return-void

    .line 976
    :cond_16
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_62

    .line 1001
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_15

    .line 978
    :pswitch_1f
    const/4 v1, 0x0

    .line 980
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v5, :cond_44

    .line 981
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    .line 982
    .local v3, index:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 983
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 985
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 986
    :cond_3b
    add-int/lit8 v4, v2, 0x1

    if-eq v5, v4, :cond_58

    .line 987
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v6, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->sendEmptyMessageDelayed(IJ)Z

    .line 996
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_44
    :goto_44
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 997
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_15

    .line 990
    .restart local v0       #ani:Landroid/view/animation/Animation;
    .restart local v3       #index:I
    :cond_58
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v6, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_44

    .line 980
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 976
    nop

    :pswitch_data_62
    .packed-switch 0x64
        :pswitch_1f
    .end packed-switch
.end method
