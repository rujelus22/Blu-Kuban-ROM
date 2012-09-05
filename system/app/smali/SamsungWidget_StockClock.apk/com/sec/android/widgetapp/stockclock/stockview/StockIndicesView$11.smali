.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 2
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1599
    if-nez p2, :cond_73

    .line 1601
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1602
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_6c

    const-string v1, "450"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1605
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesSymbols:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 1617
    :goto_37
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1618
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1619
    const-string v2, "fullsymbol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    const-string v0, "title"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    const-string v0, "after_add_goto_list"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1622
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1624
    return-void

    .line 1609
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesSymbols:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_37

    .line 1614
    :cond_73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesSymbols:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_37
.end method
