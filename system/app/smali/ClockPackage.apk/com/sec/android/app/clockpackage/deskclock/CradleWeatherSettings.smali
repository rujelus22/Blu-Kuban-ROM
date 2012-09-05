.class public Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;
.super Landroid/app/Activity;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;,
        Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    }
.end annotation


# static fields
.field private static final refresh_time:[I


# instance fields
.field private cityList:[Ljava/lang/CharSequence;

.field private cityListLocation:[Ljava/lang/CharSequence;

.field private mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field public weatherList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->refresh_time:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    .line 151
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 589
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$400()[I
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->refresh_time:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private onBtnCheckChanged(IZ)V
    .registers 7
    .parameter "position"
    .parameter "check"

    .prologue
    .line 576
    const-string v1, "CradleWeatherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtnCheckChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 579
    if-nez p1, :cond_3d

    .line 580
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 581
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_weather_refresh_on"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 582
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->setChecked(Z)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 587
    return-void
.end method


# virtual methods
.method protected getSettingBrighntessCurrentVlaue()F
    .registers 5

    .prologue
    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_9} :catch_c

    move-result v2

    int-to-float v0, v2

    .line 718
    :goto_b
    return v0

    .line 713
    :catch_c
    move-exception v1

    .line 715
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 718
    const/high16 v0, 0x3f80

    goto :goto_b
.end method

.method public getWeatherDataFromDB()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/Controller;->fetchWeatherRows()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 177
    if-nez p1, :cond_d

    .line 178
    if-eq p2, v7, :cond_a

    if-eqz p2, :cond_a

    if-ne p2, v8, :cond_d

    .line 180
    :cond_a
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 185
    :cond_d
    const/4 v6, 0x4

    if-ne p1, v6, :cond_71

    .line 186
    if-eq p2, v7, :cond_16

    if-eqz p2, :cond_16

    if-ne p2, v8, :cond_71

    .line 188
    :cond_16
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    const-string v7, "WEATHER_SELECT_CITY"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/deskclock/Controller;->getInfoAlarmPrefs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, locationName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, cityName:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    if-eqz v6, :cond_28

    .line 193
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 195
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getWeatherDataFromDB()V

    .line 196
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    if-eqz v6, :cond_52

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_52

    .line 197
    const/4 v2, 0x0

    .local v2, i:I
    :goto_38
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_52

    .line 198
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;

    .line 200
    .local v5, weatherItem:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    iget-object v6, v5, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 202
    iget-object v0, v5, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    .line 207
    .end local v2           #i:I
    .end local v5           #weatherItem:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    :cond_52
    if-nez v0, :cond_55

    .line 208
    const/4 v3, 0x0

    .line 210
    :cond_55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 213
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 214
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "cradle_weather_city"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v6, "cradle_weather_city_location"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v6, "cradle_weather_refresh_time"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    .end local v0           #cityName:Ljava/lang/String;
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #locationName:Ljava/lang/String;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_71
    return-void

    .line 197
    .restart local v0       #cityName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #locationName:Ljava/lang/String;
    .restart local v5       #weatherItem:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_38
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v1, "CradleWeatherSettings"

    const-string v2, "setting onCreate~~~~~~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const v1, 0x7f030044

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->setContentView(I)V

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 71
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/deskclock/Controller;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/deskclock/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mController:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    .line 73
    const v1, 0x7f0e00b6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 101
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    if-nez v1, :cond_42

    .line 102
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    const v2, 0x7f030023

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    .line 106
    :cond_42
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mSettingList:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 15
    .parameter "id"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const v10, 0x7f0b00b1

    const/4 v9, 0x1

    .line 334
    const/4 v0, -0x1

    .line 337
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_cc

    .line 508
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v6

    :goto_e
    return-object v6

    .line 339
    :pswitch_f
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v4, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b00c4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 344
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "cradle_weather_city"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, selectCity:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v1, v6, :cond_36

    .line 346
    if-eqz v3, :cond_4d

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v9, :cond_4d

    .line 348
    move v0, v1

    .line 354
    :cond_36
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    new-instance v7, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v4, v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v4, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_e

    .line 345
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 388
    .end local v1           #i:I
    .end local v3           #selectCity:Ljava/lang/String;
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_50
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b00c5

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 393
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "cradle_weather_refresh_time_index"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 396
    new-array v2, v12, [Ljava/lang/CharSequence;

    .line 397
    .local v2, refresh_time_item:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_66
    if-ge v1, v12, :cond_84

    .line 398
    const v6, 0x7f0b00d4

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    sget-object v8, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->refresh_time:[I

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 402
    :cond_84
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v4, v2, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$6;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v4, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_e

    .line 434
    .end local v1           #i:I
    .end local v2           #refresh_time_item:[Ljava/lang/CharSequence;
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_9a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b00c6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "cradle_weather_unit"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 447
    .local v5, weatherUnit:I
    if-nez v5, :cond_c9

    .line 448
    const/4 v0, 0x0

    .line 454
    :goto_b0
    const v6, 0x7f070003

    new-instance v7, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v4, v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$8;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V

    invoke-virtual {v4, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_e

    .line 450
    :cond_c9
    const/4 v0, 0x1

    goto :goto_b0

    .line 337
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_f
        :pswitch_9a
        :pswitch_50
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .registers 23

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->clear()V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_current_brightness_value"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getSettingBrighntessCurrentVlaue()F

    move-result v7

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v19

    .line 228
    .local v19, value:F
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->setBrightness(F)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getWeatherDataFromDB()V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    .line 235
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_6c

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->weatherList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;

    .line 237
    .local v20, weatherItem:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityList:[Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    aput-object v4, v3, v16

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->cityListLocation:[Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    aput-object v4, v3, v16

    .line 235
    add-int/lit8 v16, v16, 0x1

    goto :goto_3d

    .line 241
    .end local v20           #weatherItem:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_city"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, selectCity:Ljava/lang/String;
    if-nez v5, :cond_7b

    .line 243
    const-string v5, "Now Loading....."

    .line 246
    :cond_7b
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 249
    .local v2, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_refresh_time_index"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 250
    .local v17, index:I
    const v3, 0x7f0b00d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->refresh_time:[I

    aget v8, v8, v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, refreshTime:Ljava/lang/String;
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 256
    .local v6, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->setDivideImageVisible(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_refresh_on"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 260
    .local v18, isDisplayWeather:Z
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->setChecked(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_unit"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 277
    .local v21, weatherUnit:I
    if-nez v21, :cond_14e

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00c8

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00c9

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 288
    .local v13, strWeatherUnit:Ljava/lang/String;
    :goto_124
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 290
    .local v10, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 302
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 303
    return-void

    .line 283
    .end local v10           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    .end local v13           #strWeatherUnit:Ljava/lang/String;
    :cond_14e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00c7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00ca

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #strWeatherUnit:Ljava/lang/String;
    goto :goto_124
.end method

.method public selectAutoRefresh()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->showDialog(I)V

    .line 325
    return-void
.end method

.method public selectUnit()V
    .registers 2

    .prologue
    .line 328
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->showDialog(I)V

    .line 329
    return-void
.end method

.method protected setBrightness(F)V
    .registers 6
    .parameter "value"

    .prologue
    .line 700
    const-string v1, "brightness value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightness value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 702
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 703
    const/high16 v1, 0x437f

    div-float v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 705
    return-void
.end method
