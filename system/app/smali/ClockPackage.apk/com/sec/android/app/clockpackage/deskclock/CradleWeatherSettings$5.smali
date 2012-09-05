.class Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    iget-object v2, v2, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_weather_refresh_time_index"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    .line 412
    .local v1, item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    const v3, 0x7f0b00d4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$400()[I

    move-result-object v4

    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 418
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->removeDialog(I)V

    .line 419
    return-void
.end method
