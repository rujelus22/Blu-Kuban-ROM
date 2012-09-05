.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;
.super Ljava/lang/Object;
.source "MenuChangeOrderCurrency.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->doneRun()V
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
    .line 250
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 252
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->setResult(ILandroid/content/Intent;)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 256
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->mMoveResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->saveFile(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 258
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    return-void
.end method
