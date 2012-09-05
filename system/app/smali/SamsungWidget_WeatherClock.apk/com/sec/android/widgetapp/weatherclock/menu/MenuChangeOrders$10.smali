.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 875
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mNeedScrollUp:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 876
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mCurrentY:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->getTopScrollMargin()I
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 877
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_33

    .line 878
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollUp()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V

    .line 879
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->scrollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->runnableUp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    :cond_33
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mToPosition:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)I

    move-result v0

    if-nez v0, :cond_44

    .line 882
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 886
    :cond_44
    return-void
.end method
