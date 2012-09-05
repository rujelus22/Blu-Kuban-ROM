.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;
.super Landroid/app/Activity;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;,
        Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

.field private mBrightnessChange:Z

.field private mBrightnessValue:F

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeekbarValue:I

.field private mSettingItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingList:Landroid/widget/ListView;

.field private mTempFile:Ljava/io/File;

.field private mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    .line 42
    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSeekbarValue:I

    .line 56
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z

    .line 189
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1258
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSeekbarValue:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->resetinit()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->formatIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private formatIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1408
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 1409
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    if-eqz v4, :cond_25

    .line 1410
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1411
    const-string v4, "CradleHomeSettings"

    const-string v5, "wallpaper file ok??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1417
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1418
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1420
    .local v1, height:I
    if-le v3, v1, :cond_78

    move v0, v3

    .line 1421
    .local v0, h:I
    :goto_40
    if-le v3, v1, :cond_7a

    move v2, v1

    .line 1422
    .local v2, w:I
    :goto_43
    const-string v4, "outputX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1423
    const-string v4, "outputY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1424
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1426
    const-string v4, "scale"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1427
    const-string v4, "noFaceDetection"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1428
    const-string v4, "output"

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1429
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    return-void

    .end local v0           #h:I
    .end local v2           #w:I
    :cond_78
    move v0, v1

    .line 1420
    goto :goto_40

    .restart local v0       #h:I
    :cond_7a
    move v2, v3

    .line 1421
    goto :goto_43
.end method

.method private onBtnCheckChanged(IZ)V
    .registers 7
    .parameter "position"
    .parameter "check"

    .prologue
    .line 1219
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

    .line 1220
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1222
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_4e

    .line 1223
    const-string v1, "cradle_weather_statusbar"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1233
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 1234
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 1256
    return-void

    .line 1225
    :cond_4e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5a

    .line 1226
    const-string v1, "cradle_time_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3d

    .line 1228
    :cond_5a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3d

    .line 1229
    const-string v1, "cradle_weather_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3d
.end method

.method private resetinit()V
    .registers 42

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->clear()V

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_wallpaper_type"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 406
    .local v40, wallpaperType:I
    const/4 v2, 0x0

    .line 407
    .local v2, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    packed-switch v40, :pswitch_data_242

    .line 436
    :goto_16
    if-eqz v2, :cond_1c

    .line 437
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 439
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_clock"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 441
    .local v34, currentView:I
    const/4 v6, 0x0

    .line 442
    .local v6, subTitle:Ljava/lang/String;
    packed-switch v34, :pswitch_data_24e

    .line 457
    :goto_2b
    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 459
    .local v3, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_time_display"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 461
    .local v35, isDisplayClock:Z
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 462
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_city"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 465
    .local v10, selectCity:Ljava/lang/String;
    new-instance v7, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 467
    .local v7, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_display"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 469
    .local v36, isDisplayWeather:Z
    move/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 470
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 471
    if-nez v10, :cond_8c

    .line 472
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 479
    :cond_8c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_statusbar"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 481
    .local v37, isHideStatusBar:Z
    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 482
    .local v14, statusBar:Ljava/lang/String;
    if-eqz v37, :cond_23e

    .line 483
    const-string v14, "selected"

    .line 488
    :goto_9f
    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 490
    .local v11, item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 491
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    .line 494
    .local v33, color:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_icon_color"

    move/from16 v0, v33

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 495
    .local v38, sendColor:I
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 496
    .local v18, colorize_icon:Ljava/lang/String;
    new-instance v15, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 498
    .local v15, item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 500
    const-string v22, ""

    .line 501
    .local v22, resetToDefaults:Ljava/lang/String;
    new-instance v19, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 503
    .local v19, item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 504
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 506
    const-string v26, ""

    .line 507
    .local v26, dockSetting:Ljava/lang/String;
    new-instance v23, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v24, p0

    invoke-direct/range {v23 .. v28}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 509
    .local v23, item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 511
    const-string v30, ""

    .line 512
    .local v30, brightness:Ljava/lang/String;
    new-instance v27, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v28, p0

    invoke-direct/range {v27 .. v32}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 514
    .local v27, item9:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 515
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_brightness_value"

    const/high16 v8, 0x42b4

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v39

    .line 545
    .local v39, value:F
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setBrightness(F)V

    .line 547
    return-void

    .line 409
    .end local v3           #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v6           #subTitle:Ljava/lang/String;
    .end local v7           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v10           #selectCity:Ljava/lang/String;
    .end local v11           #item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v14           #statusBar:Ljava/lang/String;
    .end local v15           #item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v18           #colorize_icon:Ljava/lang/String;
    .end local v19           #item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v22           #resetToDefaults:Ljava/lang/String;
    .end local v23           #item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v26           #dockSetting:Ljava/lang/String;
    .end local v27           #item9:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v30           #brightness:Ljava/lang/String;
    .end local v33           #color:I
    .end local v34           #currentView:I
    .end local v35           #isDisplayClock:Z
    .end local v36           #isDisplayWeather:Z
    .end local v37           #isHideStatusBar:Z
    .end local v38           #sendColor:I
    .end local v39           #value:F
    :pswitch_1a9
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00cd

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 412
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_16

    .line 416
    :pswitch_1ca
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00ce

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 423
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_16

    .line 425
    :pswitch_1eb
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 428
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_16

    .line 430
    :pswitch_20c
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 432
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_16

    .line 444
    .restart local v6       #subTitle:Ljava/lang/String;
    .restart local v34       #currentView:I
    :pswitch_224
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 446
    goto/16 :goto_2b

    .line 451
    :pswitch_231
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 453
    goto/16 :goto_2b

    .line 485
    .restart local v3       #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .restart local v7       #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .restart local v10       #selectCity:Ljava/lang/String;
    .restart local v14       #statusBar:Ljava/lang/String;
    .restart local v35       #isDisplayClock:Z
    .restart local v36       #isDisplayWeather:Z
    .restart local v37       #isHideStatusBar:Z
    :cond_23e
    const-string v14, "no"

    goto/16 :goto_9f

    .line 407
    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_1a9
        :pswitch_1ca
        :pswitch_1eb
        :pswitch_20c
    .end packed-switch

    .line 442
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_224
        :pswitch_231
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

    .line 210
    const/4 v1, 0x6

    if-ne p1, v1, :cond_30

    .line 211
    if-ne p2, v2, :cond_2c

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    const v2, 0x7f0b00d0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v1, "cradle_wallpaper_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_28
    :goto_28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 238
    return-void

    .line 219
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setResult(I)V

    goto :goto_28

    .line 222
    :cond_30
    const/4 v1, 0x5

    if-ne p1, v1, :cond_28

    .line 223
    if-ne p2, v2, :cond_59

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_wallpaper"

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v1, "cradle_wallpaper_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v1, "cradle_wallpaper_changed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28

    .line 233
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_59
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setResult(I)V

    goto :goto_28
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v4, 0x7f030018

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setContentView(I)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 69
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_brightness_value"

    const/high16 v6, 0x42b4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 72
    .local v3, value:F
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setBrightness(F)V

    .line 83
    const v4, 0x7f0e00b6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    .line 85
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    if-nez v4, :cond_33

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    .line 89
    :cond_33
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    if-nez v4, :cond_43

    .line 90
    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    const v5, 0x7f030023

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingItem:Ljava/util/ArrayList;

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    .line 94
    :cond_43
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 97
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 98
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    const/high16 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 102
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSettingList:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_90

    .line 171
    const-string v4, "CradleHomeSettings"

    const-string v5, "no wallpaper file??"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :try_start_86
    const-string v4, "wallpaper"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 175
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_90} :catch_a0
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_90} :catch_a5

    .line 183
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_90
    :goto_90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    return-void

    .line 176
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_a0
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_90

    .line 178
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_a5
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_90
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 15
    .parameter "id"

    .prologue
    .line 622
    const/4 v0, -0x1

    .line 625
    .local v0, checkedItem:I
    packed-switch p1, :pswitch_data_15e

    .line 1132
    :pswitch_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v10

    :goto_8
    return-object v10

    .line 629
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03000f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 631
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0e006c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 635
    .local v7, seekBar:Landroid/widget/SeekBar;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 636
    .local v8, twalertdialog2:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b00f2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 638
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 642
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_current_brightness_value"

    const/high16 v12, 0x42b4

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 645
    .local v1, currentBrightness:F
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cralde_current_seekbar_value"

    const/16 v12, -0xa

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 649
    .local v4, currentSeekBarValue:I
    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    .line 652
    iget v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F

    const/high16 v11, 0x42c8

    mul-float/2addr v10, v11

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 655
    .local v6, progressValue:I
    const/16 v10, -0xa

    if-ne v4, v10, :cond_92

    .line 656
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 661
    :goto_5e
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;

    invoke-direct {v10, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 698
    const v10, 0x7f0b00b0

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;

    invoke-direct {v11, p0, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/SeekBar;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    const v10, 0x7f0b00b1

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 746
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$6;

    invoke-direct {v10, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$6;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 761
    new-instance v10, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;

    invoke-direct {v10, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 658
    :cond_92
    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_5e

    .line 804
    .end local v1           #currentBrightness:F
    .end local v4           #currentSeekBarValue:I
    .end local v6           #progressValue:I
    .end local v7           #seekBar:Landroid/widget/SeekBar;
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    .end local v9           #view:Landroid/view/View;
    :pswitch_96
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 805
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00bf

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 807
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_default_dock_mode"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 810
    .local v3, currentDockMode:I
    const v10, 0x7f070001

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 846
    const v10, 0x7f0b00b1

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$9;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$9;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 854
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 857
    .end local v3           #currentDockMode:I
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_c6
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 858
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00bc

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 859
    const v10, 0x7f0b00be

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 860
    const v10, 0x1080027

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 863
    const v10, 0x7f0b00b0

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$10;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 896
    const v10, 0x7f0b00b1

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$11;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$11;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 930
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_f9
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 933
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00ba

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 935
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_current_clock"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 937
    .local v2, currentClock:I
    move v0, v2

    .line 940
    const v10, 0x7f070002

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$12;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$12;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v0, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 985
    const v10, 0x7f0b00b1

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$13;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$13;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 993
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 1021
    .end local v2           #currentClock:I
    .end local v8           #twalertdialog2:Landroid/app/AlertDialog$Builder;
    :pswitch_12a
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1024
    .restart local v8       #twalertdialog2:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b00cc

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1026
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "cradle_wallpaper_type"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1028
    .local v5, currentwallpapertype:I
    const/4 v10, 0x3

    if-ne v5, v10, :cond_142

    .line 1029
    const/4 v5, 0x2

    .line 1032
    :cond_142
    move v0, v5

    .line 1035
    const/high16 v10, 0x7f07

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v0, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1118
    const v10, 0x7f0b00b1

    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$15;

    invoke-direct {v11, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$15;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1126
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_8

    .line 625
    :pswitch_data_15e
    .packed-switch 0x2
        :pswitch_12a
        :pswitch_f9
        :pswitch_4
        :pswitch_c6
        :pswitch_96
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 205
    return-void
.end method

.method protected onResume()V
    .registers 42

    .prologue
    .line 242
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z

    if-eqz v4, :cond_1c

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_brightness_value"

    const/high16 v8, 0x42b4

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v39

    .line 248
    .local v39, value:F
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setBrightness(F)V

    .line 253
    .end local v39           #value:F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->clear()V

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_wallpaper_type"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 261
    .local v40, wallpaperType:I
    const/4 v2, 0x0

    .line 262
    .local v2, item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    packed-switch v40, :pswitch_data_252

    .line 289
    :goto_32
    if-eqz v2, :cond_38

    .line 290
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 292
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_current_clock"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 294
    .local v34, currentView:I
    const/4 v6, 0x0

    .line 295
    .local v6, subTitle:Ljava/lang/String;
    packed-switch v34, :pswitch_data_25e

    .line 310
    :goto_47
    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 312
    .local v3, item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_time_display"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 314
    .local v35, isDisplayClock:Z
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 315
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_city"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, selectCity:Ljava/lang/String;
    new-instance v7, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 321
    .local v7, item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_display"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 323
    .local v36, isDisplayWeather:Z
    move/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 324
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setToggleButtonBackVisbile(Z)V

    .line 325
    if-nez v10, :cond_a8

    .line 326
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 333
    :cond_a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_weather_statusbar"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 335
    .local v37, isHideStatusBar:Z
    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 336
    .local v14, statusBar:Ljava/lang/String;
    if-eqz v37, :cond_b9

    .line 341
    :cond_b9
    const-string v14, ""

    .line 343
    new-instance v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 345
    .local v11, item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 346
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 348
    const/16 v33, 0x0

    .line 349
    .local v33, color:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cradle_icon_color"

    move/from16 v0, v33

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 350
    .local v38, sendColor:I
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, colorize_icon:Ljava/lang/String;
    new-instance v15, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 353
    .local v15, item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 355
    const-string v22, ""

    .line 356
    .local v22, resetToDefaults:Ljava/lang/String;
    new-instance v19, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 358
    .local v19, item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 359
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cralde_dock_mode_setting"

    const-string v8, "Always"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 363
    .local v26, dockSetting:Ljava/lang/String;
    new-instance v23, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v24, p0

    invoke-direct/range {v23 .. v28}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 365
    .local v23, item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 367
    const-string v30, ""

    .line 368
    .local v30, brightness:Ljava/lang/String;
    new-instance v27, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v28, p0

    invoke-direct/range {v27 .. v32}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 370
    .local v27, item9:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitleVisibled(Z)V

    .line 371
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setMoreArrowImageVisible(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->add(Ljava/lang/Object;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 398
    return-void

    .line 264
    .end local v3           #item2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v6           #subTitle:Ljava/lang/String;
    .end local v7           #item4:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v10           #selectCity:Ljava/lang/String;
    .end local v11           #item5:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v14           #statusBar:Ljava/lang/String;
    .end local v15           #item6:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v18           #colorize_icon:Ljava/lang/String;
    .end local v19           #item7:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v22           #resetToDefaults:Ljava/lang/String;
    .end local v23           #item8:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v26           #dockSetting:Ljava/lang/String;
    .end local v27           #item9:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v30           #brightness:Ljava/lang/String;
    .end local v33           #color:I
    .end local v34           #currentView:I
    .end local v35           #isDisplayClock:Z
    .end local v36           #isDisplayWeather:Z
    .end local v37           #isHideStatusBar:Z
    .end local v38           #sendColor:I
    :pswitch_1b4
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00cd

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 267
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 271
    :pswitch_1d5
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00ce

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 275
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 277
    :pswitch_1f6
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 280
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 282
    :pswitch_217
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .end local v2           #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b00cf

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 285
    .restart local v2       #item1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    goto/16 :goto_32

    .line 297
    .restart local v6       #subTitle:Ljava/lang/String;
    .restart local v34       #currentView:I
    :pswitch_238
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    goto/16 :goto_47

    .line 304
    :pswitch_245
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    goto/16 :goto_47

    .line 262
    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_1b4
        :pswitch_1d5
        :pswitch_1f6
        :pswitch_217
    .end packed-switch

    .line 295
    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_238
        :pswitch_245
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "paramView"
    .parameter "paramMotionEvent"

    .prologue
    .line 1493
    const/4 v0, 0x0

    return v0
.end method

.method public selectAccuWeather()V
    .registers 5

    .prologue
    .line 606
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 607
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v2, "SETTING_MODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.accuweather"

    const-string v3, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method public selectDisplayClock()V
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 559
    return-void
.end method

.method public selectDockSetting()V
    .registers 4

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 568
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 570
    return-void
.end method

.method public selectHideStatusBar(Landroid/widget/AdapterView;I)V
    .registers 8
    .parameter "parent"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 591
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    iget-boolean v0, v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 592
    .local v0, isChecked:Z
    const-string v1, ""

    .line 593
    .local v1, statusBar:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 598
    :cond_10
    if-nez v0, :cond_38

    move v2, v3

    :goto_13
    invoke-direct {p0, p2, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onBtnCheckChanged(IZ)V

    .line 599
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    if-nez v0, :cond_3a

    :goto_20
    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 600
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 602
    return-void

    :cond_38
    move v2, v4

    .line 598
    goto :goto_13

    :cond_3a
    move v3, v4

    .line 599
    goto :goto_20
.end method

.method public selectResetToDefaults()V
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 574
    return-void
.end method

.method public selectWallpaperDialog()V
    .registers 2

    .prologue
    .line 554
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 555
    return-void
.end method

.method public selsectBrightness()V
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->showDialog(I)V

    .line 584
    return-void
.end method

.method protected setBrightness(F)V
    .registers 6
    .parameter "value"

    .prologue
    .line 1466
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

    .line 1467
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1468
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1469
    const/high16 v1, 0x437f

    div-float v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1470
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1471
    return-void
.end method
