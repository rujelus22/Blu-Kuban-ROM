.class Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;
.super Landroid/os/Handler;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

.field final synthetic val$exchange:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$symbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$symbol:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$exchange:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, -0x1

    .line 734
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IDLE_LAUNCHED_MENUADD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 736
    const-string v1, ""

    const-string v2, "launcher idle"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$symbol:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setCurrentSymbol(Landroid/content/Context;Ljava/lang/String;)V

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.MANUAL_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "stock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v1, "name"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$symbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "DETAIL_CURRENT_SHOWN_STOCK"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$symbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const-string v1, "exchange"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$exchange:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 745
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->finish()V

    .line 759
    :goto_56
    return-void

    .line 750
    .end local v0           #intent:Landroid/content/Intent;
    :cond_57
    const-string v1, ""

    const-string v2, "launcher else"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 752
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "stock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v1, "name"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$symbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "exchange"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->val$exchange:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 757
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->finish()V

    goto :goto_56
.end method
