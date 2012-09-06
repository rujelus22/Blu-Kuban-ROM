.class public interface abstract Lcom/google/android/apps/googlevoice/DependencyResolver;
.super Ljava/lang/Object;
.source "DependencyResolver.java"


# virtual methods
.method public abstract authenticate(Landroid/app/Activity;I)V
.end method

.method public abstract createActivityProxy(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;
.end method

.method public abstract createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
.end method

.method public abstract createMessageSender()Lcom/google/android/apps/googlevoice/activity/MessageSender;
.end method

.method public abstract createMessageSender(Landroid/os/Handler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
.end method

.method public abstract createMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageReceiver;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
.end method

.method public abstract createRequestIdGenerator()Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
.end method

.method public abstract createUserPresenceHelper(Ljava/lang/Runnable;)Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;
.end method

.method public abstract dialNumber(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract doneMakingCall()V
.end method

.method public abstract getAccountHelper()Lcom/google/android/apps/googlevoice/system/AccountHelper;
.end method

.method public abstract getActionBarHelper()Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
.end method

.method public abstract getActionModel()Lcom/google/android/apps/googlevoice/model/ActionModel;
.end method

.method public abstract getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;
.end method

.method public abstract getAddAccountManager()Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
.end method

.method public abstract getAndroidId()Ljava/lang/String;
.end method

.method public abstract getApplicationInformation()Lcom/google/android/apps/googlevoice/system/ApplicationInformation;
.end method

.method public abstract getAuthenticationHelper()Lcom/google/android/apps/googlevoice/AuthenticationHelper;
.end method

.method public abstract getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;
.end method

.method public abstract getCallLogOperations()Lcom/google/android/apps/googlevoice/CallLogOperations;
.end method

.method public abstract getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
.end method

.method public abstract getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
.end method

.method public abstract getCheckinHelper()Lcom/google/android/apps/googlevoice/CheckinHelper;
.end method

.method public abstract getClickToCallHelper()Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;
.end method

.method public abstract getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;
.end method

.method public abstract getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;
.end method

.method public abstract getConduits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/CallConduit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;
.end method

.method public abstract getContactApiHelper()Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
.end method

.method public abstract getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;
.end method

.method public abstract getDialogManager(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/DialogManager;
.end method

.method public abstract getEventLogger()Lcom/google/android/apps/googlevoice/net/EventLogger;
.end method

.method public abstract getFileFactory()Lcom/google/android/apps/googlevoice/FileFactory;
.end method

.method public abstract getGvVvmSyncer()Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
.end method

.method public abstract getIntentFactory()Lcom/google/android/apps/googlevoice/activity/IntentFactory;
.end method

.method public abstract getLocalModelView()Lcom/google/android/apps/googlevoice/model/LocalModelView;
.end method

.method public abstract getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;
.end method

.method public abstract getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/common/log/GLog;"
        }
    .end annotation
.end method

.method public abstract getLogger(Ljava/lang/String;)Lcom/google/android/apps/common/log/GLog;
.end method

.method public abstract getLoginService()Lcom/googlex/common/async/LoginService;
.end method

.method public abstract getMediaPlayer()Lcom/google/android/apps/googlevoice/MediaPlayer;
.end method

.method public abstract getMemoryUtils()Lcom/google/android/apps/googlevoice/util/MemoryUtils;
.end method

.method public abstract getModule()Lcom/google/android/apps/googlevoice/modules/Module;
.end method

.method public abstract getNotifier()Lcom/google/android/apps/googlevoice/Notifier;
.end method

.method public abstract getPhotoHandler()Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;
.end method

.method public abstract getPlaybackClock()Lcom/google/android/apps/googlevoice/PlaybackClock;
.end method

.method public abstract getPlaybackSeekingTracker(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;
.end method

.method public abstract getPlaybackSpeakerController()Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
.end method

.method public abstract getPreferenceStore()Lcom/google/android/apps/googlevoice/PreferenceStore;
.end method

.method public abstract getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;
.end method

.method public abstract getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;
.end method

.method public abstract getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;
.end method

.method public abstract getSetupFlowManager()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;
.end method

.method public abstract getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;
.end method

.method public abstract getShortcutManager()Lcom/google/android/apps/googlevoice/system/ShortcutManager;
.end method

.method public abstract getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
.end method

.method public abstract getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
.end method

.method public abstract getSmsPersistenceManager()Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;
.end method

.method public abstract getSmsSender()Lcom/google/android/apps/googlevoice/system/SmsSender;
.end method

.method public abstract getStartupLogger()Lcom/google/android/apps/googlevoice/StartupLogger;
.end method

.method public abstract getSyncState()Lcom/google/android/apps/googlevoice/vvm/database/SyncState;
.end method

.method public abstract getTaskRunner()Lcom/googlex/common/task/TaskRunner;
.end method

.method public abstract getTaskScheduler()Lcom/google/android/apps/googlevoice/TaskScheduler;
.end method

.method public abstract getThreadFactory()Ljava/util/concurrent/ThreadFactory;
.end method

.method public abstract getTonePlayer()Lcom/google/android/apps/googlevoice/system/TonePlayer;
.end method

.method public abstract getTranscriptPlayer()Lcom/google/android/apps/googlevoice/TranscriptPlayer;
.end method

.method public abstract getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;
.end method

.method public abstract getUpdateStateManager()Lcom/google/android/apps/googlevoice/UpdateStateManager;
.end method

.method public abstract getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;
.end method

.method public abstract getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
.end method

.method public abstract getViewUtils()Lcom/google/android/apps/googlevoice/util/ViewUtils;
.end method

.method public abstract getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;
.end method

.method public abstract getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;
.end method

.method public abstract getVoiceRecordingRequest()Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;
.end method

.method public abstract getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;
.end method

.method public abstract getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;
.end method

.method public abstract getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
.end method

.method public abstract getWidgetRenderer()Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
.end method

.method public abstract getWidgetState()Lcom/google/android/apps/googlevoice/widget/WidgetState;
.end method

.method public abstract invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
.end method

.method public abstract loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
.end method

.method public abstract saveVoiceModel()V
.end method

.method public abstract setShouldProvisionAccount(Z)V
.end method

.method public abstract shouldProvisionAccount()Z
.end method

.method public abstract useCredentials(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract useInboxNotifications()Z
.end method
