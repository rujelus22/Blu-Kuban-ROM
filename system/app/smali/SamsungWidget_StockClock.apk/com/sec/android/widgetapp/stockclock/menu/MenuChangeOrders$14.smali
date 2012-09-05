.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mNeedScrollDown:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1074
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 1076
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mCurrentY:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->getBottomScrollMargin()I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$3100(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6f

    .line 1078
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 1080
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollDown()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$3200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->runnableDown:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1084
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mItemCount:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$3300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6f

    .line 1086
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders$14;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->mToPosition:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1091
    :cond_6f
    return-void
.end method
