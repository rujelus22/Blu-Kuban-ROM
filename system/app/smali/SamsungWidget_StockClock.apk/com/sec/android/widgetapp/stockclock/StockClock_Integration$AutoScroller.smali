.class Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;
.super Landroid/os/Handler;
.source "StockClock_Integration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V
    .registers 2
    .parameter

    .prologue
    .line 3721
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3721
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;-><init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x191

    const/16 v5, 0xc9

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 3725
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15c

    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_15c

    .line 3729
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$700()Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->removeMessages(I)V

    .line 3730
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$700()Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->getNextScrollTime()J
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$800(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)J

    move-result-wide v1

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->sendEmptyMessageDelayed(IJ)Z

    .line 3734
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_15d

    .line 3736
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_53

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3738
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXGA_2x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$900(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3741
    :cond_53
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_70

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 3743
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXGA_2x3()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1000(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3746
    :cond_70
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_8f

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3748
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXGA_2x5()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1100(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3751
    :cond_8f
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_aa

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3753
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXGA_4x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1200(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3829
    :cond_aa
    :goto_aa
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_c7

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3831
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXVGA_3x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2400(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3834
    :cond_c7
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_e5

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12e

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 3836
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXVGA_3x2()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3839
    :cond_e5
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_102

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 3841
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXVGA_3x3()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2600(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3844
    :cond_102
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_120

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x130

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 3846
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXVGA_3x4()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2700(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3849
    :cond_120
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_13f

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x131

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 3851
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXVGA_3x5()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2800(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3855
    :cond_13f
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_15c

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 3857
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_WXVGA_5x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2900(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3862
    :cond_15c
    return-void

    .line 3757
    :cond_15d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0x25800

    if-ne v0, v1, :cond_1fd

    .line 3759
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_187

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 3761
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_HVGA_2x2()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1300(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3764
    :cond_187
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_1a2

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 3766
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_HVGA_4x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1400(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3769
    :cond_1a2
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1c0

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x192

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 3771
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_HVGA_4x2()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3774
    :cond_1c0
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1de

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x193

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 3776
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_HVGA_4x3()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1600(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3779
    :cond_1de
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_aa

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x194

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3781
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_HVGA_4x4()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1700(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    goto/16 :goto_aa

    .line 3786
    :cond_1fd
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_218

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_218

    .line 3788
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_4x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1800(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3791
    :cond_218
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_233

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_233

    .line 3793
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_2x1()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$1900(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3797
    :cond_233
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0x25800

    if-ne v0, v1, :cond_2b9

    .line 3799
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_25f

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xca

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 3801
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_2x2()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2000(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3814
    :cond_25f
    :goto_25f
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_27d

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 3816
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_2x4()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2100(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3819
    :cond_27d
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_29a

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x194

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 3821
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_4x4()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2200(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 3824
    :cond_29a
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_aa

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x192

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3826
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_4x2()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2300(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    goto/16 :goto_aa

    .line 3806
    :cond_2b9
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_25f

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xca

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 3808
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutoScroller;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->scroll_2x2()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$2000(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    goto :goto_25f
.end method
