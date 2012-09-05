.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;
.super Ljava/lang/Object;
.source "MenuChangeOrderCurrency.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V
    .registers 2
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mNeedScrollDown:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1060
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 1062
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mCurrentY:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getBottomScrollMargin()I
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3300(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6f

    .line 1064
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 1066
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollDown()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3400(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->scrollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->runnableDown:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1070
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mItemCount:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3500(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6f

    .line 1072
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$3000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mToPosition:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1077
    :cond_6f
    return-void
.end method
