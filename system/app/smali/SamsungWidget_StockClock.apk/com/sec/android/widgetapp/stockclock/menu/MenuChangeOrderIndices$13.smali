.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;
.super Ljava/lang/Object;
.source "MenuChangeOrderIndices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1048
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mNeedScrollUp:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2600(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1050
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1052
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    iget v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mCurrentY:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getTopScrollMargin()I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2800(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 1054
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_3b

    .line 1056
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollUp()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V

    .line 1057
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->scrollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->runnableUp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1059
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mToPosition:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 1061
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$13;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->access$2700(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1066
    :cond_4c
    return-void
.end method
