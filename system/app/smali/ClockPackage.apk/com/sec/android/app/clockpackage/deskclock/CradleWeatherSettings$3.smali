.class Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;
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
    .line 355
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 358
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 359
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, selectCity:Ljava/lang/String;
    const-string v4, "cradle_weather_city"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, selectLocation:Ljava/lang/String;
    const-string v4, "cradle_weather_city_location"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    .line 369
    .local v1, item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->removeDialog(I)V

    .line 373
    return-void
.end method
