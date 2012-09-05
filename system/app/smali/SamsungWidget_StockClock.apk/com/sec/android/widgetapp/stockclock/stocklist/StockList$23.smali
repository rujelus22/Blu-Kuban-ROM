.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 2
    .parameter

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2218
    if-nez p2, :cond_38

    .line 2220
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesSymbols:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2227
    :goto_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2228
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2229
    const-string v2, "fullsymbol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2230
    const-string v0, "title"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2231
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2232
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2233
    return-void

    .line 2224
    :cond_38
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesSymbols:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_9
.end method
