.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;
.super Landroid/os/Handler;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/16 v2, 0x3e7

    const/4 v3, 0x0

    .line 1254
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_24

    .line 1257
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1258
    const-string v1, "flags"

    const/16 v2, -0x7530

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1259
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->startActivity(Landroid/content/Intent;)V

    .line 1260
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 1347
    :cond_23
    :goto_23
    return-void

    .line 1262
    :cond_24
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_40

    .line 1265
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1266
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1267
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_23

    .line 1271
    :cond_40
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_60

    .line 1273
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1274
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const/16 v2, 0x3f7

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19$1;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    goto :goto_23

    .line 1287
    :cond_60
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_13c

    .line 1294
    const-string v0, ""

    const-string v1, "GET_CURRENT_L_OK"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1298
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cityinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1299
    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-direct {v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;-><init>()V

    .line 1300
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "today"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    invoke-virtual {v4, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V

    move v2, v3

    .line 1301
    :goto_93
    const/4 v1, 0x7

    if-ge v2, v1, :cond_b9

    .line 1303
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 1305
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-virtual {v4, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1301
    :cond_b5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_93

    .line 1309
    :cond_b9
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1310
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v5, 0x7f03002a

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2402(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    .line 1315
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1316
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1317
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->notifyDataSetChanged()V

    goto/16 :goto_23

    .line 1320
    :cond_13c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_16a

    .line 1321
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1323
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1336
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_160

    .line 1337
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1339
    :cond_160
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v1, 0x7f09002a

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto/16 :goto_23

    .line 1342
    :cond_16a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_23

    .line 1343
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1344
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(ILandroid/content/Intent;)V

    .line 1345
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    goto/16 :goto_23
.end method
