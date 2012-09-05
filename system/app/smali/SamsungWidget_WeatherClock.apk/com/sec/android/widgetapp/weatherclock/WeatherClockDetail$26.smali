.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

.field final synthetic val$detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2513
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$location:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2516
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 2518
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2548
    :goto_e
    return-void

    .line 2520
    :cond_f
    const/4 v1, 0x1

    .line 2522
    .local v1, result:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToDetailInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2524
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$location:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v1

    .line 2531
    :goto_2c
    const/4 v2, -0x1

    if-ne v2, v1, :cond_4b

    .line 2533
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setResult(ILandroid/content/Intent;)V

    .line 2534
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    goto :goto_e

    .line 2528
    :cond_3c
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$location:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v1

    goto :goto_2c

    .line 2539
    :cond_4b
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->val$location:Ljava/lang/String;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateMainWeatherInfoTable(Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;Ljava/lang/String;)V

    .line 2540
    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 2542
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getSelectedItemPosition()I

    move-result v0

    .line 2543
    .local v0, index:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2544
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2502(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2545
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2502(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2546
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2547
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSelection(I)V

    goto/16 :goto_e
.end method
