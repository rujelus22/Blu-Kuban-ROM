.class public Lcom/swype/android/settings/SwypeInputMethodSettings;
.super Landroid/preference/PreferenceActivity;
.source "SwypeInputMethodSettings.java"


# static fields
.field private static final ADDITIONAL_VERSION_STR_FILE:Ljava/lang/String; = "versionupdate.txt"

.field private static final DIALOG_ERASE_UDB:I = 0x0

.field private static final DIALOG_VERSION_COPYRIGHT:I = 0x1

.field private static final LANG_EXCLUDED_PREFS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final LOGTAG:Ljava/lang/String; = "SwypeInputMethodSettings"

.field private static final PREF_CONNECT:Ljava/lang/String; = "connect_preference_activity"

.field private static final PREF_ERASE_UDB:Ljava/lang/String; = "erase_udb"

.field private static final PREF_VERSION:Ljava/lang/String; = "version"

.field private static final PREF_WORD_SUGGESTION:Ljava/lang/String; = "WordSuggestionScreen"


# instance fields
.field private app:Lcom/swype/android/inputmethod/SwypeApplication;

.field private configKeyboardIsMovable:Z

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private hasNavigationBar:Z

.field private isCoreStarted:Z

.field private isHapticSupportedByDevice:Z

.field private versionSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    sput-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Arabic"

    new-array v2, v5, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Chinese"

    new-array v2, v7, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "WordSuggestionScreen"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Japanese"

    new-array v2, v7, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "WordSuggestionScreen"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Korean"

    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Persian"

    new-array v2, v5, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Thai"

    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->autoSpaceCheck:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    const-string v1, "Urdu"

    new-array v2, v5, [Ljava/lang/String;

    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->enableAutoCaps:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/settings/SwypeInputMethodSettings;)Lcom/swype/android/jni/SwypeCore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    return-object v0
.end method

.method private getVersionString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 381
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :try_start_6
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "files/versionupdate.txt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_3e

    move-result-object v1

    .line 391
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 392
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_39

    move-result-object v0

    .line 395
    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 400
    :goto_38
    return-object v0

    .line 395
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v1

    goto :goto_38
.end method

.method private safeShowDialog(I)V
    .registers 6
    .parameter

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/SwypeInputMethodSettings;->showDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 321
    :goto_3
    return-void

    .line 318
    :catch_4
    move-exception v0

    .line 319
    const-string v1, "SwypeInputMethodSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private startSwypeCore()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 408
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 107
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    .line 108
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isCoreStarted:Z

    .line 111
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-static {p0, v0}, Lcom/swype/android/widget/Themes;->setActivityTheme(Landroid/app/Activity;Lcom/swype/android/jni/SwypeCore;)V

    .line 112
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isHapticSupportedByDevice:Z

    .line 116
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->configKeyboardIsMovable:Z

    .line 118
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->hasNavigationBar:Z

    .line 120
    invoke-direct {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getVersionString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->versionSummary:Ljava/lang/String;

    .line 121
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x104

    const/4 v5, 0x0

    .line 325
    packed-switch p1, :pswitch_data_b4

    move-object v0, v5

    .line 371
    :goto_7
    return-object v0

    .line 327
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/swype/android/settings/SwypeInputMethodSettings$1;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/SwypeInputMethodSettings$1;-><init>(Lcom/swype/android/settings/SwypeInputMethodSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 345
    :pswitch_30
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 346
    const v1, 0x7f030014

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 348
    const v0, 0x7f0d001d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 349
    const v1, 0x7f0d001f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 350
    const v2, 0x7f0d0021

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 352
    iget-object v4, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->versionSummary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSwib()Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_6c

    .line 355
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_6c
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getAttributionText()Ljava/lang/String;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_77

    .line 360
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_7

    .line 325
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_30
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 268
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 270
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSettingsManager()Lcom/swype/android/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager;->saveSettings()V

    .line 272
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->configKeyboardIsMovable:Z

    if-nez v0, :cond_44

    .line 273
    sget-object v0, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 274
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_44

    .line 278
    const/16 v2, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    :cond_44
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 294
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 295
    if-nez v0, :cond_a

    move v0, v3

    .line 312
    :goto_9
    return v0

    .line 298
    :cond_a
    const-string v1, "erase_udb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 299
    invoke-direct {p0, v3}, Lcom/swype/android/settings/SwypeInputMethodSettings;->safeShowDialog(I)V

    move v0, v2

    .line 300
    goto :goto_9

    .line 302
    :cond_17
    const-string v1, "connect_preference_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.settings.ConnectPreferenceActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 306
    goto :goto_9

    .line 308
    :cond_30
    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 309
    invoke-direct {p0, v2}, Lcom/swype/android/settings/SwypeInputMethodSettings;->safeShowDialog(I)V

    move v0, v2

    .line 310
    goto :goto_9

    .line 312
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_9
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 126
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isCoreStarted:Z

    if-nez v0, :cond_f

    .line 127
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isCoreStarted:Z

    .line 130
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 11

    .prologue
    const v9, 0x7f07007b

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 136
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_11

    .line 138
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 141
    :cond_11
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSettingsManager()Lcom/swype/android/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager;->loadSettings()Z

    .line 142
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->initSettings()V

    .line 145
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->addPreferencesFromResource(I)V

    .line 147
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->versionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    const-string v0, "connect_preference_activity"

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_51

    .line 156
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v8}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-nez v0, :cond_111

    .line 158
    :cond_4a
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :cond_51
    :goto_51
    sget-object v0, Lcom/swype/android/settings/SettingsManager$Key;->enableHapticFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/swype/android/settings/SettingsManager$Key;->enableAudioFeedback:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v1}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 166
    sget-object v3, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v3}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 167
    sget-object v4, Lcom/swype/android/settings/SettingsManager$Key;->showWCW:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v4}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 169
    if-eqz v0, :cond_86

    .line 170
    iget-boolean v5, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isHapticSupportedByDevice:Z

    if-nez v5, :cond_11e

    .line 171
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_86
    :goto_86
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->configKeyboardIsMovable:Z

    if-eqz v0, :cond_93

    if-eqz v3, :cond_93

    .line 183
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_93
    if-eqz v1, :cond_a1

    .line 187
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode()Z

    move-result v0

    if-nez v0, :cond_129

    move v0, v6

    :goto_9e
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    :cond_a1
    sget-object v0, Lcom/swype/android/settings/SettingsManager$Key;->showNavigationBar:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_b8

    iget-boolean v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->hasNavigationBar:Z

    if-nez v1, :cond_b8

    .line 192
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_b8
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v6}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    .line 200
    if-eqz v0, :cond_cb

    if-eqz v4, :cond_cb

    .line 201
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_cb
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0, v6}, Lcom/swype/android/inputmethod/SwypeApplication;->getMessageLanguage(Z)Ljava/lang/String;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_12c

    .line 206
    sget-object v0, Lcom/swype/android/settings/SwypeInputMethodSettings;->LANG_EXCLUDED_PREFS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_dd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    move v5, v8

    :goto_fd
    if-ge v5, v1, :cond_dd

    aget-object v6, v0, v5

    .line 209
    invoke-virtual {p0, v6}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 210
    if-eqz v6, :cond_10e

    .line 211
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_10e
    add-int/lit8 v5, v5, 0x1

    goto :goto_fd

    .line 159
    :cond_111
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectBound()Z

    move-result v0

    if-nez v0, :cond_51

    .line 160
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_51

    .line 173
    :cond_11e
    iget-object v5, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v5}, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_86

    :cond_129
    move v0, v8

    .line 187
    goto/16 :goto_9e

    .line 218
    :cond_12c
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isConnect()Z

    move-result v0

    if-nez v0, :cond_16c

    if-eqz v2, :cond_16c

    .line 219
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_13d
    :goto_13d
    sget-object v0, Lcom/swype/android/settings/SettingsManager$Key;->activeDisplay:Lcom/swype/android/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/swype/android/settings/SettingsManager$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 225
    if-eqz v0, :cond_18c

    .line 244
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/jni/SwypeCore;->getSetting(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_18d

    .line 246
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 247
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    move v3, v8

    .line 248
    :goto_160
    array-length v4, v2

    if-ge v3, v4, :cond_17a

    .line 249
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_160

    .line 220
    :cond_16c
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectBound()Z

    move-result v0

    if-nez v0, :cond_13d

    if-eqz v2, :cond_13d

    .line 221
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_13d

    .line 251
    :cond_17a
    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 252
    const v3, 0x7f07007c

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 253
    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 264
    :cond_18c
    :goto_18c
    return-void

    .line 256
    :cond_18d
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, v8}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v1

    if-nez v1, :cond_18c

    .line 261
    invoke-virtual {p0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_18c
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 286
    iget-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isCoreStarted:Z

    if-eqz v0, :cond_f

    .line 287
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings;->isCoreStarted:Z

    .line 290
    :cond_f
    return-void
.end method
