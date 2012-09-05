.class public Lcom/sec/android/app/clockpackage/ClockPackage;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "ClockPackage.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# static fields
.field public static act:Landroid/app/Activity;

.field public static activity:Landroid/app/Activity;

.field public static ed:Landroid/content/SharedPreferences$Editor;

.field public static filter:Landroid/content/IntentFilter;

.field public static layParams:Landroid/view/ViewGroup$LayoutParams;

.field private static mConfiguration:Landroid/content/res/Configuration;

.field public static mFadeLayout:Landroid/widget/LinearLayout;

.field public static p:Landroid/content/SharedPreferences;

.field public static pref:Landroid/content/SharedPreferences;

.field private static tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# instance fields
.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 67
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 68
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    .line 69
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    .line 70
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 71
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 72
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 73
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 74
    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 236
    new-instance v0, Lcom/sec/android/app/clockpackage/ClockPackage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/ClockPackage$1;-><init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    .line 232
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v0, p1, :cond_d

    .line 183
    :cond_b
    sput-object p1, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    .line 186
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    .line 187
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    if-eqz v0, :cond_26

    .line 188
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    :cond_20
    :goto_20
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->invalidate()V

    .line 201
    return-void

    .line 189
    :cond_26
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    if-eqz v0, :cond_34

    .line 190
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20

    .line 191
    :cond_34
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    if-eqz v0, :cond_42

    .line 192
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20

    .line 193
    :cond_42
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/timer/Timer;

    if-eqz v0, :cond_50

    .line 194
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/timer/Timer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20

    .line 195
    :cond_50
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    if-eqz v0, :cond_20

    .line 196
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->act:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_20
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const v8, 0x7f0b0033

    const v3, 0x7f0b0002

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/ClockPackage;->requestWindowFeature(I)Z

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->initReceiver()V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 88
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 93
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 98
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 104
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const v2, 0x7f0b0078

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0078

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 112
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const v2, 0x7f0b00a7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b00a7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 119
    const-string v0, "ClocksTabStatus"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    .line 121
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    const-string v2, "CurrentTab"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 122
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 123
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocaleChanged"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 128
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    .line 130
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    .line 132
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->layParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 137
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "com.sec.android.app.clockpackage.WORLD_ACTION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_191

    .line 142
    const-string v1, "ADD_CITY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 144
    const/16 v1, 0x64

    if-ne v0, v1, :cond_191

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.clockpackage.world.WORLD_ADDCITY_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/ClockPackage;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    :cond_191
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 220
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->deleteReceiver()V

    .line 222
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 223
    .local v0, actManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne v1, v3, :cond_21

    .line 224
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->removeCity()V

    .line 226
    :cond_21
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 227
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/ClockPackage;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    .line 205
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_49

    .line 206
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 207
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1f

    .line 208
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->activity:Landroid/app/Activity;

    sget-object v1, Lcom/sec/android/app/clockpackage/ClockPackage;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    :cond_1f
    const-string v0, "ClocksTabStatus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    .line 212
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 213
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocaleChanged"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CurrentTab"

    sget-object v2, Lcom/sec/android/app/clockpackage/ClockPackage;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    :cond_49
    return-void
.end method
