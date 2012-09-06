.class public Lcom/google/android/apps/googlevoice/VoiceApplication;
.super Landroid/app/Application;
.source "VoiceApplication.java"


# static fields
.field public static final ENABLE_ASYNCHRONOUS_SMS:Z = true

.field public static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field public static final GOOGLE_VOICE_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final POTENTIALLY_HIDE_APPLICATION:Z = false

.field public static final PROPERTIES_FILE_NAME:Ljava/lang/String; = "files/googlevoice.prop"

.field static final UPDATE_PUSH:Z = true

.field private static callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;

.field private static clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private static dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private static fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

.field private static hasConstructedDependencyResolver:Z

.field private static module:Lcom/google/android/apps/googlevoice/modules/Module;

.field public static modulesEnabled:Z

.field private static startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

.field private static voiceApplication:Lcom/google/android/apps/googlevoice/VoiceApplication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->modulesEnabled:Z

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->hasConstructedDependencyResolver:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->setStatusNotConfigured()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->setStatusConfigured()V

    return-void
.end method

.method public static declared-synchronized clearDependencyResolver()V
    .registers 3

    .prologue
    .line 166
    const-class v1, Lcom/google/android/apps/googlevoice/VoiceApplication;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->hasConstructedDependencyResolver:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_8
    const-string v2, "shouldn\'t have constructed dependency resolver"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 168
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const-string v2, "dependencyResolver"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    .line 170
    monitor-exit v1

    return-void

    .line 166
    :cond_19
    const/4 v0, 0x0

    goto :goto_8

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized createDependencies(Lcom/google/android/apps/googlevoice/VoiceApplication;)V
    .registers 4
    .parameter "application"

    .prologue
    .line 135
    const-class v1, Lcom/google/android/apps/googlevoice/VoiceApplication;

    monitor-enter v1

    :try_start_3
    const-string v0, "application"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->voiceApplication:Lcom/google/android/apps/googlevoice/VoiceApplication;

    const-string v2, "voiceApplication"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createFileFactory(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/FileFactory;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    .line 138
    invoke-static {}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 139
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createStartupLogger(Lcom/google/android/apps/common/time/ClockUtils;)Lcom/google/android/apps/googlevoice/StartupLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/modules/Modules;->loadModules(Landroid/content/res/Resources;)Lcom/google/android/apps/googlevoice/modules/Module;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->module:Lcom/google/android/apps/googlevoice/modules/Module;

    .line 141
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->setVoiceApplication(Lcom/google/android/apps/googlevoice/VoiceApplication;)V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    .line 142
    monitor-exit v1

    return-void

    .line 135
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ensureInterceptorSettings(Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 3
    .parameter "voicePreferences"

    .prologue
    .line 110
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v0, v1, :cond_1c

    .line 111
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->ensureInterceptorStateForAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 113
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 114
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->ensureInterceptorStateForMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 117
    :cond_1c
    return-void
.end method

.method public static declared-synchronized getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 7

    .prologue
    .line 187
    const-class v6, Lcom/google/android/apps/googlevoice/VoiceApplication;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    if-nez v0, :cond_49

    .line 188
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->voiceApplication:Lcom/google/android/apps/googlevoice/VoiceApplication;

    const-string v1, "voiceApplication"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    const-string v1, "fileFactory"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    const-string v1, "clockUtils"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    const-string v1, "startupLogger"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->module:Lcom/google/android/apps/googlevoice/modules/Module;

    const-string v1, "module"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/googlevoice/VoiceApplication;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    sget-object v3, Lcom/google/android/apps/googlevoice/VoiceApplication;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    sget-object v4, Lcom/google/android/apps/googlevoice/VoiceApplication;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    sget-object v5, Lcom/google/android/apps/googlevoice/VoiceApplication;->module:Lcom/google/android/apps/googlevoice/modules/Module;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/FileFactory;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/StartupLogger;Lcom/google/android/apps/googlevoice/modules/Module;)V

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->setDependencyResolver(Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->hasConstructedDependencyResolver:Z

    .line 197
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->registerSignInStatusListener()V

    .line 201
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->module:Lcom/google/android/apps/googlevoice/modules/Module;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/modules/Module;->onApplicationStarted()V

    .line 203
    :cond_49
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4d

    monitor-exit v6

    return-object v0

    .line 187
    :catchall_4d
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized getInterceptedCallLog(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/InterceptedCallLog;
    .registers 3
    .parameter "context"

    .prologue
    .line 120
    const-class v1, Lcom/google/android/apps/googlevoice/VoiceApplication;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    if-nez v0, :cond_d

    .line 121
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->createFromFile(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    .line 123
    :cond_d
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;
    .registers 1

    .prologue
    .line 277
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->voiceApplication:Lcom/google/android/apps/googlevoice/VoiceApplication;

    return-object v0
.end method

.method public static hasConstructedDependencyResolver()Z
    .registers 1

    .prologue
    .line 269
    sget-boolean v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->hasConstructedDependencyResolver:Z

    return v0
.end method

.method private static registerSignInStatusListener()V
    .registers 4

    .prologue
    .line 207
    sget-object v3, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v1

    .line 211
    .local v1, hasTelephony:Z
    sget-object v3, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsIcsOrLater()Z

    move-result v3

    if-eqz v3, :cond_22

    if-nez v1, :cond_23

    .line 240
    :cond_22
    :goto_22
    return-void

    .line 215
    :cond_23
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v2

    .line 217
    .local v2, signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
    new-instance v3, Lcom/google/android/apps/googlevoice/VoiceApplication$1;

    invoke-direct {v3}, Lcom/google/android/apps/googlevoice/VoiceApplication$1;-><init>()V

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->addListener(Lcom/google/android/apps/googlevoice/SignInStatusListener;)V

    .line 235
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 236
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->setStatusConfigured()V

    goto :goto_22

    .line 238
    :cond_45
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->setStatusNotConfigured()V

    goto :goto_22
.end method

.method public static declared-synchronized setDependencyResolver(Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 4
    .parameter "resolver"

    .prologue
    .line 154
    const-class v1, Lcom/google/android/apps/googlevoice/VoiceApplication;

    monitor-enter v1

    :try_start_3
    const-string v0, "resolver"

    invoke-static {p0, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const-string v2, "dependencyResolver"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sput-object p0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 157
    monitor-exit v1

    return-void

    .line 154
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setStatusConfigured()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 244
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v0

    invoke-interface {v0, v1, v1, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->setStatus(III)V

    .line 248
    return-void
.end method

.method private static setStatusNotConfigured()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 252
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v0

    invoke-interface {v0, v1, v1, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->setStatus(III)V

    .line 256
    return-void
.end method

.method public static setVoiceApplication(Lcom/google/android/apps/googlevoice/VoiceApplication;)V
    .registers 1
    .parameter "voiceApplication"

    .prologue
    .line 273
    sput-object p0, Lcom/google/android/apps/googlevoice/VoiceApplication;->voiceApplication:Lcom/google/android/apps/googlevoice/VoiceApplication;

    .line 274
    return-void
.end method

.method public static updateComponentSettings(Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 9
    .parameter "voicePreferences"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    sget-object v5, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v2

    .line 85
    .local v2, serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    sget-object v5, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v0

    .line 86
    .local v0, componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;
    sget-object v5, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v4

    .line 87
    .local v4, voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;
    sget-object v5, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v4, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v2, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 91
    :cond_2a
    const-class v5, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-interface {v0, v5, v6}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 93
    sget-object v5, Lcom/google/android/apps/googlevoice/VoiceApplication;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShortcutManager()Lcom/google/android/apps/googlevoice/system/ShortcutManager;

    move-result-object v3

    .line 94
    .local v3, shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;
    invoke-static {v1, v3}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->deleteToggleShortcut(Landroid/content/Context;Lcom/google/android/apps/googlevoice/system/ShortcutManager;)V

    .line 97
    const-class v5, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;

    invoke-interface {v0, v5, v6}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 99
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-eq v5, v6, :cond_4a

    .line 100
    sget-object v5, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {p0, v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 106
    .end local v3           #shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;
    :cond_4a
    :goto_4a
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->ensureInterceptorSettings(Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 107
    return-void

    .line 103
    :cond_4e
    const-class v5, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-interface {v0, v5, v7}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 104
    const-class v5, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;

    invoke-interface {v0, v5, v7}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    goto :goto_4a
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->createDependencies(Lcom/google/android/apps/googlevoice/VoiceApplication;)V

    .line 60
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    const-string v1, "files/googlevoice.prop"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/AppProperties;->loadAppSystemProperties(Lcom/google/android/apps/googlevoice/FileFactory;Ljava/lang/String;)V

    .line 62
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_16

    .line 63
    const-string v0, "VoiceApplication.onCreate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 66
    :cond_16
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/StartupLogger;->onStartupBegin()V

    .line 67
    return-void
.end method

.method public onTerminate()V
    .registers 3

    .prologue
    .line 71
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 72
    const-string v0, "VoiceApplication.onTerminate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 74
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->stopService(Landroid/content/Intent;)Z

    .line 75
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->saveVoiceModel()V

    .line 76
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 77
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    if-eqz v0, :cond_26

    .line 78
    sget-object v0, Lcom/google/android/apps/googlevoice/VoiceApplication;->callLog:Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->writeToFile()V

    .line 80
    :cond_26
    return-void
.end method
