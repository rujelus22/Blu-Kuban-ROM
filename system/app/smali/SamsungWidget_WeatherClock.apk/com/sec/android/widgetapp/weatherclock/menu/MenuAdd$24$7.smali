.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V
    .registers 2
    .parameter

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v3, 0x658f

    .line 1941
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1942
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1943
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->sendBroadcast(Landroid/content/Intent;)V

    .line 1945
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 1947
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1949
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1951
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1976
    :cond_65
    :goto_65
    return-void

    .line 1961
    :cond_66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$3100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 1962
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flags"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x59d7

    if-ne v0, v1, :cond_c3

    .line 1964
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1965
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1966
    const-string v1, "flags"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1967
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 1968
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1969
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_65

    .line 1973
    :cond_c3
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    goto :goto_65
.end method
