.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2319
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    .line 2321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v1, location:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->deleteCitys(Ljava/util/ArrayList;)I

    .line 2324
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$002(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2325
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 2327
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_45

    .line 2328
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    .line 2336
    :goto_44
    return-void

    .line 2331
    :cond_45
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2332
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    invoke-static {v2, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2502(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2333
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2502(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2334
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_44
.end method
