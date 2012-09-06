.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/q; = null

.field public static final DEFAULT_REPORT_FIELDS:[Lorg/acra/q; = null

.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = null

.field static final NOTIF_CRASH_ID:I = 0x29a

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field static final RES_DIALOG_COMMENT_PROMPT:Ljava/lang/String; = "RES_DIALOG_COMMENT_PROMPT"

.field static final RES_DIALOG_ICON:Ljava/lang/String; = "RES_DIALOG_ICON"

.field static final RES_DIALOG_OK_TOAST:Ljava/lang/String; = "RES_DIALOG_OK_TOAST"

.field static final RES_DIALOG_TEXT:Ljava/lang/String; = "RES_DIALOG_TEXT"

.field static final RES_DIALOG_TITLE:Ljava/lang/String; = "RES_DIALOG_TITLE"

.field static final RES_NOTIF_ICON:Ljava/lang/String; = "RES_NOTIF_ICON"

.field static final RES_NOTIF_TEXT:Ljava/lang/String; = "RES_NOTIF_TEXT"

.field static final RES_NOTIF_TICKER_TEXT:Ljava/lang/String; = "RES_NOTIF_TICKER_TEXT"

.field static final RES_NOTIF_TITLE:Ljava/lang/String; = "RES_NOTIF_TITLE"

.field static final RES_TOAST_TEXT:Ljava/lang/String; = "RES_TOAST_TEXT"

.field private static mAppStartDate:Landroid/text/format/Time;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static mReportsCrashes:Lorg/acra/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 353
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/acra/q;

    sget-object v1, Lorg/acra/q;->USER_COMMENT:Lorg/acra/q;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/q;->BRAND:Lorg/acra/q;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/q;->STACK_TRACE:Lorg/acra/q;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/q;

    .line 361
    const/16 v0, 0x22

    new-array v0, v0, [Lorg/acra/q;

    sget-object v1, Lorg/acra/q;->REPORT_ID:Lorg/acra/q;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/q;->APP_VERSION_CODE:Lorg/acra/q;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/q;->PACKAGE_NAME:Lorg/acra/q;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/q;->FILE_PATH:Lorg/acra/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/q;->BRAND:Lorg/acra/q;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/q;->PRODUCT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/acra/q;->BUILD:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/acra/q;->TOTAL_MEM_SIZE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/acra/q;->AVAILABLE_MEM_SIZE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/acra/q;->STACK_TRACE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/acra/q;->INITIAL_CONFIGURATION:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/acra/q;->CRASH_CONFIGURATION:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/acra/q;->DISPLAY:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/acra/q;->USER_COMMENT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/acra/q;->USER_EMAIL:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/acra/q;->USER_APP_START_DATE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/acra/q;->USER_CRASH_DATE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/acra/q;->DUMPSYS_MEMINFO:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/acra/q;->DROPBOX:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/acra/q;->LOGCAT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/acra/q;->EVENTSLOG:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/acra/q;->RADIOLOG:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/acra/q;->DEVICE_ID:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/acra/q;->INSTALLATION_ID:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/acra/q;->DEVICE_FEATURES:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/acra/q;->ENVIRONMENT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/acra/q;->SHARED_PREFERENCES:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/acra/q;->SETTINGS_SYSTEM:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/acra/q;->SETTINGS_SECURE:Lorg/acra/q;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 77
    invoke-static {}, Lorg/acra/ACRA;->initAcra()V

    return-void
.end method

.method static checkCrashResources()V
    .registers 2

    .prologue
    .line 304
    sget-object v0, Lorg/acra/b;->a:[I

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->c()Lorg/acra/r;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 319
    :cond_11
    return-void

    .line 306
    :pswitch_12
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->n()I

    move-result v0

    if-nez v0, :cond_11

    .line 307
    new-instance v0, Lorg/acra/c;

    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_22
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->l()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->m()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->k()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->h()I

    move-result v0

    if-nez v0, :cond_11

    .line 314
    :cond_42
    new-instance v0, Lorg/acra/c;

    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_22
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 331
    const-string v0, ""

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 332
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieve SharedPreferences "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    :goto_3a
    return-object v0

    .line 336
    :cond_3b
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Retrieve application default SharedPreferences."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_3a
.end method

.method public static getConfig()Lorg/acra/a/a;
    .registers 1

    .prologue
    .line 346
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 186
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 187
    sput-object v0, Lorg/acra/ACRA;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 189
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lorg/acra/a/a;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/a/a;

    .line 190
    sput-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    if-eqz v0, :cond_67

    .line 192
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 193
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Set OnSharedPreferenceChangeListener."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Lorg/acra/a;

    invoke-direct {v0}, Lorg/acra/a;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 229
    :try_start_30
    const-string v4, "acra.disable"

    const-string v0, "acra.enable"

    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v2

    :goto_3c
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_6a

    move-result v0

    .line 234
    :goto_40
    if-eqz v0, :cond_6d

    .line 235
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is disabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_62
    sget-object v0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    :cond_67
    return-void

    :cond_68
    move v0, v1

    .line 229
    goto :goto_3c

    :catch_6a
    move-exception v0

    move v0, v1

    goto :goto_40

    .line 238
    :cond_6d
    :try_start_6d
    invoke-static {}, Lorg/acra/ACRA;->initAcra()V
    :try_end_70
    .catch Lorg/acra/c; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_62

    .line 239
    :catch_71
    move-exception v0

    .line 240
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62
.end method

.method private static initAcra()V
    .registers 4

    .prologue
    .line 257
    invoke-static {}, Lorg/acra/ACRA;->checkCrashResources()V

    .line 258
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is enabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intializing..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 262
    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->c()Lorg/acra/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/r;)V

    .line 263
    sget-object v1, Lorg/acra/ACRA;->mAppStartDate:Landroid/text/format/Time;

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Landroid/text/format/Time;)V

    .line 265
    const-string v1, ""

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 266
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v1, Lorg/acra/b/a;

    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lorg/acra/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/b/e;)V

    .line 297
    :cond_6b
    :goto_6b
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->c()V

    .line 301
    return-void

    .line 271
    :cond_78
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_6b

    .line 273
    const-string v2, "android.permission.INTERNET"

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_dc

    .line 277
    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b3

    const-string v1, ""

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 278
    new-instance v1, Lorg/acra/b/d;

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/acra/b/d;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/b/e;)V

    goto :goto_6b

    .line 282
    :cond_b3
    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    const-string v1, ""

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 283
    new-instance v1, Lorg/acra/b/b;

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/acra/b/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/b/e;)V

    goto :goto_6b

    .line 287
    :cond_dc
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be granted permission android.permission.INTERNET if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b
.end method
