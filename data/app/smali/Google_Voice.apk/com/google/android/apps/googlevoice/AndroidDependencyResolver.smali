.class public Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;
.super Ljava/lang/Object;
.source "AndroidDependencyResolver.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/DependencyResolver;


# static fields
.field public static final LOGGER_SUBCATEGORY_DEFAULT:Ljava/lang/String; = "default"

.field private static final PACKAGE_GSF:Ljava/lang/String; = "com.google.android.gsf"

.field private static final PACKAGE_GTALKSERVICE:Ljava/lang/String; = "com.google.android.apps.gtalkservice"

.field private static callBeginTimestamp:Ljava/lang/Long;


# instance fields
.field private accountHelper:Lcom/google/android/apps/googlevoice/system/AccountHelper;

.field private actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

.field private actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

.field private activityManager:Lcom/google/android/apps/googlevoice/ActivityManager;

.field private addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

.field private applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

.field private authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

.field private backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

.field private callConduits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/CallConduit;",
            ">;"
        }
    .end annotation
.end field

.field private callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

.field private checkinCircularLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

.field private checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

.field private clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

.field private connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

.field private contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

.field private final context:Landroid/content/Context;

.field private contextProxyImpl:Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;

.field private final delegator:Lcom/google/android/apps/googlevoice/util/Delegator;

.field private eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private final fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

.field private gvVvmSyncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

.field private final handler:Landroid/os/Handler;

.field private intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

.field private isVoiceConfigured:Z

.field private localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

.field private lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

.field private final loggersBySubCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/log/GLog;",
            ">;"
        }
    .end annotation
.end field

.field private loginService:Lcom/googlex/common/async/LoginService;

.field private final memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

.field private final module:Lcom/google/android/apps/googlevoice/modules/Module;

.field private notifier:Lcom/google/android/apps/googlevoice/Notifier;

.field private photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

.field private playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

.field private playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

.field private preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

.field private pushNotificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

.field private shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

.field private shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;

.field private shouldProvisionAccount:Z

.field private signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

.field private smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

.field private smsSender:Lcom/google/android/apps/googlevoice/system/AndroidSmsSender;

.field private final startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

.field private syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

.field private taskRunner:Lcom/googlex/common/task/TaskRunner;

.field private taskScheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

.field private tonePlayer:Lcom/google/android/apps/googlevoice/system/TonePlayer;

.field private transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

.field private unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

.field private updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

.field private viewUtils:Lcom/google/android/apps/googlevoice/util/ViewUtils;

.field private voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

.field private final voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

.field private voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

.field private widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

.field private widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 250
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callBeginTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/FileFactory;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/StartupLogger;Lcom/google/android/apps/googlevoice/modules/Module;)V
    .registers 8
    .parameter "context"
    .parameter "fileFactory"
    .parameter "clockUtils"
    .parameter "startupLogger"
    .parameter "module"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->isVoiceConfigured:Z

    .line 229
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    .line 236
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shouldProvisionAccount:Z

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->loggersBySubCategory:Ljava/util/Map;

    .line 242
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    .line 268
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    .line 270
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 271
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    .line 273
    new-instance v0, Lcom/google/android/apps/googlevoice/util/Delegator;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/util/Delegator;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->delegator:Lcom/google/android/apps/googlevoice/util/Delegator;

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->handler:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidVoiceUtil;-><init>(Lcom/google/android/apps/googlevoice/system/VersionHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    if-nez v0, :cond_4a

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 281
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    .line 286
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->accountHelper:Lcom/google/android/apps/googlevoice/system/AccountHelper;

    if-nez v0, :cond_63

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 288
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->accountHelper:Lcom/google/android/apps/googlevoice/system/AccountHelper;

    .line 298
    :cond_63
    :goto_63
    new-instance v0, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    .line 300
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->module:Lcom/google/android/apps/googlevoice/modules/Module;

    .line 301
    return-void

    .line 283
    :cond_6d
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    goto :goto_4a

    .line 289
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 290
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->accountHelper:Lcom/google/android/apps/googlevoice/system/AccountHelper;

    goto :goto_63

    .line 292
    :cond_8b
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AccountHelperFroyoAndLater;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/system/AccountHelperFroyoAndLater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->accountHelper:Lcom/google/android/apps/googlevoice/system/AccountHelper;

    goto :goto_63
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized configureVoiceIfNecessary()V
    .registers 11

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    iget-boolean v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->isVoiceConfigured:Z

    if-nez v7, :cond_95

    .line 305
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->isVoiceConfigured:Z

    .line 308
    new-instance v0, Lcom/googlex/common/android/AndroidConfig;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/googlex/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, config:Lcom/googlex/common/android/AndroidConfig;
    invoke-static {v0}, Lcom/googlex/common/Config;->setConfig(Lcom/googlex/common/Config;)V

    .line 312
    new-instance v6, Lcom/googlex/common/lang/BaseThreadFactory;

    invoke-direct {v6}, Lcom/googlex/common/lang/BaseThreadFactory;-><init>()V

    .line 315
    .local v6, threadFactory:Lcom/googlex/common/lang/BaseThreadFactory;
    new-instance v7, Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v7, v6}, Lcom/googlex/common/task/TaskRunner;-><init>(Lcom/googlex/common/lang/ThreadFactory;)V

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    .line 316
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-virtual {v7}, Lcom/googlex/common/task/TaskRunner;->start()V

    .line 319
    new-instance v1, Lcom/googlex/masf/MobileServiceMux$Configuration;

    invoke-direct {v1}, Lcom/googlex/masf/MobileServiceMux$Configuration;-><init>()V

    .line 320
    .local v1, configuration:Lcom/googlex/masf/MobileServiceMux$Configuration;
    sget-object v7, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_URL:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/googlex/masf/MobileServiceMux$Configuration;->setServerUri(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/system/ApplicationInformation;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/googlex/masf/MobileServiceMux$Configuration;->setApplicationName(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/system/ApplicationInformation;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/googlex/masf/MobileServiceMux$Configuration;->setApplicationVersion(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/system/ApplicationInformation;->getPlatformId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/googlex/masf/MobileServiceMux$Configuration;->setPlatformId(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/system/ApplicationInformation;->getDistributionChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/googlex/masf/MobileServiceMux$Configuration;->setDistributionChannel(Ljava/lang/String;)V

    .line 325
    invoke-static {v1}, Lcom/googlex/masf/MobileServiceMux;->initialize(Lcom/googlex/masf/MobileServiceMux$Configuration;)V

    .line 326
    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->getSingleton()Lcom/googlex/masf/MobileServiceMux;

    move-result-object v4

    .line 329
    .local v4, masfService:Lcom/googlex/masf/MobileServiceMux;
    sget-object v7, Lcom/google/android/apps/googlevoice/AppProperties;->LOGIN_CHANNEL:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginChannel;->parse(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/LoginChannel;

    move-result-object v3

    .line 330
    .local v3, loginChannel:Lcom/google/android/apps/googlevoice/LoginChannel;
    sget-object v7, Lcom/google/android/apps/googlevoice/LoginChannel;->MASF:Lcom/google/android/apps/googlevoice/LoginChannel;

    if-ne v3, v7, :cond_97

    move-object v2, v4

    .line 332
    .local v2, connectionFactory:Lcom/googlex/common/io/HttpConnectionFactory;
    :goto_73
    new-instance v5, Lcom/googlex/common/async/AsyncHttpRequestFactory;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v5, v7, v6, v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory;-><init>(Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/lang/ThreadFactory;Lcom/googlex/common/io/HttpConnectionFactory;)V

    .line 334
    .local v5, requestFactory:Lcom/googlex/common/async/AsyncHttpRequestFactory;
    invoke-virtual {v5}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->start()V

    .line 337
    new-instance v7, Lcom/googlex/common/async/ClientLoginService;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    sget-object v9, Lcom/google/android/apps/googlevoice/AppProperties;->GAIA_URL:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lcom/googlex/common/async/ClientLoginService;-><init>(Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->loginService:Lcom/googlex/common/async/LoginService;

    .line 341
    new-instance v7, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v7, v4, v8}, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;-><init>(Lcom/googlex/masf/MobileServiceMux;Lcom/googlex/common/task/TaskRunner;)V

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    :try_end_95
    .catchall {:try_start_1 .. :try_end_95} :catchall_a0

    .line 343
    .end local v0           #config:Lcom/googlex/common/android/AndroidConfig;
    .end local v1           #configuration:Lcom/googlex/masf/MobileServiceMux$Configuration;
    .end local v2           #connectionFactory:Lcom/googlex/common/io/HttpConnectionFactory;
    .end local v3           #loginChannel:Lcom/google/android/apps/googlevoice/LoginChannel;
    .end local v4           #masfService:Lcom/googlex/masf/MobileServiceMux;
    .end local v5           #requestFactory:Lcom/googlex/common/async/AsyncHttpRequestFactory;
    .end local v6           #threadFactory:Lcom/googlex/common/lang/BaseThreadFactory;
    :cond_95
    monitor-exit p0

    return-void

    .line 330
    .restart local v0       #config:Lcom/googlex/common/android/AndroidConfig;
    .restart local v1       #configuration:Lcom/googlex/masf/MobileServiceMux$Configuration;
    .restart local v3       #loginChannel:Lcom/google/android/apps/googlevoice/LoginChannel;
    .restart local v4       #masfService:Lcom/googlex/masf/MobileServiceMux;
    .restart local v6       #threadFactory:Lcom/googlex/common/lang/BaseThreadFactory;
    :cond_97
    :try_start_97
    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/googlex/common/Config;->getConnectionFactory()Lcom/googlex/common/io/HttpConnectionFactory;
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_a0

    move-result-object v2

    goto :goto_73

    .line 304
    .end local v0           #config:Lcom/googlex/common/android/AndroidConfig;
    .end local v1           #configuration:Lcom/googlex/masf/MobileServiceMux$Configuration;
    .end local v3           #loginChannel:Lcom/google/android/apps/googlevoice/LoginChannel;
    .end local v4           #masfService:Lcom/googlex/masf/MobileServiceMux;
    .end local v6           #threadFactory:Lcom/googlex/common/lang/BaseThreadFactory;
    :catchall_a0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public static createClockUtils()Lcom/google/android/apps/common/time/ClockUtils;
    .registers 1

    .prologue
    .line 981
    new-instance v0, Lcom/google/android/apps/common/time/ClockUtilsImpl;

    invoke-direct {v0}, Lcom/google/android/apps/common/time/ClockUtilsImpl;-><init>()V

    return-object v0
.end method

.method public static createContactApiHelper(Lcom/google/android/apps/googlevoice/system/VersionHelper;)Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    .registers 2
    .parameter "versionHelper"

    .prologue
    .line 1171
    invoke-interface {p0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1172
    new-instance v0, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperDonutAndEarlier;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperDonutAndEarlier;-><init>()V

    .line 1174
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperEclairAndLater;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperEclairAndLater;-><init>()V

    goto :goto_b
.end method

.method public static createFileFactory(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/FileFactory;
    .registers 2
    .parameter "context"

    .prologue
    .line 465
    new-instance v0, Lcom/google/android/apps/googlevoice/FileFactoryImpl;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/FileFactoryImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private declared-synchronized createSmsOutboxManagerAndLocalModelView()V
    .registers 8

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getSmsPersistenceManager()Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/Notifier;Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 1265
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/common/time/ClockUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    .line 1267
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->loadOutboxesFromDatabase(Lcom/google/android/apps/googlevoice/model/LocalModelView;)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->loadConversationMappingsFromDatabase()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 1269
    monitor-exit p0

    return-void

    .line 1263
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createStartupLogger(Lcom/google/android/apps/common/time/ClockUtils;)Lcom/google/android/apps/googlevoice/StartupLogger;
    .registers 2
    .parameter "clockUtils"

    .prologue
    .line 1272
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;-><init>(Lcom/google/android/apps/common/time/ClockUtils;)V

    return-object v0
.end method

.method private static createWakelockFileLog(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/FileFactory;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;
    .registers 8
    .parameter "clockUtils"
    .parameter "fileFactory"

    .prologue
    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->EXTERNAL:Lcom/google/android/apps/googlevoice/FileFactory$Storage;

    invoke-interface {p1, v1}, Lcom/google/android/apps/googlevoice/FileFactory;->getAppsRootDirectory(Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wakelock.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1346
    .local v5, logFileName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;

    const/16 v3, 0x2710

    const/16 v4, 0x2711

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;-><init>(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/FileFactory;IILjava/lang/String;)V

    return-object v0
.end method

.method public static getShadowNumbers(Landroid/content/Context;Lcom/google/android/apps/common/time/ClockUtils;)Lcom/google/android/apps/googlevoice/ShadowNumbers;
    .registers 4
    .parameter "context"
    .parameter "clockUtils"

    .prologue
    .line 990
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;

    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DatabaseUtils;Lcom/google/android/apps/common/time/ClockUtils;)V

    return-object v0
.end method

.method private static declared-synchronized isInHandlingRerouteCall(J)Z
    .registers 8
    .parameter "currentTimestamp"

    .prologue
    const/4 v0, 0x0

    .line 1067
    const-class v1, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callBeginTimestamp:Ljava/lang/Long;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1e

    if-nez v2, :cond_a

    .line 1077
    :cond_8
    :goto_8
    monitor-exit v1

    return v0

    .line 1074
    :cond_a
    :try_start_a
    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callBeginTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1e

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 1075
    const/4 v0, 0x1

    goto :goto_8

    .line 1067
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isPackageAvailable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 6
    .parameter "packageManager"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 814
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 815
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v2

    .line 817
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_c
    return v2

    .line 816
    :catch_d
    move-exception v0

    .line 817
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_c
.end method

.method public static declared-synchronized setIsMakingCall()Z
    .registers 4

    .prologue
    .line 1058
    const-class v3, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1059
    .local v0, currentTimestamp:J
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->isInHandlingRerouteCall(J)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    move-result v2

    if-eqz v2, :cond_14

    .line 1060
    const/4 v2, 0x0

    .line 1063
    :goto_12
    monitor-exit v3

    return v2

    .line 1062
    :cond_14
    :try_start_14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callBeginTimestamp:Ljava/lang/Long;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    .line 1063
    const/4 v2, 0x1

    goto :goto_12

    .line 1058
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private startCallIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "destination"
    .parameter "gateway"

    .prologue
    .line 935
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v0, callIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 937
    .local v2, phoneUri:Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 938
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 939
    if-eqz p2, :cond_47

    .line 940
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string v3, "com.android.phone.extra.GATEWAY_URI"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    .end local v1           #packageName:Ljava/lang/String;
    :cond_47
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 946
    return-void
.end method


# virtual methods
.method public declared-synchronized authenticate(Landroid/app/Activity;I)V
    .registers 6
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 571
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .local v0, loginIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 573
    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.LOGIN_SERVICE"

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUsingLoginService()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.ACCOUNT"

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    :cond_2e
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 578
    monitor-exit p0

    return-void

    .line 571
    .end local v0           #loginIntent:Landroid/content/Intent;
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createActivityProxy(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;
    .registers 3
    .parameter "activity"

    .prologue
    .line 1025
    new-instance v0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 3
    .parameter "messageHandler"

    .prologue
    .line 1003
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageReceiver;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    .line 1004
    .local v0, sender:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-virtual {p1, v0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->setMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageSender;)V

    .line 1005
    return-object p1
.end method

.method public createMessageSender()Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 2

    .prologue
    .line 1015
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createMessageSender(Landroid/os/Handler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    return-object v0
.end method

.method public createMessageSender(Landroid/os/Handler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 3
    .parameter "aHandler"

    .prologue
    .line 1020
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public createMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageReceiver;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 4
    .parameter "receiver"

    .prologue
    .line 1010
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/MessageReceiverAsHandler;

    invoke-direct {v1, p1}, Lcom/google/android/apps/googlevoice/activity/MessageReceiverAsHandler;-><init>(Lcom/google/android/apps/googlevoice/activity/MessageReceiver;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public createRequestIdGenerator()Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
    .registers 3

    .prologue
    .line 1313
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

.method public createUserPresenceHelper(Ljava/lang/Runnable;)Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;
    .registers 5
    .parameter "runnable"

    .prologue
    .line 1318
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;

    new-instance v1, Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxyImpl;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;-><init>(Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public dialNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "destination"
    .parameter "gateway"

    .prologue
    const/4 v2, 0x0

    .line 909
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 911
    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->startCallIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :goto_c
    return-void

    .line 913
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isCdmaPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "+1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 919
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 922
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 924
    invoke-direct {p0, p2, v2}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->startCallIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 928
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->startCallIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public declared-synchronized doneMakingCall()V
    .registers 2

    .prologue
    .line 1085
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callBeginTimestamp:Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1086
    monitor-exit p0

    return-void

    .line 1085
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccountHelper()Lcom/google/android/apps/googlevoice/system/AccountHelper;
    .registers 2

    .prologue
    .line 610
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->accountHelper:Lcom/google/android/apps/googlevoice/system/AccountHelper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActionBarHelper()Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    .registers 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    if-nez v0, :cond_15

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsHoneycombOrLater()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1333
    new-instance v0, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    .line 1338
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    return-object v0

    .line 1335
    :cond_18
    new-instance v0, Lcom/google/android/apps/googlevoice/system/ActionBarHelperPreHoneycomb;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelperPreHoneycomb;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    goto :goto_15
.end method

.method public declared-synchronized getActionModel()Lcom/google/android/apps/googlevoice/model/ActionModel;
    .registers 3

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    if-nez v0, :cond_e

    .line 409
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    .line 411
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 408
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;
    .registers 2

    .prologue
    .line 974
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->activityManager:Lcom/google/android/apps/googlevoice/ActivityManager;

    if-nez v0, :cond_c

    .line 975
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidActivityManager;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/AndroidActivityManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->activityManager:Lcom/google/android/apps/googlevoice/ActivityManager;

    .line 977
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->activityManager:Lcom/google/android/apps/googlevoice/ActivityManager;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 974
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAddAccountManager()Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
    .registers 4

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    if-nez v0, :cond_1c

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1242
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerDonutAndEarlier;

    const-class v1, Lcom/google/android/apps/googlevoice/system/AddAccountManagerDonutAndEarlier;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerDonutAndEarlier;-><init>(Lcom/google/android/apps/common/log/GLog;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    .line 1250
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_30

    monitor-exit p0

    return-object v0

    .line 1245
    :cond_20
    :try_start_20
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    const-class v1, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;-><init>(Lcom/google/android/apps/common/log/GLog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_30

    goto :goto_1c

    .line 1240
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 796
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 797
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 798
    .local v0, androidId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 799
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    :goto_17
    if-nez v0, :cond_20

    .line 806
    const-string v2, "failed to get android ID, faking"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 807
    const-string v0, "F001FACE"

    .line 809
    :cond_20
    return-object v0

    .line 802
    :cond_21
    const-string v2, "android_id"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public declared-synchronized getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;
    .registers 3

    .prologue
    .line 749
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    if-nez v0, :cond_12

    .line 750
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;

    .line 752
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->applicationInformation:Lcom/google/android/apps/googlevoice/system/ApplicationInformation;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 749
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuthenticationHelper()Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    .registers 2

    .prologue
    .line 599
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;
    .registers 2

    .prologue
    .line 1282
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    if-nez v0, :cond_c

    .line 1283
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThreadFactory;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThreadFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    .line 1285
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1282
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCallLogOperations()Lcom/google/android/apps/googlevoice/CallLogOperations;
    .registers 4

    .prologue
    .line 1135
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;

    const-class v1, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/AndroidCallLogOperations;-><init>(Lcom/google/android/apps/common/log/GLog;Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
    .registers 2

    .prologue
    .line 668
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    if-nez v0, :cond_c

    .line 669
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/AndroidCallSetupEventLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    .line 671
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 668
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    .registers 7

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinCircularLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    if-nez v0, :cond_3f

    .line 781
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->LOCAL_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getFileFactory()Lcom/google/android/apps/googlevoice/FileFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->EXTERNAL:Lcom/google/android/apps/googlevoice/FileFactory$Storage;

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/FileFactory;->getAppsRootDirectory(Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/checkin_events.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 784
    .local v5, checkinLogFilePath:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getFileFactory()Lcom/google/android/apps/googlevoice/FileFactory;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v4, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;-><init>(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/FileFactory;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinCircularLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    .line 791
    .end local v5           #checkinLogFilePath:Ljava/lang/String;
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinCircularLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    return-object v0

    .line 788
    :cond_42
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/NullBackedUpCircularLog;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/util/logging/NullBackedUpCircularLog;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinCircularLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    goto :goto_3f
.end method

.method public declared-synchronized getCheckinHelper()Lcom/google/android/apps/googlevoice/CheckinHelper;
    .registers 4

    .prologue
    .line 765
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

    if-nez v0, :cond_20

    .line 767
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->API_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 768
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/CheckinHelperImpl;-><init>(Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;Lcom/google/android/apps/googlevoice/util/logging/CircularLog;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

    .line 774
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2c

    monitor-exit p0

    return-object v0

    .line 771
    :cond_24
    :try_start_24
    new-instance v0, Lcom/google/android/apps/googlevoice/NullCheckinHelper;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/NullCheckinHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_20

    .line 765
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClickToCallHelper()Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;
    .registers 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    if-nez v0, :cond_b

    .line 1357
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    .line 1359
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    return-object v0
.end method

.method public declared-synchronized getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;
    .registers 2

    .prologue
    .line 986
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;
    .registers 6

    .prologue
    .line 1290
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    if-nez v0, :cond_26

    .line 1291
    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->delegator:Lcom/google/android/apps/googlevoice/util/Delegator;

    const-class v3, Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/googlevoice/util/Delegator;->adapt(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;->createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/apps/googlevoice/system/AndroidComponentManager;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/proxy/PackageManagerProxy;Lcom/google/android/apps/googlevoice/BackgroundThread;)V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    .line 1295
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    .line 1290
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConduits()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/CallConduit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callConduits:Ljava/util/List;

    if-nez v0, :cond_19

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callConduits:Ljava/util/List;

    .line 952
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callConduits:Ljava/util/List;

    new-instance v1, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->callConduits:Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    .line 950
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;
    .registers 2

    .prologue
    .line 695
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    if-nez v0, :cond_c

    .line 696
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$3;-><init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    .line 706
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 695
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContactApiHelper()Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    .registers 2

    .prologue
    .line 1164
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    if-nez v0, :cond_f

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createContactApiHelper(Lcom/google/android/apps/googlevoice/system/VersionHelper;)Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    .line 1167
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 1164
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;
    .registers 3

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->contextProxyImpl:Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;

    if-nez v0, :cond_e

    .line 1048
    new-instance v0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->contextProxyImpl:Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;

    .line 1050
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->contextProxyImpl:Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 1047
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDialogManager(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/DialogManager;
    .registers 3
    .parameter "activity"

    .prologue
    .line 716
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidDialogManager;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/googlevoice/AndroidDialogManager;-><init>(Landroid/app/Activity;Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    return-object v0
.end method

.method public declared-synchronized getEventLogger()Lcom/google/android/apps/googlevoice/net/EventLogger;
    .registers 4

    .prologue
    .line 660
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    if-nez v0, :cond_16

    .line 661
    new-instance v0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/common/log/GLog;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 663
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 660
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileFactory()Lcom/google/android/apps/googlevoice/FileFactory;
    .registers 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGvVvmSyncer()Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    .registers 12

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->gvVvmSyncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    if-nez v1, :cond_54

    .line 1365
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v2

    .line 1366
    .local v2, voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    new-instance v0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v3

    const-string v4, "voicemail"

    const-class v1, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;Ljava/lang/String;Lcom/google/android/apps/common/log/GLog;)V

    .line 1370
    .local v0, conversationFetcherImpl:Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;
    new-instance v3, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v7

    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getSyncState()Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    move-result-object v9

    move-object v4, p0

    move-object v5, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/ConversationFetcher;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;Landroid/content/Context;Lcom/google/android/apps/googlevoice/vvm/database/SyncState;)V

    .line 1375
    .local v3, voicemailPhoneCallsGetterImpl:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;
    new-instance v4, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getSyncState()Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/vvm/database/SyncState;)V

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getSyncState()Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v10

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;-><init>(Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/googlevoice/vvm/database/SyncState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->gvVvmSyncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    .line 1383
    .end local v0           #conversationFetcherImpl:Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;
    .end local v2           #voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    .end local v3           #voicemailPhoneCallsGetterImpl:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;
    :cond_54
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->gvVvmSyncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v1

    .line 1364
    :catchall_58
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getIntentFactory()Lcom/google/android/apps/googlevoice/activity/IntentFactory;
    .registers 2

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    if-nez v0, :cond_c

    .line 1091
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/DefaultIntentFactory;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/activity/DefaultIntentFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    .line 1093
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1090
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalModelView()Lcom/google/android/apps/googlevoice/model/LocalModelView;
    .registers 2

    .prologue
    .line 1255
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    if-nez v0, :cond_8

    .line 1256
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createSmsOutboxManagerAndLocalModelView()V

    .line 1258
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 1255
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;
    .registers 6

    .prologue
    .line 1180
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    if-nez v0, :cond_30

    .line 1181
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->WAKE_LOCK_LOGGING:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1182
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getFileFactory()Lcom/google/android/apps/googlevoice/FileFactory;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createWakelockFileLog(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/FileFactory;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;->createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/BackgroundThread;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    .line 1189
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_40

    monitor-exit p0

    return-object v0

    .line 1186
    :cond_34
    :try_start_34
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_40

    goto :goto_30

    .line 1180
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/common/log/GLog;"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getLogger(Ljava/lang/String;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/google/android/apps/common/log/GLog;
    .registers 4
    .parameter "subCategory"

    .prologue
    .line 959
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->loggersBySubCategory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/log/GLog;

    .line 960
    .local v0, logger:Lcom/google/android/apps/common/log/GLog;
    if-nez v0, :cond_19

    .line 961
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;

    .end local v0           #logger:Lcom/google/android/apps/common/log/GLog;
    new-instance v1, Lcom/google/android/apps/googlevoice/util/logging/GLogImpl;

    invoke-direct {v1, p1}, Lcom/google/android/apps/googlevoice/util/logging/GLogImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;-><init>(Lcom/google/android/apps/common/log/GLog;)V

    .line 962
    .restart local v0       #logger:Lcom/google/android/apps/common/log/GLog;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->loggersBySubCategory:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_19
    return-object v0
.end method

.method public getLoginService()Lcom/googlex/common/async/LoginService;
    .registers 2

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->configureVoiceIfNecessary()V

    .line 744
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->loginService:Lcom/googlex/common/async/LoginService;

    return-object v0
.end method

.method public getMediaPlayer()Lcom/google/android/apps/googlevoice/MediaPlayer;
    .registers 3

    .prologue
    .line 711
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidMediaPlayer;-><init>(Z)V

    return-object v0
.end method

.method public getMemoryUtils()Lcom/google/android/apps/googlevoice/util/MemoryUtils;
    .registers 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    return-object v0
.end method

.method public getModule()Lcom/google/android/apps/googlevoice/modules/Module;
    .registers 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->module:Lcom/google/android/apps/googlevoice/modules/Module;

    return-object v0
.end method

.method public declared-synchronized getNotifier()Lcom/google/android/apps/googlevoice/Notifier;
    .registers 7

    .prologue
    .line 500
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    if-nez v0, :cond_1e

    .line 501
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    .line 504
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->notifier:Lcom/google/android/apps/googlevoice/Notifier;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 500
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPhotoHandler()Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;
    .registers 2

    .prologue
    .line 684
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    if-eqz v0, :cond_9

    .line 685
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    .line 690
    :goto_7
    monitor-exit p0

    return-object v0

    .line 687
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 688
    new-instance v0, Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 684
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 690
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    goto :goto_7
.end method

.method public declared-synchronized getPlaybackClock()Lcom/google/android/apps/googlevoice/PlaybackClock;
    .registers 3

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    if-nez v0, :cond_e

    .line 484
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidPlaybackClock;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    .line 486
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 483
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlaybackSeekingTracker(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;
    .registers 3
    .parameter "theContext"

    .prologue
    .line 721
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getPlaybackSpeakerController()Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    .registers 6

    .prologue
    .line 491
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    if-nez v0, :cond_1a

    .line 492
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    .line 495
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 491
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreferenceStore()Lcom/google/android/apps/googlevoice/PreferenceStore;
    .registers 7

    .prologue
    .line 433
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    if-nez v3, :cond_37

    .line 434
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;-><init>(Landroid/content/res/Resources;)V

    .line 435
    .local v1, resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 436
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/google/android/apps/common/reflect/ReflectionHelper;

    invoke-direct {v0}, Lcom/google/android/apps/common/reflect/ReflectionHelper;-><init>()V

    .line 437
    .local v0, reflect:Lcom/google/android/apps/common/reflect/ReflectionHelper;
    const-class v3, Landroid/content/SharedPreferences$Editor;

    const-string v4, "apply"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/apps/common/reflect/ReflectionHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 438
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_30

    .line 439
    const-string v3, "Using PreferenceStoreGingerbreadAndLater"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 441
    :cond_30
    new-instance v3, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreGingerbreadAndLater;-><init>(Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;Landroid/content/SharedPreferences;Lcom/google/android/apps/common/reflect/ReflectionHelper;)V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    .line 450
    .end local v0           #reflect:Lcom/google/android/apps/common/reflect/ReflectionHelper;
    .end local v1           #resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    return-object v3

    .line 444
    .restart local v0       #reflect:Lcom/google/android/apps/common/reflect/ReflectionHelper;
    .restart local v1       #resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;
    .restart local v2       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3a
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_43

    .line 445
    const-string v3, "Using PreferenceStoreFroyoAndEarlier"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 447
    :cond_43
    new-instance v3, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;

    invoke-direct {v3, v1, v2}, Lcom/google/android/apps/googlevoice/system/PreferenceStoreFroyoAndEarlier;-><init>(Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;Landroid/content/SharedPreferences;)V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->preferenceStore:Lcom/google/android/apps/googlevoice/PreferenceStore;

    goto :goto_37
.end method

.method public declared-synchronized getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;
    .registers 2

    .prologue
    .line 757
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->pushNotificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    if-nez v0, :cond_c

    .line 758
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->pushNotificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    .line 760
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->pushNotificationRegistrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 757
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    .registers 5

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    if-nez v1, :cond_19

    .line 1141
    new-instance v0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;)V

    .line 1143
    .local v0, androidServerSettings:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->tryToLoadSettingsFromDatabase()V

    .line 1144
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 1146
    .end local v0           #androidServerSettings:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 1140
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;
    .registers 6

    .prologue
    .line 731
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    if-nez v1, :cond_26

    .line 732
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v1

    const-string v2, "notification"

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getSystemServiceProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    .line 735
    .local v0, notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;
    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidServiceManager;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getIntentFactory()Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/apps/googlevoice/AndroidServiceManager;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory;Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;Z)V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 738
    .end local v0           #notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;
    :cond_26
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v1

    .line 731
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSetupFlowManager()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;
    .registers 2

    .prologue
    .line 1207
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    if-nez v0, :cond_c

    .line 1208
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;

    .line 1210
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->setupFlowManager:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1207
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;
    .registers 3

    .prologue
    .line 995
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    if-nez v0, :cond_11

    .line 996
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getShadowNumbers(Landroid/content/Context;Lcom/google/android/apps/common/time/ClockUtils;)Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    .line 998
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 995
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShortcutManager()Lcom/google/android/apps/googlevoice/system/ShortcutManager;
    .registers 3

    .prologue
    .line 1323
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;

    if-nez v0, :cond_10

    .line 1324
    new-instance v0, Lcom/google/android/apps/googlevoice/system/ShortcutManagerImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/system/ShortcutManagerImpl;-><init>(Lcom/google/android/apps/googlevoice/proxy/ContextProxy;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;

    .line 1326
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 1323
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
    .registers 2

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    if-nez v0, :cond_c

    .line 1233
    new-instance v0, Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    .line 1235
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1232
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    .registers 2

    .prologue
    .line 1215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    if-nez v0, :cond_8

    .line 1216
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->createSmsOutboxManagerAndLocalModelView()V

    .line 1218
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 1215
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSmsPersistenceManager()Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;
    .registers 4

    .prologue
    .line 1223
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    if-nez v0, :cond_12

    .line 1224
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    .line 1227
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 1223
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSmsSender()Lcom/google/android/apps/googlevoice/system/SmsSender;
    .registers 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsSender:Lcom/google/android/apps/googlevoice/system/AndroidSmsSender;

    if-nez v0, :cond_b

    .line 1301
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidSmsSender;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/system/AndroidSmsSender;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsSender:Lcom/google/android/apps/googlevoice/system/AndroidSmsSender;

    .line 1303
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->smsSender:Lcom/google/android/apps/googlevoice/system/AndroidSmsSender;

    return-object v0
.end method

.method public declared-synchronized getStartupLogger()Lcom/google/android/apps/googlevoice/StartupLogger;
    .registers 2

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSyncState()Lcom/google/android/apps/googlevoice/vvm/database/SyncState;
    .registers 3

    .prologue
    .line 1398
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    if-nez v0, :cond_14

    .line 1399
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;

    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    .line 1402
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 1398
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTaskRunner()Lcom/googlex/common/task/TaskRunner;
    .registers 2

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->configureVoiceIfNecessary()V

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    return-object v0
.end method

.method public declared-synchronized getTaskScheduler()Lcom/google/android/apps/googlevoice/TaskScheduler;
    .registers 2

    .prologue
    .line 1034
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskScheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    if-nez v0, :cond_c

    .line 1035
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$4;-><init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskScheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    .line 1042
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->taskScheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1034
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .prologue
    .line 1202
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTonePlayer()Lcom/google/android/apps/googlevoice/system/TonePlayer;
    .registers 2

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->tonePlayer:Lcom/google/android/apps/googlevoice/system/TonePlayer;

    if-nez v0, :cond_c

    .line 1195
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->tonePlayer:Lcom/google/android/apps/googlevoice/system/TonePlayer;

    .line 1197
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->tonePlayer:Lcom/google/android/apps/googlevoice/system/TonePlayer;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1194
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTranscriptPlayer()Lcom/google/android/apps/googlevoice/TranscriptPlayer;
    .registers 3

    .prologue
    .line 475
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    if-nez v0, :cond_10

    .line 476
    new-instance v0, Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getPlaybackClock()Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;-><init>(Lcom/google/android/apps/googlevoice/PlaybackClock;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    .line 478
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 475
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;
    .registers 5

    .prologue
    .line 509
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    if-nez v0, :cond_18

    .line 510
    new-instance v0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;-><init>(Lcom/google/android/apps/googlevoice/Notifier;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    .line 513
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 509
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpdateStateManager()Lcom/google/android/apps/googlevoice/UpdateStateManager;
    .registers 2

    .prologue
    .line 615
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    if-nez v0, :cond_c

    .line 616
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;-><init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    .line 645
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 615
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;
    .registers 2

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    if-nez v0, :cond_c

    .line 1157
    new-instance v0, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/system/SdkVersionHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 1159
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1156
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
    .registers 3

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    if-nez v0, :cond_e

    .line 426
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    .line 428
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 425
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getViewUtils()Lcom/google/android/apps/googlevoice/util/ViewUtils;
    .registers 2

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->viewUtils:Lcom/google/android/apps/googlevoice/util/ViewUtils;

    if-nez v0, :cond_c

    .line 1108
    new-instance v0, Lcom/google/android/apps/googlevoice/util/AndroidViewUtils;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/util/AndroidViewUtils;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->viewUtils:Lcom/google/android/apps/googlevoice/util/ViewUtils;

    .line 1110
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->viewUtils:Lcom/google/android/apps/googlevoice/util/ViewUtils;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1107
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;
    .registers 9

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    if-nez v0, :cond_43

    .line 355
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getActionModel()Lcom/google/android/apps/googlevoice/model/ActionModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getContactApiHelper()Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;-><init>(Lcom/google/android/apps/googlevoice/model/ActionModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/proxy/ContextProxy;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;Lcom/google/android/apps/googlevoice/system/VersionHelper;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->loadFromDatabase()V

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$1;-><init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getModule()Lcom/google/android/apps/googlevoice/modules/Module;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/modules/Module;->onVoiceModelCreated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;

    .line 396
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return-object v0

    .line 353
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 5

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    if-nez v0, :cond_16

    .line 417
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getPreferenceStore()Lcom/google/android/apps/googlevoice/PreferenceStore;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AndroidVoicePreferences;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/PreferenceStore;Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 420
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 416
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVoiceRecordingRequest()Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;
    .registers 5

    .prologue
    .line 726
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;-><init>(Lcom/googlex/common/task/TaskRunner;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    return-object v0
.end method

.method public getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;
    .registers 2

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->configureVoiceIfNecessary()V

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    return-object v0
.end method

.method public getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    return-object v0
.end method

.method public declared-synchronized getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    .registers 2

    .prologue
    .line 1388
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    if-nez v0, :cond_13

    .line 1389
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->createPackageScopedVoicemailProvider(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    .line 1393
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 1388
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidgetRenderer()Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    .registers 7

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    if-nez v2, :cond_47

    .line 1116
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsHoneycombOrLater()Z

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v1, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetManagerHoneycombOrLater;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetManagerHoneycombOrLater;-><init>(Landroid/content/Context;)V

    .line 1119
    .local v1, widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;
    :goto_14
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    if-nez v2, :cond_1b

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 1122
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsHoneycombOrLater()Z

    move-result v2

    if-eqz v2, :cond_56

    new-instance v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;Lcom/google/android/apps/googlevoice/system/VersionHelper;)V

    .line 1126
    .local v0, integratedRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    :goto_2a
    new-instance v2, Lcom/google/android/apps/googlevoice/widget/CombinedWidgetRenderer;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;

    invoke-direct {v5, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;

    invoke-direct {v5, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/widget/CombinedWidgetRenderer;-><init>([Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;)V

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    .line 1130
    .end local v0           #integratedRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    .end local v1           #widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;
    :cond_47
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_53

    monitor-exit p0

    return-object v2

    .line 1116
    :cond_4b
    :try_start_4b
    new-instance v1, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_53

    goto :goto_14

    .line 1115
    :catchall_53
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1122
    .restart local v1       #widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;
    :cond_56
    :try_start_56
    new-instance v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_53

    goto :goto_2a
.end method

.method public declared-synchronized getWidgetState()Lcom/google/android/apps/googlevoice/widget/WidgetState;
    .registers 6

    .prologue
    .line 1098
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    if-nez v0, :cond_1c

    .line 1099
    new-instance v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoiceUtil;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    .line 1102
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 1098
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
    .registers 6
    .parameter "success"
    .parameter "failure"
    .parameter "notify"

    .prologue
    .line 519
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUsingLoginService()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 521
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getAuthenticationHelper()Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_31

    .line 532
    :goto_1a
    monitor-exit p0

    return-void

    .line 524
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAuthToken(Ljava/lang/String;)V

    .line 527
    if-eqz p3, :cond_2d

    .line 528
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/Notifier;->notifyAuthentication()V

    .line 530
    :cond_2d
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_31

    goto :goto_1a

    .line 519
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
    .registers 8
    .parameter "success"
    .parameter "failure"
    .parameter "notify"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 542
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 567
    :goto_d
    return-void

    .line 545
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getCredentials()Lcom/google/android/apps/googlevoice/net/Credentials;

    move-result-object v2

    if-nez v2, :cond_5d

    .line 546
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_26

    .line 548
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    .line 550
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUsingLoginService()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 551
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getAuthenticationHelper()Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto :goto_d

    .line 553
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, authToken:Ljava/lang/String;
    if-eqz v1, :cond_52

    .line 555
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/googlevoice/net/Credentials;

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/googlevoice/net/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/VoiceService;->setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V

    .line 556
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    .line 559
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/Notifier;->notifyAuthentication()V

    .line 560
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    .line 565
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #authToken:Ljava/lang/String;
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d
.end method

.method public declared-synchronized saveVoiceModel()V
    .registers 2

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    if-eqz v0, :cond_a

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveToDatabase()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 404
    :cond_a
    monitor-exit p0

    return-void

    .line 401
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShouldProvisionAccount(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shouldProvisionAccount:Z

    .line 651
    return-void
.end method

.method public declared-synchronized setVoicePreferencesForTest(Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 3
    .parameter "voicePreferences"

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 456
    monitor-exit p0

    return-void

    .line 455
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldProvisionAccount()Z
    .registers 2

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->shouldProvisionAccount:Z

    return v0
.end method

.method public useCredentials(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "account"
    .parameter "authToken"
    .parameter "usingLoginService"

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/net/Credentials;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/googlevoice/net/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V

    .line 583
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccount(Ljava/lang/String;)V

    .line 584
    if-nez p3, :cond_1c

    .line 585
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAuthToken(Ljava/lang/String;)V

    .line 587
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setUsingLoginService(Z)V

    .line 588
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/Notifier;->cancelAuthenticationNotification()V

    .line 589
    return-void
.end method

.method public useInboxNotifications()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 848
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->getDevicePrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, devicePrimaryAccount:Ljava/lang/String;
    if-nez v0, :cond_20

    .line 851
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_1f

    .line 852
    const-string v3, "Device primary account not yet loaded, use polling"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 896
    .end local v0           #devicePrimaryAccount:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v2

    .line 857
    .restart local v0       #devicePrimaryAccount:Ljava/lang/String;
    :cond_20
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 858
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_1f

    .line 859
    const-string v3, "Not device primary account available, use polling"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_1f

    .line 864
    .end local v0           #devicePrimaryAccount:Ljava/lang/String;
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getAccountHelper()Lcom/google/android/apps/googlevoice/system/AccountHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/system/AccountHelper;->hasGoogleAccount()Z

    move-result v4

    if-nez v4, :cond_46

    .line 865
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_1f

    .line 866
    const-string v3, "Device primary account not found, use polling"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_1f

    .line 870
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5a

    .line 871
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_1f

    .line 872
    const-string v3, "Account not found, use polling"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_1f

    .line 878
    :cond_5a
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 879
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v4, "com.google.android.apps.gtalkservice"

    invoke-static {v1, v4}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->isPackageAvailable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 880
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_71

    .line 881
    const-string v2, "VoiceApplication.useInboxNotifications(): GTalkService package is available, returning true"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    :cond_71
    move v2, v3

    .line 884
    goto :goto_1f

    .line 885
    :cond_73
    const-string v4, "com.google.android.gsf"

    invoke-static {v1, v4}, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->isPackageAvailable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 886
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_84

    .line 887
    const-string v2, "VoiceApplication.useInboxNotifications(): GoogleServicesFramework package is available, returning true"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    :cond_84
    move v2, v3

    .line 890
    goto :goto_1f

    .line 892
    :cond_86
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_1f

    .line 893
    const-string v3, "VoiceApplication.useInboxNotifications(): no suitable delivery package found, returning false"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_1f
.end method
