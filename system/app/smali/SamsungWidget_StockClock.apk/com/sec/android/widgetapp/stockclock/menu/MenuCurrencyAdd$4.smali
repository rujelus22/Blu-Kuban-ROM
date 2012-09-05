.class Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;
.super Ljava/lang/Object;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyboardVisible(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;Z)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->getSecondItem()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, symbol:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "currency"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selSymbol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setResult(ILandroid/content/Intent;)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->finish()V

    .line 168
    return-void
.end method
