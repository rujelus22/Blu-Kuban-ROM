.class Lcom/android/phone/IncomingCallWidget$Handle$2;
.super Landroid/os/Handler;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

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

    .line 486
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->DBG:Z
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v5, "handleMessage"

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 487
    :cond_16
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_64

    .line 515
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 518
    :goto_1e
    return-void

    .line 489
    :pswitch_1f
    const/4 v1, 0x0

    .line 491
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v6, :cond_4b

    .line 492
    const/4 v3, 0x0

    .line 493
    .local v3, index:I
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$300(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_55

    .line 494
    move v3, v2

    .line 498
    :goto_2e
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$400(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 499
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 500
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_60

    .line 501
    :cond_42
    add-int/lit8 v4, v2, 0x1

    if-eq v6, v4, :cond_5a

    .line 502
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_4b
    :goto_4b
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$500(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1e

    .line 496
    .restart local v3       #index:I
    :cond_55
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_2e

    .line 505
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_5a
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4b

    .line 491
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 487
    nop

    :pswitch_data_64
    .packed-switch 0x64
        :pswitch_1f
    .end packed-switch
.end method
