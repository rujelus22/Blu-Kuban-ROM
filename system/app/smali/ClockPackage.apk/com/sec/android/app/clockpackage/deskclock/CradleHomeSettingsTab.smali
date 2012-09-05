.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;
.super Landroid/app/Activity;
.source "CradleHomeSettingsTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;,
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field private mTempFile:Ljava/io/File;

.field private mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    .line 187
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1036
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->resetinit()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->formatIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private formatIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1179
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    .line 1180
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    if-eqz v4, :cond_25

    .line 1181
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1182
    const-string v4, "CradleHomeSettings"

    const-string v5, "wallpaper file ok??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1188
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1189
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1191
    .local v1, height:I
    if-le v3, v1, :cond_78

    move v2, v3

    .line 1192
    .local v2, w:I
    :goto_40
    if-le v3, v1, :cond_7a

    move v0, v1

    .line 1193
    .local v0, h:I
    :goto_43
    const-string v4, "outputX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    const-string v4, "outputY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1196
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1197
    const-string v4, "scale"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1198
    const-string v4, "noFaceDetection"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1199
    const-string v4, "output"

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1200
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    return-void

    .end local v0           #h:I
    .end local v2           #w:I
    :cond_78
    move v2, v1

    .line 1191
    goto :goto_40

    .restart local v2       #w:I
    :cond_7a
    move v0, v3

    .line 1192
    goto :goto_43
.end method

.method private onBtnCheckChanged(IZ)V
    .registers 7
    .parameter "position"
    .parameter "check"

    .prologue
    .line 997
    const-string v1, "CradleHomeSettings"

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

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 999
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1000
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/16 v1, 0xa

    if-ne p1, v1, :cond_50

    .line 1001
    const-string v1, "cradle_weather_statusbar"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1002
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1011
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 1034
    return-void

    .line 1003
    :cond_50
    if-nez p1, :cond_5b

    .line 1004
    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1005
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3f

    .line 1006
    :cond_5b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    .line 1007
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1008
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3f
.end method

.method private resetinit()V
    .registers 36

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->clear()V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_wallpaper_type"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 387
    .local v34, wallpaperType:I
    const/4 v1, 0x0

    .line 388
    .local v1, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    packed-switch v34, :pswitch_data_1f8

    .line 417
    :goto_16
    if-eqz v1, :cond_1c

    .line 418
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 420
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_current_clock"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 422
    .local v29, currentView:I
    const/4 v5, 0x0

    .line 423
    .local v5, subTitle:Ljava/lang/String;
    packed-switch v29, :pswitch_data_204

    .line 438
    :goto_2b
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 440
    .local v2, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_time_display"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 442
    .local v30, isDisplayClock:Z
    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 443
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 444
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_city"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, selectCity:Ljava/lang/String;
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 450
    .local v6, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_display"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 452
    .local v31, isDisplayWeather:Z
    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 453
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 454
    if-nez v9, :cond_90

    .line 455
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 462
    :cond_90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_statusbar"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 464
    .local v32, isHideStatusBar:Z
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    .line 465
    .local v13, statusBar:Ljava/lang/String;
    if-eqz v32, :cond_1f3

    .line 466
    const-string v13, "selected"

    .line 471
    :goto_a3
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 473
    .local v10, item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move/from16 v0, v32

    invoke-virtual {v10, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 474
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    .line 477
    .local v28, color:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_icon_color"

    move/from16 v0, v28

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 478
    .local v33, sendColor:I
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 479
    .local v17, colorize_icon:Ljava/lang/String;
    new-instance v14, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 481
    .local v14, item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 483
    const-string v21, ""

    .line 484
    .local v21, resetToDefaults:Ljava/lang/String;
    new-instance v18, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v23}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 486
    .local v18, item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 487
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 489
    const-string v25, ""

    .line 490
    .local v25, dockSetting:Ljava/lang/String;
    new-instance v22, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v27}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 492
    .local v22, item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 515
    return-void

    .line 390
    .end local v2           #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v5           #subTitle:Ljava/lang/String;
    .end local v6           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v9           #selectCity:Ljava/lang/String;
    .end local v10           #item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v13           #statusBar:Ljava/lang/String;
    .end local v14           #item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v17           #colorize_icon:Ljava/lang/String;
    .end local v18           #item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v21           #resetToDefaults:Ljava/lang/String;
    .end local v22           #item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v25           #dockSetting:Ljava/lang/String;
    .end local v28           #color:I
    .end local v29           #currentView:I
    .end local v30           #isDisplayClock:Z
    .end local v31           #isDisplayWeather:Z
    .end local v32           #isHideStatusBar:Z
    .end local v33           #sendColor:I
    :pswitch_15e
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00cd

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 393
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_16

    .line 400
    :pswitch_17f
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00ce

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 404
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_16

    .line 406
    :pswitch_1a0
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00d0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 409
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_16

    .line 411
    :pswitch_1c1
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 413
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_16

    .line 425
    .restart local v5       #subTitle:Ljava/lang/String;
    .restart local v29       #currentView:I
    :pswitch_1d9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 427
    goto/16 :goto_2b

    .line 432
    :pswitch_1e6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 434
    goto/16 :goto_2b

    .line 468
    .restart local v2       #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .restart local v6       #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .restart local v9       #selectCity:Ljava/lang/String;
    .restart local v13       #statusBar:Ljava/lang/String;
    .restart local v30       #isDisplayClock:Z
    .restart local v31       #isDisplayWeather:Z
    .restart local v32       #isHideStatusBar:Z
    :cond_1f3
    const-string v13, "no"

    goto/16 :goto_a3

    .line 388
    nop

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_15e
        :pswitch_17f
        :pswitch_1a0
        :pswitch_1c1
    .end packed-switch

    .line 423
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_1e6
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 208
    const/4 v1, 0x6

    if-ne p1, v1, :cond_30

    .line 209
    if-ne p2, v2, :cond_2c

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    const v2, 0x7f0b00d0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_28
    :goto_28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    return-void

    .line 217
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->setResult(I)V

    goto :goto_28

    .line 220
    :cond_30
    const/4 v1, 0x5

    if-ne p1, v1, :cond_28

    .line 221
    if-ne p2, v2, :cond_59

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28

    .line 231
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_59
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->setResult(I)V

    goto :goto_28
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->setContentView(I)V

    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    .line 79
    const v3, 0x7f0e00b6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    .line 81
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    if-nez v3, :cond_25

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    .line 85
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    if-nez v3, :cond_35

    .line 86
    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    const v4, 0x7f030023

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    .line 90
    :cond_35
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mSettingList:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    const-string v3, "wallpaper"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_67

    .line 169
    const-string v3, "CradleHomeSettings"

    const-string v4, "no wallpaper file??"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_5d
    const-string v3, "wallpaper"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 173
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_67} :catch_77
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_7c

    .line 181
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_67
    :goto_67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void

    .line 174
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_77
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_67

    .line 176
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_7c
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b00b1

    .line 579
    const/4 v0, -0x1

    .line 581
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_c4

    .line 910
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_c
    return-object v5

    .line 584
    :pswitch_d
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 585
    .local v4, twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00bf

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 587
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_default_dock_mode"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 590
    .local v2, currentDockMode:I
    const v5, 0x7f070001

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_c

    .line 637
    .end local v2           #currentDockMode:I
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_38
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 638
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00bc

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 639
    const v5, 0x7f0b00be

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 640
    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 643
    const v5, 0x7f0b00b0

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_c

    .line 718
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_67
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 723
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_current_clock"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 724
    .local v1, currentClock:I
    move v0, v1

    .line 727
    const v5, 0x7f070002

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 772
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$8;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 780
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_c

    .line 808
    .end local v1           #currentClock:I
    .end local v4           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_94
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 811
    .restart local v4       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00cc

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 813
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_wallpaper_type"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 815
    .local v3, currentwallpapertype:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_ab

    .line 816
    const/4 v3, 0x2

    .line 819
    :cond_ab
    move v0, v3

    .line 822
    const/high16 v5, 0x7f07

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 899
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$10;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$10;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 907
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_c

    .line 581
    :pswitch_data_c4
    .packed-switch 0x2
        :pswitch_94
        :pswitch_67
        :pswitch_8
        :pswitch_38
        :pswitch_d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .registers 28

    .prologue
    .line 241
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->clear()V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_wallpaper_type"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 245
    .local v26, wallpaperType:I
    const/4 v1, 0x0

    .line 246
    .local v1, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    packed-switch v26, :pswitch_data_1ac

    .line 276
    :goto_19
    if-eqz v1, :cond_1f

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 279
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_current_clock"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 281
    .local v20, currentView:I
    const/4 v5, 0x0

    .line 282
    .local v5, subTitle:Ljava/lang/String;
    packed-switch v20, :pswitch_data_1b8

    .line 297
    :goto_2e
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 299
    .local v2, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_time_display"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 301
    .local v22, isDisplayClock:Z
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_city"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, selectCity:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 305
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 307
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 309
    .local v6, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_display"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 311
    .local v23, isDisplayWeather:Z
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 312
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 313
    if-nez v9, :cond_93

    .line 314
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 322
    :cond_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_weather_statusbar"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 324
    .local v24, isHideStatusBar:Z
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v25

    .line 325
    .local v25, statusBar:Ljava/lang/String;
    if-eqz v24, :cond_a4

    .line 346
    :cond_a4
    const-string v13, ""

    .line 347
    .local v13, resetToDefaults:Ljava/lang/String;
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 349
    .local v10, item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 350
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cralde_dock_mode_setting"

    const-string v7, "Always"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 355
    .local v21, dockSetting:Ljava/lang/String;
    new-instance v14, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 357
    .local v14, item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 380
    return-void

    .line 248
    .end local v2           #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v5           #subTitle:Ljava/lang/String;
    .end local v6           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v9           #selectCity:Ljava/lang/String;
    .end local v10           #item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v13           #resetToDefaults:Ljava/lang/String;
    .end local v14           #item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    .end local v20           #currentView:I
    .end local v21           #dockSetting:Ljava/lang/String;
    .end local v22           #isDisplayClock:Z
    .end local v23           #isDisplayWeather:Z
    .end local v24           #isHideStatusBar:Z
    .end local v25           #statusBar:Ljava/lang/String;
    :pswitch_10e
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00cd

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 251
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 258
    :pswitch_12f
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00ce

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 262
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 264
    :pswitch_150
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00d0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 267
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 269
    :pswitch_171
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .end local v1           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b00cf

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 272
    .restart local v1       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    goto/16 :goto_19

    .line 284
    .restart local v5       #subTitle:Ljava/lang/String;
    .restart local v20       #currentView:I
    :pswitch_192
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    goto/16 :goto_2e

    .line 291
    :pswitch_19f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    goto/16 :goto_2e

    .line 246
    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_10e
        :pswitch_12f
        :pswitch_150
        :pswitch_171
    .end packed-switch

    .line 282
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_192
        :pswitch_19f
    .end packed-switch
.end method

.method public selectAccuWeather()V
    .registers 5

    .prologue
    .line 564
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 565
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v2, "SETTING_MODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->startActivity(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method public selectDisplayClock()V
    .registers 2

    .prologue
    .line 526
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->showDialog(I)V

    .line 527
    return-void
.end method

.method public selectDockSetting()V
    .registers 4

    .prologue
    .line 535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->startActivity(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method public selectResetToDefaults()V
    .registers 2

    .prologue
    .line 541
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->showDialog(I)V

    .line 542
    return-void
.end method
