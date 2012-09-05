.class Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;
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
    .line 933
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

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

    .line 935
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_5a

    .line 965
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 968
    :goto_b
    return-void

    .line 937
    :pswitch_c
    const/4 v1, 0x0

    .line 939
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v6, :cond_38

    .line 940
    const/4 v3, 0x0

    .line 941
    .local v3, index:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4c

    .line 942
    move v3, v2

    .line 946
    :goto_1b
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 947
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 949
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_57

    .line 950
    :cond_2f
    add-int/lit8 v4, v2, 0x1

    if-eq v6, v4, :cond_51

    .line 951
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->sendEmptyMessageDelayed(IJ)Z

    .line 960
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_38
    :goto_38
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 961
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    .line 944
    .restart local v3       #index:I
    :cond_4c
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_1b

    .line 954
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_51
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_38

    .line 939
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 935
    :pswitch_data_5a
    .packed-switch 0x64
        :pswitch_c
    .end packed-switch
.end method
