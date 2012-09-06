.class public Lcom/google/android/apps/googlevoice/BootUpService;
.super Landroid/app/Service;
.source "BootUpService.java"


# static fields
.field private static final COUNTRY_ISO_LENGTH:I = 0x2

.field private static classes:[Ljava/lang/String;

.field private static classesToDisable:[Ljava/lang/String;

.field private static component:Ljava/lang/String;

.field private static supportedCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->supportedCountries:Ljava/util/Set;

    .line 42
    sget-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->supportedCountries:Ljava/util/Set;

    const-string v1, "us"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const-class v0, Lcom/google/android/apps/googlevoice/VoiceApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->component:Ljava/lang/String;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetInboxProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetSettingsProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedProviderForHoneycomb;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedProviderForIcsOrLater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedProviderForPreHoneycomb;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->classes:[Ljava/lang/String;

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    const-class v1, Lcom/google/android/apps/googlevoice/CallInterceptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->classesToDisable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static setEnabled(Landroid/content/pm/PackageManager;Z)V
    .registers 10
    .parameter "packageManager"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 62
    sget-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->classes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_1c

    aget-object v1, v0, v2

    .line 63
    .local v1, className:Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    sget-object v4, Lcom/google/android/apps/googlevoice/BootUpService;->component:Ljava/lang/String;

    invoke-direct {v7, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    move v4, v5

    :goto_14
    invoke-virtual {p0, v7, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    move v4, v6

    .line 63
    goto :goto_14

    .line 69
    .end local v1           #className:Ljava/lang/String;
    :cond_1c
    if-nez p1, :cond_33

    .line 71
    sget-object v0, Lcom/google/android/apps/googlevoice/BootUpService;->classesToDisable:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v3, :cond_33

    aget-object v1, v0, v2

    .line 72
    .restart local v1       #className:Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    sget-object v7, Lcom/google/android/apps/googlevoice/BootUpService;->component:Ljava/lang/String;

    invoke-direct {v4, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 77
    .end local v1           #className:Ljava/lang/String;
    :cond_33
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 88
    const-string v0, "BootUpService: created"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 90
    :cond_c
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 275
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 276
    const-string v0, "BootUpService: destroyed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 278
    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 279
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 13
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v9, 0x1

    .line 94
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 95
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_d

    .line 96
    const-string v6, "BootUpService: started"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 99
    :cond_d
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    .line 100
    .local v1, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/BootUpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, context:Landroid/content/Context;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v5

    .line 102
    .local v5, voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v4

    .line 104
    .local v4, veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 106
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 107
    const-string v6, "package"

    const-class v7, Lcom/google/android/apps/googlevoice/VoiceApplication;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 112
    .local v3, packageUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 113
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_56

    .line 114
    const-string v6, "BootUpReceiver.onReceive(), Package Replaced:"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 115
    const-string v6, "- showing application"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 117
    :cond_56
    invoke-static {v2, v9}, Lcom/google/android/apps/googlevoice/BootUpService;->setEnabled(Landroid/content/pm/PackageManager;Z)V

    .line 119
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_62

    .line 120
    const-string v6, "- updating receiver (en/dis)abled status"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 122
    :cond_62
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->ensureInterceptorStateForMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 123
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->ensureInterceptorStateForAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 221
    .end local v3           #packageUri:Landroid/net/Uri;
    :cond_70
    :goto_70
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v6

    sget-object v7, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v6, v7, :cond_124

    .line 222
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_81

    .line 223
    const-string v6, "BoopUpService: first run completed, starting services:"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 226
    :cond_81
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq v6, v7, :cond_110

    .line 227
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_92

    .line 228
    const-string v6, "BoopUpService: rerouting mode is not None, starting call log service"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 230
    :cond_92
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    :cond_9c
    :goto_9c
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->mayUseDataInBackground()Z

    move-result v6

    if-eqz v6, :cond_11a

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v6

    if-nez v6, :cond_11a

    .line 239
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_b1

    .line 240
    const-string v6, "BoopUpService: application may use background data and is on a polling device, starting update service"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 243
    :cond_b1
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestUpdateServiceStart()V

    .line 252
    :cond_b8
    :goto_b8
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 254
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;->shouldReregister()Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 255
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestInboxNotificationRegistration()V

    .line 260
    :cond_cf
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/VoiceApplication;->updateComponentSettings(Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 267
    :cond_d2
    :goto_d2
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_db

    .line 268
    const-string v6, "BootUpService: stopping"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 270
    :cond_db
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/BootUpService;->stopSelf()V

    .line 271
    :cond_de
    :goto_de
    return-void

    .line 125
    .restart local v3       #packageUri:Landroid/net/Uri;
    :cond_df
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_de

    .line 126
    const-string v6, "BootUpReceiver.onReceive(), other package replaced, exiting"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_de

    .line 130
    .end local v3           #packageUri:Landroid/net/Uri;
    :cond_e9
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 131
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_fe

    .line 132
    const-string v6, "BootUpReceiver.onReceive(), Boot Completed:"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 214
    :cond_fe
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_107

    .line 215
    const-string v6, "- hiding disabled, showing app!"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 217
    :cond_107
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/android/apps/googlevoice/BootUpService;->setEnabled(Landroid/content/pm/PackageManager;Z)V

    goto/16 :goto_70

    .line 232
    :cond_110
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_9c

    .line 233
    const-string v6, "BoopUpService: rerouting mode is None, skipping call log service"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_9c

    .line 245
    :cond_11a
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_b8

    .line 246
    const-string v6, "BoopUpService: application may not use background data or is on a push-notification device, skipping update service"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_b8

    .line 262
    :cond_124
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_d2

    .line 263
    const-string v6, "BoopUpService: first run not completed, not starting any services"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_d2
.end method
