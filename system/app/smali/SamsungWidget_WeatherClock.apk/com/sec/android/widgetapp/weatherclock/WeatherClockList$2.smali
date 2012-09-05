.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;
.super Ljava/lang/Object;
.source "WeatherClockList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/high16 v9, 0x2400

    const/4 v8, 0x1

    const/16 v7, 0x5207

    const/16 v6, -0x3e7

    .line 152
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->headerscount:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)I

    move-result v0

    sub-int v1, p3, v0

    .line 153
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 154
    const-string v3, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sLastCity : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->needRefresh()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 157
    invoke-static {v8}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->setRefresh(Z)V

    .line 159
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v0, "appWidgetId"

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v4, "select_city"

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v4, "select_city_name"

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDefaultCity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDefaultLocation(Landroid/content/Context;Ljava/lang/String;)Z

    .line 165
    const-string v4, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sLastCity : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0, v8, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setResult(ILandroid/content/Intent;)V

    .line 171
    :cond_11b
    const-string v0, "flags"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xbb7

    if-ne v0, v3, :cond_162

    .line 173
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 174
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sLastCity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->finish()V

    .line 201
    :cond_161
    :goto_161
    return-void

    .line 179
    :cond_162
    const-string v0, "flags"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_1b8

    .line 181
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 182
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sLastCity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v1, v0, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->finish()V

    goto :goto_161

    .line 190
    :cond_1b8
    const-string v0, "flags"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x658f

    if-ne v0, v2, :cond_161

    .line 192
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 193
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sLastCity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v1, v0, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->finish()V

    goto/16 :goto_161
.end method
