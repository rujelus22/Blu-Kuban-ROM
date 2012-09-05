.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, -0x1

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, deleteCheckArrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 431
    .local v4, sba:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3a

    .line 432
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 433
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 436
    :cond_3a
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 437
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "deleteLocation"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 438
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8a

    .line 440
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->DisableHandler()V

    .line 442
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->deleteCitys(Ljava/util/ArrayList;)I

    move-result v3

    .line 443
    .local v3, result:I
    if-ne v3, v7, :cond_65

    .line 444
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-virtual {v5, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setResult(I)V

    .line 445
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->finish()V

    .line 486
    .end local v3           #result:I
    :cond_64
    :goto_64
    return-void

    .line 448
    .restart local v3       #result:I
    :cond_65
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeletedialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/app/Dialog;

    move-result-object v5

    if-nez v5, :cond_64

    .line 456
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5$1;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setResult(ILandroid/content/Intent;)V

    .line 462
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->finish()V

    goto :goto_64

    .line 483
    .end local v3           #result:I
    :cond_8a
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setResult(ILandroid/content/Intent;)V

    .line 484
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->finish()V

    goto :goto_64
.end method
