.class public Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "WidgetServiceHandler.java"


# static fields
.field static final COMPLETED_NOTIFICATION_LENGTH:J = 0x7d0L

.field public static final ID_CLEAR_NOTIFICATION:I = 0x3f1

.field public static final ID_GO_TO_NEXT:I = 0x3f0

.field public static final ID_GO_TO_PREV:I = 0x3ef

.field public static final ID_LOAD_MESSAGE:I = 0x3f2

.field public static final ID_QUIT_UPDATE_THREAD:I = 0x3f3

.field public static final ID_TOGGLE_DO_NOT_DISTURB:I = 0x3ea

.field public static final ID_TOGGLE_DO_NOT_DISTURB_COMPLETED:I = 0x3ec

.field public static final ID_TOGGLE_DO_NOT_DISTURB_FAILED:I = 0x3ee

.field public static final ID_TOGGLE_DO_NOT_DISTURB_OK:I = 0x3ed

.field public static final ID_TOGGLE_DO_NOT_DISTURB_START:I = 0x3eb

.field public static final ID_UPDATE:I = 0x3e9

.field private static final LOAD_MESSAGE_LIMIT:I = 0xa


# instance fields
.field private backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

.field private final backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

.field private final context:Landroid/content/Context;

.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private final fetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;

.field private final idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private notificationId:I

.field private final serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private updating:Z

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

.field private final widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

.field private final widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/common/log/GLog;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;Landroid/content/Context;Lcom/google/android/apps/googlevoice/ConversationFetcher;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;)V
    .registers 14
    .parameter "dependencyResolver"
    .parameter "voiceModel"
    .parameter "log"
    .parameter "voiceService"
    .parameter "voicePreferences"
    .parameter "serverSettings"
    .parameter "widgetState"
    .parameter "widgetRenderer"
    .parameter "context"
    .parameter "fetcher"
    .parameter "backgroundThreadFactory"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 63
    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    .line 66
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->updating:Z

    .line 73
    iput-object p9, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->context:Landroid/content/Context;

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 75
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 76
    iput-object p8, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    .line 77
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    .line 78
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 79
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 80
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    .line 81
    iput-object p10, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->fetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;

    .line 82
    iput-object p11, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    .line 84
    new-instance v0, Lcom/google/android/apps/googlevoice/IdNumberHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/google/android/apps/googlevoice/IdNumberHelper;-><init>(Lcom/google/android/apps/common/log/GLog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/widget/WidgetState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->updating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    return-object v0
.end method

.method private doNotDisturbChanged(Z)V
    .registers 6
    .parameter "toValue"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setUpdatingDoNotDisturb(Z)V

    .line 208
    iget v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    .line 209
    .local v0, thisNotificationId:I
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    if-eqz p1, :cond_24

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_do_not_disturb_enabled_notification:I

    :goto_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setNotificationMessage(Ljava/lang/Integer;)V

    .line 214
    new-instance v1, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void

    .line 209
    :cond_24
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_do_not_disturb_disabled_notification:I

    goto :goto_12
.end method

.method private doNotDisturbChanging(Z)V
    .registers 4
    .parameter "toValue"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setUpdatingDoNotDisturb(Z)V

    .line 181
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    if-eqz p1, :cond_1a

    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_do_not_disturb_enabling_notification:I

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setNotificationMessage(Ljava/lang/Integer;)V

    .line 185
    return-void

    .line 182
    :cond_1a
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_do_not_disturb_disabling_notification:I

    goto :goto_12
.end method

.method private doNotDisturbFailed(Z)V
    .registers 6
    .parameter "toValue"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setUpdatingDoNotDisturb(Z)V

    .line 189
    iget v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I

    .line 190
    .local v0, thisNotificationId:I
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    if-eqz p1, :cond_24

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_do_not_disturb_enabling_failed_notification:I

    :goto_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setNotificationMessage(Ljava/lang/Integer;)V

    .line 194
    new-instance v1, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$1;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void

    .line 190
    :cond_24
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_do_not_disturb_disabling_failed_notification:I

    goto :goto_12
.end method

.method private declared-synchronized getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    if-nez v0, :cond_d

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;->createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    .line 175
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 172
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update()V
    .registers 7

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getInboxTimestamp()J

    move-result-wide v0

    .line 231
    .local v0, inboxTimestamp:J
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getLastInboxTimestamp()J

    move-result-wide v2

    .line 232
    .local v2, lastInboxTimestamp:J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1b

    .line 234
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->goToFirstMessage()V

    .line 235
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->updateLastInboxTimestamp()V

    .line 238
    :cond_1b
    iget-boolean v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->updating:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_31

    if-eqz v4, :cond_21

    .line 252
    :goto_1f
    monitor-exit p0

    return-void

    .line 241
    :cond_21
    const/4 v4, 0x1

    :try_start_22
    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->updating:Z

    .line 243
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;

    invoke-direct {v5, p0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;-><init>(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)V

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_31

    goto :goto_1f

    .line 230
    .end local v0           #inboxTimestamp:J
    .end local v2           #lastInboxTimestamp:J
    :catchall_31
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "message"

    .prologue
    const/16 v8, 0x3ee

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v7, 0x3e9

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->getNameForValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_16a

    .line 168
    :goto_2b
    :pswitch_2b
    return-void

    .line 92
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Updating the widget"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->update()V

    goto :goto_2b

    .line 97
    :pswitch_37
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/16 v3, 0x3eb

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto :goto_2b

    .line 103
    :pswitch_47
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->canUseDoNotDisturb()Z

    move-result v1

    if-nez v1, :cond_57

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "DND not supported for this account"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_2b

    .line 108
    :cond_57
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->isUpdatingDoNotDisturb()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "DND update already in progress"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_2b

    .line 113
    :cond_67
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toggling DND: next value should be "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    if-nez v1, :cond_b5

    move v1, v2

    :goto_7d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateSettingsRpc()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v0

    .line 115
    .local v0, updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    if-nez v1, :cond_b7

    move v1, v2

    :goto_97
    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->setDoNotDisturb(Z)V

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const/16 v4, 0x3ec

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->update(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;)V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    if-nez v1, :cond_b9

    :goto_ad
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->doNotDisturbChanging(Z)V

    .line 118
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .end local v0           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :cond_b5
    move v1, v3

    .line 113
    goto :goto_7d

    .restart local v0       #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :cond_b7
    move v1, v3

    .line 115
    goto :goto_97

    :cond_b9
    move v2, v3

    .line 117
    goto :goto_ad

    .line 123
    .end local v0           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :pswitch_bb
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggling DND completed: current value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 125
    .restart local v0       #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 126
    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .line 128
    :cond_e8
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .line 134
    .end local v0           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :pswitch_ef
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Toggling DND ok"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->doNotDisturbChanged(Z)V

    .line 136
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .line 140
    :pswitch_104
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Toggling DND failed"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->doNotDisturbFailed(Z)V

    .line 142
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .line 146
    :pswitch_119
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Going to previous item in the inbox"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->goToPrevMessage()V

    .line 148
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .line 152
    :pswitch_12a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Going to previous item in the inbox"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->goToNextMessage()V

    .line 154
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2b

    .line 158
    :pswitch_13b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->fetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/ConversationFetcher;->fetch(II)V

    goto/16 :goto_2b

    .line 165
    :pswitch_160
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/BackgroundThread;->quitImmediately(Ljava/lang/Runnable;)V

    goto/16 :goto_2b

    .line 90
    :pswitch_data_16a
    .packed-switch 0x3e9
        :pswitch_2c
        :pswitch_37
        :pswitch_47
        :pswitch_bb
        :pswitch_ef
        :pswitch_104
        :pswitch_119
        :pswitch_12a
        :pswitch_2b
        :pswitch_13b
        :pswitch_160
    .end packed-switch
.end method
